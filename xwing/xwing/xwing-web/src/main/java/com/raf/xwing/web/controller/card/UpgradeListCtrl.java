package com.raf.xwing.web.controller.card;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.ExpansionDao;
import com.raf.xwing.jpa.dao.UpgradeDao;
import com.raf.xwing.jpa.dao.UpgradeTypeDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.card.UpgradeExpansion;
import com.raf.xwing.jpa.domain.model.Expansion;
import com.raf.xwing.jpa.domain.model.UpgradeType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.form.card.UpgradeListForm;

/**
 * Controller for Upgrade entity list.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = UpgradeListForm.FORM_NAME, types = { UpgradeListForm.class })
public class UpgradeListCtrl extends AbstractListCtrl<UpgradeDao, Upgrade, UpgradeListForm, Integer> {

  /** The admin home page. */
  private static final String HOME_PAGE = "redirect:/xwing/main";

  /** The list page. */
  private static final String LIST_PAGE = "card/upgrades";

  /** The entity dao. */
  @Resource
  private transient UpgradeDao entityDao;

  /** The upgrade type dao. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  /** The expansion dao. */
  @Resource
  private transient ExpansionDao expansionDao;

  /**
   * Constructor.
   */
  public UpgradeListCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final UpgradeDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(UpgradeListForm.FORM_NAME)
  @Loggable
  public UpgradeListForm getForm() {
    final UpgradeListForm form = new UpgradeListForm();
    initPageInfo(form);
    final List<String> fields = Upgrade.FIELDS;
    initValues(form, fields);
    return form;
  }

  /**
   * Display the list page.
   * 
   * @param model
   *          the model
   * @param form
   *          the search form
   * @return the list page
   */
  @Override
  @RequestMapping(value = "card/upgrade/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model, @ModelAttribute(UpgradeListForm.FORM_NAME) final UpgradeListForm form) {
    model.addAttribute("list", getEntities(form));
    model.addAttribute("upgradeTypes", this.upgradeTypeDao.listAll());
    model.addAttribute("expansions", this.expansionDao.listAll());
    return new ModelAndView(LIST_PAGE, "command", form);
  }

  /**
   * Search and display the list page.
   * 
   * @param model
   *          the model
   * @param form
   *          the search form
   * @return the list page
   */
  @Override
  @RequestMapping(value = "card/upgrade/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model, @ModelAttribute(UpgradeListForm.FORM_NAME) final UpgradeListForm form) {
    form.setPageNum(1);
    return list(model, form);
  }

  /**
   * Back to the admin home.
   * 
   * @param status
   *          the session status
   * @return back to the admin home
   */
  @Override
  @RequestMapping(value = "card/upgrade/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    status.setComplete();
    return HOME_PAGE;
  }

  /**
   * Create an instance of entity.
   * 
   * @return the example entity
   * @see com.raf.xwing.web.controller.AbstractListCtrl#createExample()
   */
  @Override
  protected final Upgrade createExample() {
    return new Upgrade();
  }

  /**
   * Set the field value in the entity.
   * 
   * @param entity
   *          the entity
   * @param field
   *          the field
   * @param value
   *          the value
   * @see AbstractListCtrl#setValue(com.raf.xwing.jpa.domain.DomainEntity, String, String)
   */
  @Override
  protected final void setValue(final Upgrade entity, final String field, final String value) {
    if (FIELD_NAME.equals(field)) {
      entity.setName(value);
    } else if (FIELD_UPGRADE_TYPE.equals(field) && StringUtils.isNumeric(value)) {
      final UpgradeType upgradeType = new UpgradeType();
      upgradeType.setIdent(Integer.valueOf(value));
      entity.setUpgradeType(upgradeType);
    } else if (FIELD_EXPANSION.equals(field) && StringUtils.isNumeric(value)) {
      final Expansion expansion = new Expansion();
      expansion.setIdent(Integer.valueOf(value));
      final UpgradeExpansion upgradeExpansion = new UpgradeExpansion();
      upgradeExpansion.setExpansion(expansion);
      final List<UpgradeExpansion> expansions = new ArrayList<UpgradeExpansion>();
      expansions.add(upgradeExpansion);
      entity.setExpansions(expansions);
    }
  }

}
