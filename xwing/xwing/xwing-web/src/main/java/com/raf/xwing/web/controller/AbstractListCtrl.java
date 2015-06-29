package com.raf.xwing.web.controller;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.ui.Model;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.EntityDao;
import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.util.Paged;
import com.raf.xwing.web.form.AbstractSearchListForm;

/**
 * Abstract list controller for entities.
 * 
 * @param <D>
 *          the DAO
 * @param <E>
 *          the entity
 * @param <F>
 *          the search form
 * @param <I>
 *          the identifier
 * @author RAF
 *
 */
public abstract class AbstractListCtrl<D extends EntityDao<E, I>, E extends DomainEntity<I>, F extends AbstractSearchListForm, I extends Serializable> {

  /** The admin home page. */
  private static final String HOME_PAGE = "redirect:/xwing/admin/home";

  /** The search field name. */
  protected static final String FIELD_NAME = "name";

  /** The search field wave. */
  protected static final String FIELD_WAVE = "wave";

  /** The search field difficulty. */
  protected static final String FIELD_DIFFICULTY = "difficulty";

  /** The search field restrictionType. */
  protected static final String FIELD_RESTRICTION_TYPE = "restrictionType";

  /** The search field primaryWeapon. */
  protected static final String FIELD_PRIMARY_WEAPON = "primaryWeapon";

  /** The search field agility. */
  protected static final String FIELD_AGILITY = "agility";

  /** The search field upgradeType. */
  protected static final String FIELD_UPGRADE_TYPE = "upgradeType";

  /** The search field shipType. */
  protected static final String FIELD_SHIP_TYPE = "shipType";

  /** The search field expansion. */
  protected static final String FIELD_EXPANSION = "expansion";


  /**
   * Constructor.
   */
  public AbstractListCtrl() {
    super();
  }

  /**
   * Initializes the form.
   * 
   * @return the form
   */
  public abstract F getForm();

  /**
   * Display the list page.
   * 
   * @param model
   *          the model
   * @param form
   *          the search form
   * @return the list page
   */
  public abstract ModelAndView list(Model model, F form);

  /**
   * Search and display the list page.
   * 
   * @param model
   *          the model
   * @param form
   *          the search form
   * @return the list page
   */
  public abstract ModelAndView search(Model model, F form);

  /**
   * Back to the admin home.
   * 
   * @param status
   *          the session status
   * @return back to the admin home
   */
  public abstract String back(SessionStatus status);

  /**
   * Return the entity dao.
   * 
   * @return the entity dao
   */
  protected abstract D getEntityDao();

  /**
   * Back to the admin home (implementation).
   * 
   * @param status
   *          the session status
   * @return back to the admin home
   */
  protected final String backImpl(final SessionStatus status) {
    status.setComplete();
    return HOME_PAGE;
  }

  /**
   * Return the paged list of entities with the search form criterias.
   * 
   * @param form
   *          the search form
   * @return the paged list of entities
   */
  protected final Paged<E> getEntities(final F form) {
    final E example = getExampleForm(form);
    final Paged<E> entities = getEntityDao().list(example, form.getNbRows(), form.getPageNum());
    form.setTotalPages(entities.getTotalPages());
    form.setTotalRows(entities.getTotalRows());
    return entities;
  }

  /**
   * Creates an exemple entity from the search form.
   * 
   * @param form
   *          the search form
   * @return the example entity
   */
  protected final E getExampleForm(final F form) {
    final E entity = createExample();
    if (form.getValues() != null) {
      for (final Map.Entry<String, String> field : form.getValues().entrySet()) {
        if (StringUtils.isNotBlank(field.getValue())) {
          setValue(entity, field.getKey(), field.getValue());
        }

      }
    }
    return entity;
  }

  /**
   * Initialize the page info in the form.
   * 
   * @param form
   *          the form
   */
  protected final void initPageInfo(final F form) {
    form.setNbRows(10);
    form.setPageNum(1);
  }

  /**
   * Initialize the values keys.
   * 
   * @param form
   *          the form
   * @param fields
   *          the list of fields
   */
  protected final void initValues(final F form, final List<String> fields) {
    final Map<String, String> values = new LinkedHashMap<>(fields.size());
    for (final String field : fields) {
      values.put(field, null);
    }
    form.setValues(values);
  }

  /**
   * Create an instance of entity.
   * 
   * @return the example entity
   */
  protected abstract E createExample();

  /**
   * Set the field value in the entity.
   * 
   * @param entity
   *          the entity
   * @param field
   *          the field
   * @param value
   *          the value
   */
  protected abstract void setValue(E entity, String field, String value);

}
