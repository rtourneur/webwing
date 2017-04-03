package com.raf.xwing.web.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.raf.xwing.jpa.config.PersistenceJpaConfig;
import com.raf.xwing.util.config.UtilConfig;

/**
 * Spring security configurator.
 * 
 * @author RAF
 */
@Configuration
@EnableWebSecurity
@Import(value = { UtilConfig.class, PersistenceJpaConfig.class })
public class SecurityConfig extends WebSecurityConfigurerAdapter {
  
  /** The datasource. */
  @Autowired
  private transient DataSource dataSource;
  
  /**
   * Constructor.
   */
  public SecurityConfig() {
    super();
  }
  
  /**
   * Configure the global authentification.
   * 
   * @param auth
   *          the authentication manager builder
   * @throws Exception
   *           if an error occurs
   */
  @Autowired
  public void configureGlobal(final AuthenticationManagerBuilder auth) throws Exception {
    // auth.inMemoryAuthentication().withUser("user").password("password").roles("USER").and().withUser("admin")
    // .password("passw0rd").roles("USER", "ADMIN");
    auth.jdbcAuthentication().dataSource(this.dataSource).passwordEncoder(new BCryptPasswordEncoder());
    
  }
  
  /**
   * Configure the {@link HttpSecurity}.
   * 
   * @param http
   *          the {@link HttpSecurity} to modify
   * @throws Exception
   *           if an error occurs
   * @see WebSecurityConfigurerAdapter#configure(HttpSecurity)
   */
  @Override
  protected void configure(final HttpSecurity http) throws Exception {
    http.authorizeRequests().antMatchers("/resources/**", "/signup", "/about", "/**/403*").permitAll().antMatchers("/**/admin/**")
        .hasRole("ADMIN")
        .and().formLogin().loginPage("/login").failureUrl("/login?error").usernameParameter("username").passwordParameter("password")
        .and().exceptionHandling().accessDeniedPage("/403").and()
        .logout().logoutSuccessUrl("/").and().csrf();
  }
  
}
