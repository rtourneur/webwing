package com.raf.xwing.test;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.derby.jdbc.EmbeddedConnectionPoolDataSource40;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Utility class for database tests.
 * 
 * @author RAF
 */
public final class DatabaseUtil {
  
  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(DatabaseUtil.class);
  
  /**
   * Private constructor.
   */
  private DatabaseUtil() {
    super();
  }
  
  /**
   * Init the Derby Datasource in JNDI.
   * 
   * @param context
   *          the naming context
   * @param name
   *          the dabase name in the context
   * @param datasourceName
   *          the datasource Name
   * @param user
   * @param password
   * @return <code>true</code> if initialized, <code>false</code> otherwise
   */
  public static boolean initDerbyDatasource(final InitialContext context, final String name,
      final String datasourceName, final String user, final String password) {
    boolean init = true;
    try {
      context.createSubcontext("java:");
      context.createSubcontext("java:/comp");
      context.createSubcontext("java:/comp/env");
      context.createSubcontext("java:/comp/env/jdbc");
      // Construct DataSource
      final EmbeddedConnectionPoolDataSource40 datasource = new EmbeddedConnectionPoolDataSource40();
      datasource.setDatabaseName(datasourceName);
      datasource.setUser("user");
      datasource.setPassword("password");
      LOGGER.info("Datasource created");
      validateDerbyConnection(datasource);
      context.bind("java:/comp/env/jdbc/" + name, datasource);
    } catch (NamingException e) {
      LOGGER.error("Naming Exception", e);
      init = false;
    }
    return init;
  }
  
  /**
   * Validate the datasource.
   * 
   * @param datasource
   *          the datasource
   */
  public static void validateDerbyConnection(final DataSource datasource) {
    Connection connection = null;
    Statement statement = null;
    try {
      connection = datasource.getConnection();
      statement = connection.createStatement();
      statement.execute("select * from SYS.SYSROLES");
    } catch (SQLException e) {
      LOGGER.error("SQL Exception in request " + e.getMessage(), e);
    } finally {
      if (statement != null) {
        try {
          statement.close();
        } catch (SQLException e) {
          LOGGER.warn("SQL Exception when closing statement " + e.getMessage(), e);
        }
      }
      if (connection != null) {
        try {
          connection.close();
        } catch (SQLException e) {
          LOGGER.warn("SQL Exception when closing connection" + e.getMessage(), e);
        }
      }
    }
  }
  
}
