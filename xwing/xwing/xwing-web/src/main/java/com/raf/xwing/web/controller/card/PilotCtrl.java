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

import com.raf.xwing.jpa.dao.FactionDao;
import com.raf.xwing.jpa.dao.PilotDao;
import com.raf.xwing.jpa.dao.ShipTypeDao;
import com.raf.xwing.jpa.dao.UpgradeTypeDao;
import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.jpa.domain.model.Faction;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.jpa.domain.model.UpgradeType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractCtrl;
import com.raf.xwing.web.form.card.PilotForm;

/**
 * Controller for Pilot entity.
 * 
 * @author RAF
 */
@Controller
public class PilotCtrl extends AbstractCtrl<PilotDao, PilotForm, Pilot, Integer> {

  /** The edit page. */
  private static final String EDIT_PAGE = "card/pilot";

  /** The back page. */
  private static final String BACK_PAGE = "redirect:/card/pilot/list";

  /** The elite pilote talent ID. */
  private static final Integer TALENT_ID = Integer.valueOf(1);
  
  /** The entity dao. */
  @Resource
  private transient PilotDao entityDao;

  /** The ship type dao. */
  @Resource
  private transient ShipTypeDao shipTypeDao;

  /** The upgrade type dao. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  /** The faction dao. */
  @Resource
  private transient FactionDao factionDao;
  
  /**
   * Constructor.
   */
  public PilotCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   */
  @Override
  protected final PilotDao getEntityDao() {
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
  @RequestMapping(value = "card/pilot/edit", method = RequestMethod.POST)
  public ModelAndView edit(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final PilotForm form = new PilotForm();
    initFormEdit(ident, form);
    model.addAttribute("shipTypes", this.shipTypeDao.listAll());
    model.addAttribute("factions", this.factionDao.listAll());
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
  @RequestMapping(value = "card/pilot/delete", method = RequestMethod.POST)
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
  @RequestMapping(value = "card/pilot/add", method = RequestMethod.GET)
  public ModelAndView add(final Model model) {
    final PilotForm form = new PilotForm();
    initFormAdd(Integer.valueOf(0), form);
    model.addAttribute("shipTypes", this.shipTypeDao.listAll());
    model.addAttribute("factions", this.factionDao.listAll());
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
  @RequestMapping(value = "card/pilot/save", method = RequestMethod.POST)
  public ModelAndView save(final Model model, @ModelAttribute("pilotForm") final PilotForm form) {
    Pilot entity;
    final ShipType shipType = getShipType(form);
    final Faction faction = getFaction(form);
    final UpgradeType upgradeType = getUpgradeType(form);

    if ("edit".equals(form.getMode())) {
      entity = getEntityDao().getById(form.getIdent());
      form.getEntity(entity);
      entity.setShipType(shipType);
      entity.setUpgradeType(upgradeType);
      entity.setFaction(faction);
      getEntityDao().merge(entity);
    } else {
      final Long count = getEntityDao().countByExample(null);
      entity = new Pilot();
      form.getEntity(entity);
      entity.setIdent(Integer.valueOf(count.intValue() + 1));
      entity.setShipType(shipType);
      entity.setUpgradeType(upgradeType);
      entity.setFaction(faction);
      getEntityDao().persist(entity);
    }
    return new ModelAndView(BACK_PAGE);
  }

  /**
   * Return the ship type.
   * 
   * @param form
   *          the form
   * @return the ship type
   */
  private ShipType getShipType(final PilotForm form) {
    final Integer shipTypeId = form.getShipType();
    return this.shipTypeDao.getById(shipTypeId);
  }

  /**
   * Return the faction.
   * 
   * @param form
   *          the form
   * @return the faction
   */
  private Faction getFaction(final PilotForm form) {
    final Integer factionId = form.getFaction();
    return this.factionDao.getById(factionId);
  }


  /**
   * Return the upgrade type (if any).
   * 
   * @param form
   *          the form
   * @return the upgrade type
   */
  private UpgradeType getUpgradeType(final PilotForm form) {
    final Boolean talent = form.getTalent();
    UpgradeType upgradeType = null;
    if (Boolean.TRUE.equals(talent)) {
      upgradeType = this.upgradeTypeDao.getById(TALENT_ID);
    }
    return upgradeType;
  }

}
