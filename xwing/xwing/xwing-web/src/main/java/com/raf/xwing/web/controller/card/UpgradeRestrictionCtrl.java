package com.raf.xwing.web.controller.card;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.RestrictionDao;
import com.raf.xwing.jpa.dao.RestrictionTypeDao;
import com.raf.xwing.jpa.dao.UpgradeDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.model.Restriction;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.form.card.UpgradeRestrictionForm;

/**
 * Controller for Upgrade entity.
 * 
 * @author RAF
 */
@Controller
public class UpgradeRestrictionCtrl {

  /** The edit page. */
  private static final String EDIT_PAGE = "card/restriction";

  /** The list page. */
  private static final String LIST_PAGE = "card/restrictions";

  /** The back page. */
  private static final String BACK_PAGE = "redirect:/xwing/card/upgrade/list";

  /** The entity dao. */
  @Resource
  private transient UpgradeDao entityDao;

  /** The restriction dao. */
  @Resource
  private transient RestrictionDao restrictionDao;

  /** The restriction type dao. */
  @Resource
  private transient RestrictionTypeDao restrictionTypeDao;

  /**
   * constructor.
   */
  public UpgradeRestrictionCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   */
  protected final UpgradeDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Display the list page.
   * 
   * @param ident
   *          the identifier
   * @param model
   *          the model
   * @return the list page
   */
  @Loggable
  @RequestMapping(value = "card/upgrade/restriction/list", method = RequestMethod.POST)
  public String list(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    model.addAttribute("count", Integer.valueOf(entity.getRestrictions().size()));
    model.addAttribute("list", entity.getRestrictions());
    return LIST_PAGE;
  }

  /**
   * Display the edit page for the upgrade restriction.
   * 
   * @param ident
   *          the identifier of the upgrade
   * @param restrictionId
   *          the identifier of the restriction
   * @param model
   *          the model
   * @return the edit page
   */
  @Loggable
  @RequestMapping(value = "card/upgrade/restriction/edit", method = RequestMethod.POST)
  public ModelAndView edit(@RequestParam(value = "ident", required = true) final Integer ident,
      @RequestParam(value = "id", required = true) final Integer restrictionId, final Model model) {
    final UpgradeRestrictionForm form = new UpgradeRestrictionForm();
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("edit");
    form.setIdent(ident);
    form.setRestrictionOld(restrictionId);
    form.setRestriction(restrictionId);
    model.addAttribute("restrictionTypes", this.restrictionTypeDao.listAll());
    model.addAttribute("list", this.restrictionDao.listAll());
    return new ModelAndView(EDIT_PAGE, "command", form);
  }

  /**
   * Display the edit page for the entity.
   * 
   * @param ident
   *          the identifier of the upgrade
   * @param restrictionId
   *          the identifier of the restriction
   * @param model
   *          the model
   * @return the edit page
   */
  @Loggable
  @Transactional
  @RequestMapping(value = "card/upgrade/restriction/delete", method = RequestMethod.POST)
  public String delete(@RequestParam(value = "ident", required = true) final Integer ident,
      @RequestParam(value = "id", required = true) final Integer restrictionId, final Model model) {
    final Upgrade entity = getEntityDao().getById(ident);
    final Restriction restriction = this.restrictionDao.getById(restrictionId);
    entity.getRestrictions().remove(restriction);
    getEntityDao().merge(entity);
    return list(ident, model);
  }

  /**
   * Display the edit page for the entity.
   * 
   * @param model
   *          the model
   * @return the edit page
   */
  @Loggable
  @RequestMapping(value = "card/upgrade/restriction/add", method = RequestMethod.POST)
  public ModelAndView add(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final UpgradeRestrictionForm form = new UpgradeRestrictionForm();
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("add");
    form.setIdent(ident);
    form.setRestriction(Integer.valueOf(0));
    model.addAttribute("restrictionTypes", this.restrictionTypeDao.listAll());
    model.addAttribute("list", this.restrictionDao.listAll());
    return new ModelAndView(EDIT_PAGE, "command", form);
  }

  /**
   * Display the edit page for the entity.
   * 
   * @param model
   *          the model
   * @param form
   *          the form
   * @return the edit page
   */
  @Loggable
  @Transactional
  @RequestMapping(value = "card/upgrade/restriction/save", method = RequestMethod.POST)
  public String save(final Model model,
      @ModelAttribute("upgradeRestrictionForm") final UpgradeRestrictionForm form) {
    final Upgrade entity = getEntityDao().getById(form.getIdent());
    if ("edit".equals(form.getMode())) {
      final Restriction restrictionOld = this.restrictionDao.getById(form.getRestrictionOld());
      entity.getRestrictions().remove(restrictionOld);
    }
    final Restriction restriction = this.restrictionDao.getById(form.getRestriction());
    entity.getRestrictions().add(restriction);
    getEntityDao().merge(entity);
    return list(form.getIdent(), model);
  }

  /**
   * Back to the admin home.
   * 
   * @param status
   *          the session status
   * @return back to the admin home
   */
  @RequestMapping(value = "card/upgrade/restriction/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    return BACK_PAGE;
  }

}
