package com.raf.xwing.web.controller.card;

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

import com.raf.xwing.jpa.dao.PilotDao;
import com.raf.xwing.jpa.dao.ShipTypeDao;
import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
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

  /** The entity dao. */
  @Resource
  private transient PilotDao entityDao;

  /** The ship type dao. */
  @Resource
  private transient ShipTypeDao shipTypeDao;

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
    }
  }

}