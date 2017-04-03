package com.raf.xwing.web.controller.home;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.util.Loggable;

/**
 * Admin home controller.
 * 
 * @author RAF
 */
@Controller
public class MainCtrl {
  
  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(MainCtrl.class);
  
  /** The main page. */
  private static final String HOME_PAGE = "home";
  
  /** The login page. */
  private static final String LOGIN_PAGE = "login";
  
  /**
   * Constructor.
   */
  public MainCtrl() {
    super();
  }
  
  /**
   * Display the main page.
   * 
   * @return the main page
   */
  @RequestMapping(value = { "/", "/main" }, method = RequestMethod.GET)
  @Loggable
  public String home() {
    return HOME_PAGE;
  }
  
  @RequestMapping(value = "/login", method = RequestMethod.GET)
  @Loggable
  public ModelAndView login(@RequestParam(value = "error", required = false) String error) {
    final ModelAndView model = new ModelAndView();
    if (error != null) {
      model.addObject("error", "Invalid username and password!");
    }
    model.setViewName(LOGIN_PAGE);
    return model;
  }
  
  /**
   * Display the 403 access denied page.
   * 
   * @return the 403 access denied page
   */
  @RequestMapping(value = "/403", method = RequestMethod.GET)
  public ModelAndView accessDenied() {
    
    final ModelAndView model = new ModelAndView();
    
    //check if user is login
    final Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (!(auth instanceof AnonymousAuthenticationToken)) {
      UserDetails userDetail = (UserDetails) auth.getPrincipal();
      if (LOGGER.isInfoEnabled()) {
        LOGGER.info("User " + userDetail);
      }
      model.addObject("username", userDetail.getUsername());
    }
    model.setViewName("403");
    return model;
    
  }
}
