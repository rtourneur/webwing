package com.raf.xwing.web.controller.admin;

import java.util.Set;
import java.util.TreeSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.raf.xwing.util.Loggable;

/**
 * Admin home controller.
 * 
 * @author RAF
 */
@Controller
public class HomeCtrl {

  /** The admin home page. */
  private static final String HOME_PAGE = "admin/home";

  /**
   * Constructor.
   */
  public HomeCtrl() {
    super();
  }

  /**
   * Display the admin home page.
   * 
   * @param model
   *          the model
   * @return the home page
   */
  @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
  @Loggable
  public String home(final Model model) {
    final Set<String> tables = new TreeSet<>();
    tables.add("expansion");
    tables.add("actiontype");
    tables.add("faction");
    tables.add("maneuvertype");
    tables.add("restriction");
    tables.add("restrictiontype");
    tables.add("shipsize");
    tables.add("shiptype");
    tables.add("upgradetype");
    model.addAttribute("list", tables);
    return HOME_PAGE;
  }

}
