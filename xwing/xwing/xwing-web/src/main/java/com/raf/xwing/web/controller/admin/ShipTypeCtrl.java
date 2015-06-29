package com.raf.xwing.web.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.ShipTypeDao;
import com.raf.xwing.jpa.dao.UpgradeTypeDao;
import com.raf.xwing.jpa.domain.model.Dial;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.jpa.domain.model.ShipUpgrade;
import com.raf.xwing.jpa.domain.model.UpgradeType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.controller.dto.DialDtoComparator;
import com.raf.xwing.web.dto.DialDto;
import com.raf.xwing.web.form.admin.ShipTypeListForm;

/**
 * Controller for ShipType entity.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = ShipTypeListForm.FORM_NAME, types = { ShipTypeListForm.class })
public class ShipTypeCtrl extends AbstractListCtrl<ShipTypeDao, ShipType, ShipTypeListForm, Integer> {

  /** The list page. */
  private static final String LIST_PAGE = "admin/shiptypes";

  /** The dial page. */
  private static final String DIAL_PAGE = "admin/dial";

  /** THe dial map. */
  private static final Map<String, Integer> DIAL_MAP = new HashMap<>();

  /** The entity dao. */
  @Resource
  private transient ShipTypeDao entityDao;

  /** The upgrade type dao. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  static {
    DIAL_MAP.put("Turn Left", Integer.valueOf(0));
    DIAL_MAP.put("Bank Left", Integer.valueOf(1));
    DIAL_MAP.put("Straight", Integer.valueOf(2));
    DIAL_MAP.put("Bank Right", Integer.valueOf(3));
    DIAL_MAP.put("Turn Right", Integer.valueOf(4));
    DIAL_MAP.put("Koiogran Turn", Integer.valueOf(5));
    DIAL_MAP.put("Segnors Left", Integer.valueOf(0));
    DIAL_MAP.put("Segnors Right", Integer.valueOf(4));
  }

  /**
   * Constructor.
   */
  public ShipTypeCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final ShipTypeDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(ShipTypeListForm.FORM_NAME)
  @Loggable
  public ShipTypeListForm getForm() {
    final ShipTypeListForm form = new ShipTypeListForm();
    initPageInfo(form);
    final List<String> fields = ShipType.FIELDS;
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
  @RequestMapping(value = "admin/shiptype/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model, @ModelAttribute(ShipTypeListForm.FORM_NAME) final ShipTypeListForm form) {
    model.addAttribute("list", getEntities(form));
    model.addAttribute("upgradeTypes", this.upgradeTypeDao.listAll());
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
  @RequestMapping(value = "admin/shiptype/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model, @ModelAttribute(ShipTypeListForm.FORM_NAME) final ShipTypeListForm form) {
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
  @RequestMapping(value = "admin/shiptype/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    return backImpl(status);
  }

  /**
   * Display the dial for the ship type.
   * 
   * @param ident
   *          the identifier
   * @param model
   *          the model
   * @return the dial page
   */
  @Loggable
  @RequestMapping(value = "admin/shiptype/dial", method = RequestMethod.POST)
  public String dial(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final ShipType entity = getEntityDao().getById(ident);
    model.addAttribute("entity", entity);
    final Map<Integer, DialDto> map = new HashMap<>();
    final SortedSet<DialDto> set = new TreeSet<>(new DialDtoComparator());
    Integer speed;
    DialDto dialDto;
    String name;
    String icon;
    Integer index;
    for (final Dial dial : entity.getDials()) {
      speed = Integer.valueOf(dial.getSpeed());
      if (map.containsKey(speed)) {
        dialDto = map.get(speed);
      } else {
        dialDto = new DialDto();
        dialDto.setSpeed(speed.intValue());
        map.put(speed, dialDto);
        set.add(dialDto);
      }
      name = dial.getManeuverType().getName();
      index = DIAL_MAP.get(name);
      if (index != null) {
        icon = dial.getManeuverType().getIcon();
        dialDto.getManeuvers()[index.intValue()] = icon;
      }
    }
    model.addAttribute("list", set);

    return DIAL_PAGE;
  }

  /**
   * Create an instance of entity.
   * 
   * @return the example entity
   * @see com.raf.xwing.web.controller.AbstractListCtrl#createExample()
   */
  @Override
  protected final ShipType createExample() {
    final ShipType shipType = new ShipType();
    shipType.setPrimaryWeapon(-1);
    shipType.setAgility(-1);
    return shipType;
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
  protected final void setValue(final ShipType entity, final String field, final String value) {
    if (FIELD_NAME.equals(field)) {
      entity.setName(value);
    } else if (FIELD_PRIMARY_WEAPON.equals(field) && StringUtils.isNumeric(value)) {
      entity.setPrimaryWeapon(Integer.parseInt(value));
    } else if (FIELD_AGILITY.equals(field) && StringUtils.isNumeric(value)) {
      entity.setAgility(Integer.parseInt(value));
    } else if (FIELD_UPGRADE_TYPE.equals(field) && StringUtils.isNumeric(value)) {
      final UpgradeType upgradeType = new UpgradeType();
      upgradeType.setIdent(Integer.valueOf(value));
      final ShipUpgrade shipUpgrade = new ShipUpgrade();
      shipUpgrade.setUpgradeType(upgradeType);
      entity.setUpgrades(new ArrayList<ShipUpgrade>());
      entity.getUpgrades().add(shipUpgrade);
    }
  }

}
