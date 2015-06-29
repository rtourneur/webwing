package com.raf.xwing.web.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.raf.xwing.util.Loggable;

/**
 * Admin home controller.
 * 
 * @author RAF
 */
@Controller
public class MainCtrl {

  /** The main page. */
  private static final String HOME_PAGE = "main";

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
  @RequestMapping(value = "/main", method = RequestMethod.GET)
  @Loggable
  public String home() {
    return HOME_PAGE;
  }

}
