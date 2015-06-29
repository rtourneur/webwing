package com.raf.xwing.web.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.ManeuverTypeDao;
import com.raf.xwing.jpa.domain.model.ManeuverType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.form.admin.ManeuverTypeListForm;

/**
 * Controller for ManeuverType entity.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = ManeuverTypeListForm.FORM_NAME, types = { ManeuverTypeListForm.class })
public class ManeuverTypeCtrl extends AbstractListCtrl<ManeuverTypeDao, ManeuverType, ManeuverTypeListForm, Integer> {

  /** The list page. */
  private static final String LIST_PAGE = "admin/maneuvertypes";

  /** The entity dao. */
  @Resource
  private transient ManeuverTypeDao entityDao;

  /**
   * Constructor.
   */
  public ManeuverTypeCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final ManeuverTypeDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(ManeuverTypeListForm.FORM_NAME)
  @Loggable
  public ManeuverTypeListForm getForm() {
    final ManeuverTypeListForm form = new ManeuverTypeListForm();
    initPageInfo(form);
    final List<String> fields = ManeuverType.FIELDS;
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
  @RequestMapping(value = "admin/maneuvertype/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model,
      @ModelAttribute(ManeuverTypeListForm.FORM_NAME) final ManeuverTypeListForm form) {
    model.addAttribute("list", getEntities(form));
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
  @RequestMapping(value = "admin/maneuvertype/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model,
      @ModelAttribute(ManeuverTypeListForm.FORM_NAME) final ManeuverTypeListForm form) {
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
  @RequestMapping(value = "admin/maneuvertype/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    return backImpl(status);
  }

  /**
   * Create an instance of entity.
   * 
   * @return the example entity
   * @see com.raf.xwing.web.controller.AbstractListCtrl#createExample()
   */
  @Override
  protected final ManeuverType createExample() {
    return new ManeuverType();
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
  protected final void setValue(final ManeuverType entity, final String field, final String value) {
    if (FIELD_NAME.equals(field)) {
      entity.setName(value);
    }
    if (FIELD_DIFFICULTY.equals(field)) {
      entity.setDifficulty(value);
    }
  }

}
