package com.raf.xwing.web.controller.card;

import java.util.List;

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
import com.raf.xwing.jpa.dao.UpgradeExpansionDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.card.UpgradeExpansion;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.form.card.EntityExpansionForm;

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

  /** The upgrade expansion dao. */
  @Resource
  private transient UpgradeExpansionDao upgradeExpansionDao;

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
    final UpgradeExpansion example = new UpgradeExpansion();
    example.setUpgrade(entity);
    final List<UpgradeExpansion> list = this.upgradeExpansionDao.findByExample(example);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    model.addAttribute("count", Integer.valueOf(list.size()));
    model.addAttribute("list", list);
    model.addAttribute("entity", "upgrade");
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
    final EntityExpansionForm form = new EntityExpansionForm();
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
    model.addAttribute("entity", "upgrade");
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
    final EntityExpansionForm form = new EntityExpansionForm();
    final Upgrade entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("add");
    form.setIdent(ident);
    form.setExpansion(Integer.valueOf(0));
    model.addAttribute("list", this.expansionDao.listAll());
    model.addAttribute("entity", "upgrade");
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
  public String save(final Model model, @ModelAttribute("upgradeExpansionForm") final EntityExpansionForm form) {
    final Upgrade entity = getEntityDao().getById(form.getIdent());
    final Integer expansionId = form.getExpansion();
    UpgradeExpansion upgradeExpansion;
    if ("edit".equals(form.getMode())) {
      if (form.getExpansionOld().equals(expansionId)) {
        upgradeExpansion = findExpansion(entity, expansionId);
      } else {
        removeExpansion(entity, form.getExpansionOld());
        upgradeExpansion = createExpansion(entity, expansionId);
      }
    } else {
      upgradeExpansion = createExpansion(entity, expansionId);
      entity.getExpansions().add(upgradeExpansion);
    }
    upgradeExpansion.setQuantity(form.getQuantity().intValue());
    this.upgradeExpansionDao.persist(upgradeExpansion);
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
   * Creates a new upgrade expansion.
   * 
   * @param entity
   *          the upgrade
   * @param expansionId
   *          the identifier of the expansion
   * @return the upgrade expansion
   */
  private UpgradeExpansion createExpansion(final Upgrade entity, final Integer expansionId) {
    final Long count = this.upgradeExpansionDao.countByExample(null);
    final UpgradeExpansion upgradeExpansion = new UpgradeExpansion();
    upgradeExpansion.setIdent(Integer.valueOf(count.intValue() + 1));
    upgradeExpansion.setUpgrade(entity);
    upgradeExpansion.setExpansion(this.expansionDao.getById(expansionId));
    return upgradeExpansion;
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
      this.upgradeExpansionDao.remove(toDelete);
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
    UpgradeExpansion expansion = null;
    for (final UpgradeExpansion upgradeExpansion : entity.getExpansions()) {
      if (upgradeExpansion.getUpgrade() != null && upgradeExpansion.getUpgrade().equals(entity)
          && upgradeExpansion.getExpansion() != null && expansionId.equals(upgradeExpansion.getExpansion().getId())) {
        expansion = upgradeExpansion;
        break;
      }
    }
    return expansion;
  }

}
