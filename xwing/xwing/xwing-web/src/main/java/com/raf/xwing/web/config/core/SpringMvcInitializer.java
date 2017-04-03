package com.raf.xwing.web.config.core;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.raf.xwing.web.config.DispatcherConfig;

/**
 * The web-app initializer.
 * 
 * @author RAF
 */
public class SpringMvcInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
  
  /**
   * Constructor.
   */
  public SpringMvcInitializer() {
    super();
  }
  
  /**
   * Specify the <class>DispatcherConfig</class> class as confoguration.
   * 
   * @return the <class>DispatcherConfig</class> class as configuration
   * @see org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer#getRootConfigClasses()
   */
  @Override
  protected Class<?>[] getRootConfigClasses() {
    return new Class[] { DispatcherConfig.class };
  }
  
  /* (non-Javadoc)
   * @see org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer#getServletConfigClasses()
   */
  @Override
  protected Class<?>[] getServletConfigClasses() {
    return null;
  }
  
  /* (non-Javadoc)
   * @see org.springframework.web.servlet.support.AbstractDispatcherServletInitializer#getServletMappings()
   */
  @Override
  protected String[] getServletMappings() {
    return new String[] { "/"};
  }
  
}
