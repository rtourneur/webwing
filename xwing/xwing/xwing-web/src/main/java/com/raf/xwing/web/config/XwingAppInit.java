package com.raf.xwing.web.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ConfigurableWebApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * Class initializer.
 * 
 * @author RAF
 *
 */
public final class XwingAppInit implements WebApplicationInitializer {

  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(XwingAppInit.class);

  /**
   * Constructeur.
   */
  public XwingAppInit() {
    super();
  }

  /**
   * Called initializer method.
   * 
   * @param servletContext
   *          the servlet context
   * @see WebApplicationInitializer#onStartup(ServletContext)
   */
  @Override
  public void onStartup(final ServletContext servletContext) throws ServletException {
    final ConfigurableWebApplicationContext springContext = new XmlWebApplicationContext();
    springContext.setConfigLocation("classpath*:dispatcher-context.xml");
    final ServletRegistration.Dynamic registration = servletContext.addServlet("dispatcher", new DispatcherServlet(
        springContext));
    registration.setLoadOnStartup(1);
    if (LOGGER.isDebugEnabled()) {
      final String name = servletContext.getContextPath();
      LOGGER.debug("Servlet context name " + name);
    }
    registration.addMapping("/xwing/*");
    if (LOGGER.isInfoEnabled()) {
      LOGGER.info("Ajout de la servlet spring dispatcher pour le mapping /admin");
    }
  }

}
