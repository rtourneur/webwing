package com.raf.xwing.web.config;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

/**
 * The Security web app initializer.
 * 
 * @author RAF
 */
public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {

  /**
   * Constructor.
   */
  public SecurityWebApplicationInitializer() {
    super(SecurityConfig.class);
  }

}
