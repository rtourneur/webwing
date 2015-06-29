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

import com.raf.xwing.jpa.dao.RestrictionDao;
import com.raf.xwing.jpa.dao.RestrictionTypeDao;
import com.raf.xwing.jpa.domain.model.Restriction;
import com.raf.xwing.jpa.domain.model.RestrictionType;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.form.admin.RestrictionListForm;

/**
 * Controller for Restriction entity.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = RestrictionListForm.FORM_NAME, types = { RestrictionListForm.class })
public class RestrictionCtrl extends AbstractListCtrl<RestrictionDao, Restriction, RestrictionListForm, Integer> {

  /** The list page. */
  private static final String LIST_PAGE = "admin/restrictions";

  /** The entity dao. */
  @Resource
  private transient RestrictionDao entityDao;

  /** The restriction type dao. */
  @Resource
  private transient RestrictionTypeDao restrictionTypeDao ;

  /**
   * Constructor.
   */
  public RestrictionCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final RestrictionDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(RestrictionListForm.FORM_NAME)
  @Loggable
  public RestrictionListForm getForm() {
    final RestrictionListForm form = new RestrictionListForm();
    initPageInfo(form);
    final List<String> fields = Restriction.FIELDS;
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
  @RequestMapping(value = "admin/restriction/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model, @ModelAttribute(RestrictionListForm.FORM_NAME) final RestrictionListForm form) {
    model.addAttribute("list", getEntities(form));
    model.addAttribute("restrictionTypes", this.restrictionTypeDao.listAll());
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
  @RequestMapping(value = "admin/restriction/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model,
      @ModelAttribute(RestrictionListForm.FORM_NAME) final RestrictionListForm form) {
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
  @RequestMapping(value = "admin/restriction/back", method = { RequestMethod.GET })
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
  protected final Restriction createExample() {
    return new Restriction();
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
  protected final void setValue(final Restriction entity, final String field, final String value) {
    if (FIELD_RESTRICTION_TYPE.equals(field)) {
      final RestrictionType restrictionType = new RestrictionType();
      restrictionType.setName(value);
      entity.setRestrictionType(restrictionType);
    }
  }

}
