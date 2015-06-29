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

import com.raf.xwing.jpa.dao.ExpansionDao;
import com.raf.xwing.jpa.domain.model.Expansion;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.form.admin.ExpansionListForm;

/**
 * Controller for Expansion entity.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = ExpansionListForm.FORM_NAME, types = { ExpansionListForm.class })
public class ExpansionCtrl extends AbstractListCtrl<ExpansionDao, Expansion, ExpansionListForm, Integer> {

  /** The list page. */
  private static final String LIST_PAGE = "admin/expansions";

  /** The entity dao. */
  @Resource
  private transient ExpansionDao entityDao;

  /**
   * Constructor.
   */
  public ExpansionCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final ExpansionDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(ExpansionListForm.FORM_NAME)
  @Loggable
  public ExpansionListForm getForm() {
    final ExpansionListForm form = new ExpansionListForm();
    initPageInfo(form);
    final List<String> fields = Expansion.FIELDS;
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
  @RequestMapping(value = "admin/expansion/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model, @ModelAttribute(ExpansionListForm.FORM_NAME) final ExpansionListForm form) {
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
  @RequestMapping(value = "admin/expansion/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model,
      @ModelAttribute(ExpansionListForm.FORM_NAME) final ExpansionListForm form) {
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
  @RequestMapping(value = "admin/expansion/back", method = { RequestMethod.GET })
  @Loggable
  public String back(final SessionStatus status) {
    return backImpl(status);
  }

  /**
   * Create an instance of entity.
   * 
   * @return the example entity
   * @see AbstractListCtrl#createExample()
   */
  @Override
  protected final Expansion createExample() {
    return new Expansion();
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
  protected final void setValue(final Expansion entity, final String field, final String value) {
    if (FIELD_NAME.equals(field)) {
      entity.setName(value);
    } else if (FIELD_WAVE.equals(field)) {
      entity.setName(value);
    }

  }

}
