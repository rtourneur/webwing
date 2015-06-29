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

import com.raf.xwing.jpa.dao.ExpansionDao;
import com.raf.xwing.jpa.dao.UpgradeDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.card.UpgradeExpansion;
import com.raf.xwing.jpa.domain.card.UpgradeExpansionPk;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.form.card.UpgradeExpansionForm;

/**
 * Controller for Upgrade entity.
 * 
 * @author RAF
 */
@Controller
public class UpgradeExpansionCtrl {

  /** The edit page. */
  private static final String EDIT_PAGE = "card/expansion";

  /** The list page. */
  private static final String LIST_PAGE = "card/expansions";

  /** The back page. */
  private static final String BACK_PAGE = "redirect:/xwing/card/upgrade/list";

  /** The entity dao. */
  @Resource
  private transient UpgradeDao entityDao;

  /** The expansion dao. */
  @Resource
  private transient ExpansionDao expansionDao;

  /**
   * constructor.
   */
  public UpgradeExpansionCtrl() {
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
  @RequestMapping(value = "card/upgrade/expansion/list", method = RequestMethod.POST)
  public String list(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    model.addAttribute("count", Integer.valueOf(entity.getExpansions().size()));
    model.addAttribute("list", entity.getExpansions());
    return LIST_PAGE;
  }

  /**
   * Display the edit page for the upgrade expansion.
   * 
   * @param ident
   *          the identifier of the upgrade
   * @param expansionId
   *          the identifier of the expansion
   * @param model
   *          the model
   * @return the edit page
   */
  @Loggable
  @RequestMapping(value = "card/upgrade/expansion/edit", method = RequestMethod.POST)
  public ModelAndView edit(@RequestParam(value = "ident", required = true) final Integer ident,
      @RequestParam(value = "id", required = true) final Integer expansionId, final Model model) {
    final UpgradeExpansionForm form = new UpgradeExpansionForm();
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("edit");
    form.setIdent(ident);
    form.setExpansionOld(expansionId);
    form.setExpansion(expansionId);
    final UpgradeExpansion upgradeExpansion = findExpansion(entity, expansionId);
    if (upgradeExpansion != null) {
      form.setQuantity(Integer.valueOf(upgradeExpansion.getQuantity()));
    }
    model.addAttribute("list", this.expansionDao.listAll());
    return new ModelAndView(EDIT_PAGE, "command", form);
  }

  /**
   * Display the edit page for the entity.
   * 
   * @param ident
   *          the identifier of the upgrade
   * @param expansionId
   *          the identifier of the expansion
   * @param model
   *          the model
   * @return the edit page
   */
  @Loggable
  @Transactional
  @RequestMapping(value = "card/upgrade/expansion/delete", method = RequestMethod.POST)
  public String delete(@RequestParam(value = "ident", required = true) final Integer ident,
      @RequestParam(value = "id", required = true) final Integer expansionId, final Model model) {
    final Upgrade entity = getEntityDao().getById(ident);
    removeExpansion(entity, expansionId);
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
  @RequestMapping(value = "card/upgrade/expansion/add", method = RequestMethod.POST)
  public ModelAndView add(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final UpgradeExpansionForm form = new UpgradeExpansionForm();
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("add");
    form.setIdent(ident);
    form.setExpansion(Integer.valueOf(0));
    model.addAttribute("list", this.expansionDao.listAll());
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
  @RequestMapping(value = "card/upgrade/expansion/save", method = RequestMethod.POST)
  public String save(final Model model, @ModelAttribute("upgradeExpansionForm") final UpgradeExpansionForm form) {
    final Upgrade entity = getEntityDao().getById(form.getIdent());
    final Integer expansionId = form.getExpansion();
    UpgradeExpansion upgradeExpansion;
    if ("edit".equals(form.getMode())) {
      if (!form.getExpansionOld().equals(expansionId)) {
        removeExpansion(entity, form.getExpansionOld());
      }
      upgradeExpansion = findExpansion(entity, expansionId);
    } else {
      final UpgradeExpansionPk pKey = new UpgradeExpansionPk();
      pKey.setUpgrade(entity.getIdent());
      pKey.setExpansion(expansionId);
      upgradeExpansion = new UpgradeExpansion();
      upgradeExpansion.setIdent(pKey);
      upgradeExpansion.setExpansion(this.expansionDao.getById(expansionId));
      entity.getExpansions().add(upgradeExpansion);
    }
    upgradeExpansion.setQuantity(form.getQuantity().intValue());
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
  @RequestMapping(value = "card/upgrade/expansion/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    return BACK_PAGE;
  }

  /**
   * Remove the upgrade expansion from the upgrade expansion list.
   * 
   * @param entity
   *          the upgrade
   * @param expansionId
   *          the identifier of the expansion
   */
  private void removeExpansion(final Upgrade entity, final Integer expansionId) {
    final UpgradeExpansion toDelete = findExpansion(entity, expansionId);
    if (toDelete != null) {
      entity.getExpansions().remove(toDelete);
    }
  }

  /**
   * Find the upgrade expansion in the upgrade expansion list.
   * 
   * @param entity
   *          the upgrade
   * @param expansionId
   *          the identifier of the expansion
   * @return the upgrade expansion
   */
  private UpgradeExpansion findExpansion(final Upgrade entity, final Integer expansionId) {
    final UpgradeExpansionPk pKey = new UpgradeExpansionPk();
    pKey.setUpgrade(entity.getIdent());
    pKey.setExpansion(expansionId);
    UpgradeExpansion expansion = null;
    for (final UpgradeExpansion upgradeExpansion : entity.getExpansions()) {
      if (pKey.equals(upgradeExpansion.getId())) {
        expansion = upgradeExpansion;
        break;
      }
    }
    return expansion;
  }

}
