package com.raf.xwing.jpa.config;

import java.io.File;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.raf.xwing.jpa.dbutil.DatabaseUtil;
import com.raf.xwing.util.XwingException;
import com.raf.xwing.util.config.UtilConfig;

/**
 * Class for persistence configuration.
 * 
 * @author raphael.tourneur
 */
@Configuration
@Import(value = { UtilConfig.class })
@ComponentScan("com.raf.xwing.jpa")
@PropertySource({ "classpath:persistence.properties" })
@EnableTransactionManagement
public class PersistenceJpaConfig {

  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(PersistenceJpaConfig.class);

  /** Spring environment. */
  @Autowired
  private Environment env;

  /**
   * Constructor.
   */
  public PersistenceJpaConfig() {
    super();
  }

  /**
   * Initialize the entity manager factory.
   * 
   * @param dataSource
   *          the datasource
   * @return entity manager factory
   * @throws NamingException
   *           when datasource is not found
   */
  @Bean
  public LocalContainerEntityManagerFactoryBean entityManagerFactory(final DataSource dataSource)
      throws NamingException {
    final LocalContainerEntityManagerFactoryBean emf = new LocalContainerEntityManagerFactoryBean();
    emf.setDataSource(dataSource);
    emf.setPackagesToScan(new String[] { "com.raf.xwing.jpa.domain" });

    final JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
    emf.setJpaVendorAdapter(vendorAdapter);
    emf.setJpaProperties(additionalProperties());
    emf.setPersistenceUnitName("xwing");

    return emf;
  }

  /**
   * Set up the derby datasource : derby or from JNDI.
   * 
   * @return the datasource
   * @throws NamingException
   *           when datasource is not found
   */
  @Bean
  public DataSource dataSource() throws XwingException {
    final String type = this.env.getProperty("datasource.type");
    final String name = this.env.getProperty("datasource.name");
    if (type == null) {
      throw new XwingException("The config parameter datasource.type is null", 1001);
    }
    if (name == null) {
      throw new XwingException("The config parameter datasource.name is null", 1001);
    }
    if (LOGGER.isDebugEnabled()) {
      LOGGER.debug("Datasource Type : " + type + ", name : " + name);
    }
    // Init from derby data base
    if ("Derby".equals(type)) {
      final String filepath = this.env.getProperty("datasource.filepath");
      final File path = new File(filepath);
      return DatabaseUtil.initDerbyDatasource(name, path.getAbsolutePath(), name, name);
    }
    try {
      final Context ctx = new InitialContext();
      return (DataSource) ctx.lookup("java:/comp/env/jdbc/" + name);
    } catch (NamingException e) {
      LOGGER.error("Datasource initialization error : " + e.getMessage(), e);
      throw new XwingException("Datasource initialization error", 1002, e);
    }
  }

  /**
   * Add the transaction manager.
   * 
   * @param emf
   *          the entity manager factory
   * @return the transaction manager
   */
  @Bean
  public PlatformTransactionManager transactionManager(final EntityManagerFactory emf) {
    final JpaTransactionManager trxManager = new JpaTransactionManager();
    trxManager.setEntityManagerFactory(emf);

    return trxManager;
  }

  /**
   * Returns the Persistence Exception Translation Processor.
   * 
   * @return the Persistence Exception Translation Processor
   */
  @Bean
  public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
    return new PersistenceExceptionTranslationPostProcessor();
  }

  /**
   * Returns the additional properties for hibernate.
   * 
   * @return the additional properties
   */
  private Properties additionalProperties() {
    final Properties properties = new Properties();
    properties.setProperty("hibernate.dialect", this.env.getProperty("hibernate.dialect"));
    properties.setProperty("hibernate.show_sql", this.env.getProperty("hibernate.show_sql"));
    properties.setProperty("hibernate.format_sql", this.env.getProperty("hibernate.format_sql"));
    return properties;
  }
}
