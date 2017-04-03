package com.raf.xwing.web.controller.card;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.UpgradeDao;
import com.raf.xwing.jpa.dao.UpgradeTypeDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.model.UpgradeType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractCtrl;
import com.raf.xwing.web.form.card.UpgradeForm;

/**
 * Controller for Upgrade entity.
 * 
 * @author RAF
 */
@Controller
public class UpgradeCtrl extends AbstractCtrl<UpgradeDao, UpgradeForm, Upgrade, Integer> {

  /** The edit page. */
  private static final String EDIT_PAGE = "card/upgrade";

  /** The back page. */
  private static final String BACK_PAGE = "redirect:/card/upgrade/list";

  /** The entity dao. */
  @Resource
  private transient UpgradeDao entityDao;

  /** The upgrade type dao. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  /**
   * constructor.
   */
  public UpgradeCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   */
  @Override
  protected final UpgradeDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Display the edit page for the entity.
   * 
   * @param ident
   *          the identifier
   * @param model
   *          the model
   * @return the edit page
   */
  @Override
  @Loggable
  @RequestMapping(value = "card/upgrade/edit", method = RequestMethod.POST)
  public ModelAndView edit(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final UpgradeForm form = new UpgradeForm();
    form.setMode("edit");
    final Upgrade entity = getEntityDao().getById(ident);
    form.setEntity(entity);
    model.addAttribute("upgradeTypes", this.upgradeTypeDao.listAll());
    return new ModelAndView(EDIT_PAGE, "command", form);
  }

  /**
   * Deletes the entity.
   * 
   * @param ident
   *          the identifier
   * @param model
   *          the model
   * @return the edit page
   */
  @Override
  @Loggable
  @Transactional
  @RequestMapping(value = "card/upgrade/delete", method = RequestMethod.POST)
  public ModelAndView delete(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    deleteImpl(ident);
    return new ModelAndView(BACK_PAGE);
  }

  /**
   * Display the add page for the entity.
   * 
   * @param model
   *          the model
   * @return the edit page
   */
  @Override
  @Loggable
  @RequestMapping(value = "card/upgrade/add", method = RequestMethod.GET)
  public ModelAndView add(final Model model) {
    final UpgradeForm form = new UpgradeForm();
    initFormAdd(Integer.valueOf(0), form);
    model.addAttribute("upgradeTypes", this.upgradeTypeDao.listAll());
    model.addAttribute("mode", "add");
    return new ModelAndView(EDIT_PAGE, "command", form);
  }

  /**
   * Save the entity.
   * 
   * @param model
   *          the model
   * @param form
   *          the form
   * @return the edit page
   */
  @Override
  @Loggable
  @Transactional
  @RequestMapping(value = "card/upgrade/save", method = RequestMethod.POST)
  public ModelAndView save(final Model model, @ModelAttribute("upgradeForm") final UpgradeForm form) {
    Upgrade entity;
    final Integer upgradeTypeId = form.getUpgradeType();
    final UpgradeType upgradeType = this.upgradeTypeDao.getById(upgradeTypeId);
    if ("edit".equals(form.getMode())) {
      entity = getEntityDao().getById(form.getIdent());
      form.getEntity(entity);
      entity.setUpgradeType(upgradeType);
      getEntityDao().merge(entity);
    } else {
      final Long count = getEntityDao().countByExample(null);
      entity = new Upgrade();
      form.getEntity(entity);
      entity.setIdent(Integer.valueOf(count.intValue() + 1));
      entity.setUpgradeType(upgradeType);
      getEntityDao().persist(entity);
    }
    return new ModelAndView(BACK_PAGE);
  }

}
