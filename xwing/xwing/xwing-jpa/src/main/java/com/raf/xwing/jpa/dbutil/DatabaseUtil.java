package com.raf.xwing.jpa.dbutil;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

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
   * @param name
   *          the dabase name in the context
   * @param datasourceName
   *          the datasource Name
   * @param user
   *          the username for connecting to the datasource
   * @param password
   *          the password for connecting to the datasource
   * @return <code>true</code> if initialized, <code>false</code> otherwise
   */
  public static DataSource initDerbyDatasource(final String name, final String datasourceName, final String user,
      final String password) {
    final EmbeddedConnectionPoolDataSource40 datasource = new EmbeddedConnectionPoolDataSource40();
    datasource.setDatabaseName(datasourceName);
    datasource.setUser("user");
    datasource.setPassword("password");
    LOGGER.info("Datasource created");
    validateDerbyConnection(datasource);
    return datasource;
  }

  /**
   * Validate the datasource.
   * 
   * @param datasource
   *          the datasource
   */
  public static void validateDerbyConnection(final DataSource datasource) {
    try (Connection connection = datasource.getConnection();
        Statement statement = connection.createStatement()) {
      statement.execute("select * from SYS.SYSROLES");
    } catch (SQLException e) {
      LOGGER.error("SQL Exception in request " + e.getMessage(), e);
    }
  }

}
