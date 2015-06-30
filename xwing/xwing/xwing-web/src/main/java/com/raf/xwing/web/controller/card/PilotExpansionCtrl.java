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
import com.raf.xwing.jpa.dao.PilotDao;
import com.raf.xwing.jpa.dao.PilotExpansionDao;
import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.jpa.domain.card.PilotExpansion;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.form.card.EntityExpansionForm;

/**
 * Controller for Upgrade entity.
 * 
 * @author RAF
 */
@Controller
public class PilotExpansionCtrl {

  /** The edit page. */
  private static final String EDIT_PAGE = "card/expansion";

  /** The list page. */
  private static final String LIST_PAGE = "card/expansions";

  /** The back page. */
  private static final String BACK_PAGE = "redirect:/xwing/card/pilot/list";

  /** The entity dao. */
  @Resource
  private transient PilotDao entityDao;

  /** The expansion dao. */
  @Resource
  private transient ExpansionDao expansionDao;

  /** The pilot expansion dao. */
  @Resource
  private transient PilotExpansionDao pilotExpansionDao;

  /**
   * constructor.
   */
  public PilotExpansionCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   */
  protected final PilotDao getEntityDao() {
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
  @RequestMapping(value = "card/pilot/expansion/list", method = { RequestMethod.GET, RequestMethod.POST })
  public String list(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final Pilot entity = getEntityDao().getById(ident);
    final PilotExpansion example = new PilotExpansion();
    example.setPilot(entity);
    final List<PilotExpansion> list = this.pilotExpansionDao.findByExample(example);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    model.addAttribute("count", Integer.valueOf(list.size()));
    model.addAttribute("list", list);
    model.addAttribute("entity", "pilot");
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
  @RequestMapping(value = "card/pilot/expansion/edit", method = RequestMethod.POST)
  public ModelAndView edit(@RequestParam(value = "ident", required = true) final Integer ident,
      @RequestParam(value = "id", required = true) final Integer expansionId, final Model model) {
    final EntityExpansionForm form = new EntityExpansionForm();
    final Pilot entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("edit");
    form.setIdent(ident);
    form.setExpansionOld(expansionId);
    form.setExpansion(expansionId);
    final PilotExpansion upgradeExpansion = findExpansion(entity, expansionId);
    if (upgradeExpansion != null) {
      form.setQuantity(Integer.valueOf(upgradeExpansion.getQuantity()));
    }
    model.addAttribute("list", this.expansionDao.listAll());
    model.addAttribute("entity", "pilot");
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
  @RequestMapping(value = "card/pilot/expansion/delete", method = RequestMethod.POST)
  public String delete(@RequestParam(value = "ident", required = true) final Integer ident,
      @RequestParam(value = "id", required = true) final Integer expansionId, final Model model) {
    final Pilot entity = getEntityDao().getById(ident);
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
  @RequestMapping(value = "card/pilot/expansion/add", method = RequestMethod.POST)
  public ModelAndView add(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final EntityExpansionForm form = new EntityExpansionForm();
    final Pilot entity = getEntityDao().getById(ident);
    model.addAttribute("name", entity.getName());
    model.addAttribute("ident", entity.getIdent());
    form.setMode("add");
    form.setIdent(ident);
    form.setExpansion(Integer.valueOf(0));
    model.addAttribute("list", this.expansionDao.listAll());
    model.addAttribute("entity", "pilot");
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
  @RequestMapping(value = "card/pilot/expansion/save", method = RequestMethod.POST)
  public String save(final Model model, @ModelAttribute("upgradeExpansionForm") final EntityExpansionForm form) {
    final Pilot entity = getEntityDao().getById(form.getIdent());
    final Integer expansionId = form.getExpansion();
    PilotExpansion pilotExpansion;
    if ("edit".equals(form.getMode())) {
      if (form.getExpansionOld().equals(expansionId)) {
        pilotExpansion = findExpansion(entity, expansionId);
      } else {
        removeExpansion(entity, form.getExpansionOld());
        pilotExpansion = createExpansion(entity, expansionId);
      }
    } else {
      pilotExpansion = createExpansion(entity, expansionId);
    }
    pilotExpansion.setQuantity(form.getQuantity().intValue());
    this.pilotExpansionDao.persist(pilotExpansion);
    return list(form.getIdent(), model);
  }

  /**
   * Back to the admin home.
   * 
   * @param status
   *          the session status
   * @return back to the admin home
   */
  @RequestMapping(value = "card/pilot/expansion/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    return BACK_PAGE;
  }

  /**
   * Creates a new pilot expansion.
   * 
   * @param entity
   *          the pilot
   * @param expansionId
   *          the identifier of the expansion
   * @return the pilot expansion
   */
  private PilotExpansion createExpansion(final Pilot entity, final Integer expansionId) {
    final Long count = this.pilotExpansionDao.countByExample(null);
    final PilotExpansion pilotExpansion = new PilotExpansion();
    pilotExpansion.setIdent(Integer.valueOf(count.intValue() + 1));
    pilotExpansion.setPilot(entity);
    pilotExpansion.setExpansion(this.expansionDao.getById(expansionId));
    entity.getExpansions().add(pilotExpansion);
    return pilotExpansion;
  }

  /**
   * Remove the upgrade expansion from the upgrade expansion list.
   * 
   * @param entity
   *          the pilot
   * @param expansionId
   *          the identifier of the expansion
   */
  private void removeExpansion(final Pilot entity, final Integer expansionId) {
    final PilotExpansion toDelete = findExpansion(entity, expansionId);
    if (toDelete != null) {
      this.pilotExpansionDao.remove(toDelete);
    }
  }

  /**
   * Find the upgrade expansion in the upgrade expansion list.
   * 
   * @param entity
   *          the pilot
   * @param expansionId
   *          the identifier of the expansion
   * @return the upgrade expansion
   */
  private PilotExpansion findExpansion(final Pilot entity, final Integer expansionId) {
    PilotExpansion expansion = null;
    for (final PilotExpansion pilotExpansion : entity.getExpansions()) {
      if (pilotExpansion.getPilot() != null && pilotExpansion.getPilot().equals(entity)
          && pilotExpansion.getExpansion() != null && expansionId.equals(pilotExpansion.getExpansion().getId())) {
        expansion = pilotExpansion;
        break;
      }
    }
    return expansion;
  }

}
