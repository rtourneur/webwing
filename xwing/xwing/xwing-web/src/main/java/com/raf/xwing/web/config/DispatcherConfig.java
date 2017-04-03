package com.raf.xwing.web.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.raf.xwing.jpa.config.PersistenceJpaConfig;
import com.raf.xwing.util.config.UtilConfig;

/**
 * @author etp6170
 */
@Configuration
@EnableWebMvc
@Import(value = { UtilConfig.class, PersistenceJpaConfig.class , SecurityConfig.class})
@ComponentScan("com.raf.xwing.web.controller")
public class DispatcherConfig extends WebMvcConfigurerAdapter {
  
  /**
   * Constructor.
   */
  public DispatcherConfig() {
    super();
  }
  
  /**
   * Configure the view resolver.
   * 
   * @return the view resolver
   */
  @Bean
  public ViewResolver configureViewResolver() {
    final InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
    viewResolver.setViewClass(JstlView.class);
    viewResolver.setPrefix("/WEB-INF/pages/");
    viewResolver.setSuffix(".jsp");
    return viewResolver;
  }
  
  /**
   * Add the resources location.
   * 
   * @see WebMvcConfigurerAdapter#addResourceHandlers(ResourceHandlerRegistry)
   */
  @Override
  public void addResourceHandlers(final ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
  }
  
  @Override
  public void configureDefaultServletHandling(final DefaultServletHandlerConfigurer configurer) {
    configurer.enable();
  }
  
  @Bean
  public MessageSource messageSource() {
    final ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
    messageSource.setBasename("classpath:messages");
    messageSource.setDefaultEncoding("UTF-8");
    return messageSource;
  }

}
