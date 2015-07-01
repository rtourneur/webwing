package com.raf.xwing.web.controller.card;

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

import com.raf.xwing.jpa.dao.ExpansionDao;
import com.raf.xwing.jpa.dao.PilotDao;
import com.raf.xwing.jpa.dao.ShipTypeDao;
import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.jpa.domain.card.PilotExpansion;
import com.raf.xwing.jpa.domain.model.Dial;
import com.raf.xwing.jpa.domain.model.Expansion;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.controller.dto.DialDtoComparator;
import com.raf.xwing.web.dto.DialDto;
import com.raf.xwing.web.form.card.PilotListForm;

/**
 * Controller for Pilot entity list.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = PilotListForm.FORM_NAME, types = { PilotListForm.class })
public class PilotListCtrl extends AbstractListCtrl<PilotDao, Pilot, PilotListForm, Integer> {

  /** The admin home page. */
  private static final String HOME_PAGE = "redirect:/xwing/main";

  /** The list page. */
  private static final String LIST_PAGE = "card/pilots";

  /** The dial page. */
  private static final String DIAL_PAGE = "card/dial";

  /** The dial map. */
  private static final Map<String, Integer> DIAL_MAP = new HashMap<>();

  /** The entity dao. */
  @Resource
  private transient PilotDao entityDao;

  /** The ship type dao. */
  @Resource
  private transient ShipTypeDao shipTypeDao;

  /** The expansion dao. */
  @Resource
  private transient ExpansionDao expansionDao;

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
  public PilotListCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final PilotDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(PilotListForm.FORM_NAME)
  @Loggable
  public PilotListForm getForm() {
    final PilotListForm form = new PilotListForm();
    initPageInfo(form);
    final List<String> fields = Pilot.FIELDS;
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
  @RequestMapping(value = "card/pilot/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model, @ModelAttribute(PilotListForm.FORM_NAME) final PilotListForm form) {
    model.addAttribute("list", getEntities(form));
    model.addAttribute("shipTypes", this.shipTypeDao.listAll());
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
  @RequestMapping(value = "card/pilot/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model, @ModelAttribute(PilotListForm.FORM_NAME) final PilotListForm form) {
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
  @RequestMapping(value = "card/pilot/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    status.setComplete();
    return HOME_PAGE;
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
  @RequestMapping(value = "card/pilot/dial", method = RequestMethod.POST)
  public String dial(@RequestParam(value = "id", required = true) final Integer ident, final Model model) {
    final Pilot pilot = getEntityDao().getById(ident);
    final ShipType entity = pilot.getShipType();
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
  protected final Pilot createExample() {
    return new Pilot();
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
  protected final void setValue(final Pilot entity, final String field, final String value) {
    if (FIELD_NAME.equals(field)) {
      entity.setName(value);
    } else if (FIELD_SHIP_TYPE.equals(field) && StringUtils.isNumeric(value)) {
      final ShipType shipType = new ShipType();
      shipType.setIdent(Integer.valueOf(value));
      entity.setShipType(shipType);
    } else if (FIELD_EXPANSION.equals(field) && StringUtils.isNumeric(value)) {
      final Expansion expansion = new Expansion();
      expansion.setIdent(Integer.valueOf(value));
      final PilotExpansion pilotExpansion = new PilotExpansion();
      pilotExpansion.setExpansion(expansion);
      final List<PilotExpansion> expansions = new ArrayList<PilotExpansion>();
      expansions.add(pilotExpansion);
      entity.setExpansions(expansions);
    }
  }

}
