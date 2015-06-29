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

import com.raf.xwing.jpa.dao.ShipSizeDao;
import com.raf.xwing.jpa.domain.model.ShipSize;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.web.controller.AbstractListCtrl;
import com.raf.xwing.web.form.admin.ShipSizeListForm;

/**
 * Controller for ShipSize entity.
 * 
 * @author RAF
 */
@Controller
@SessionAttributes(value = ShipSizeListForm.FORM_NAME, types = { ShipSizeListForm.class })
public class ShipSizeCtrl extends AbstractListCtrl<ShipSizeDao, ShipSize, ShipSizeListForm, Integer> {

  /** The list page. */
  private static final String LIST_PAGE = "admin/shipsizes";

  /** The entity dao. */
  @Resource
  private transient ShipSizeDao entityDao;

  /**
   * Constructor.
   */
  public ShipSizeCtrl() {
    super();
  }

  /**
   * Return the expansion dao.
   * 
   * @return the expansion dao
   * @see AbstractListCtrl#getEntityDao()
   */
  @Override
  protected final ShipSizeDao getEntityDao() {
    return this.entityDao;
  }

  /**
   * Initializes the list form.
   * 
   * @return the list form
   */
  @Override
  @ModelAttribute(ShipSizeListForm.FORM_NAME)
  @Loggable
  public ShipSizeListForm getForm() {
    final ShipSizeListForm form = new ShipSizeListForm();
    initPageInfo(form);
    final List<String> fields = ShipSize.FIELDS;
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
  @RequestMapping(value = "admin/shipsize/list", method = RequestMethod.GET)
  @Loggable
  public ModelAndView list(final Model model, @ModelAttribute(ShipSizeListForm.FORM_NAME) final ShipSizeListForm form) {
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
  @RequestMapping(value = "admin/shipsize/list", method = RequestMethod.POST)
  @Loggable
  public ModelAndView search(final Model model, @ModelAttribute(ShipSizeListForm.FORM_NAME) final ShipSizeListForm form) {
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
  @RequestMapping(value = "admin/shipsize/back", method = { RequestMethod.GET })
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
  protected final ShipSize createExample() {
    return new ShipSize();
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
  protected final void setValue(final ShipSize entity, final String field, final String value) {
    if (FIELD_NAME.equals(field)) {
      entity.setName(value);
    }
  }

}
