package com.raf.xwing.web.controller;

import java.io.Serializable;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.raf.xwing.jpa.dao.EntityDao;
import com.raf.xwing.jpa.domain.DomainDescriptionEntity;
import com.raf.xwing.web.form.AbstractEntityForm;

/**
 * Abstract controller for entities.
 * 
 * @param <D>
 *          the DAO
 * @param <F>
 *          the edit form
 * @param <E>
 *          the entity
 * @param <I>
 *          the identifier
 * @author RAF
 *
 */
public abstract class AbstractCtrl<D extends EntityDao<E, I>, F extends AbstractEntityForm<E, I>, E extends DomainDescriptionEntity<I>, I extends Serializable> {

  /**
   * Constructor.
   */
  public AbstractCtrl() {
    super();
  }

  /**
   * Return the entity dao.
   * 
   * @return the entity dao
   */
  protected abstract D getEntityDao();

  /**
   * Display the edit page for the entity.
   * 
   * @param ident
   *          the identifier
   * @param model
   *          the model
   * @return the edit page
   */
  public abstract ModelAndView edit(final Integer ident, final Model model);

  /**
   * Deletes the entity.
   * 
   * @param ident
   *          the identifier
   * @param model
   *          the model
   * @return the edit page
   */
  public abstract ModelAndView delete(final Integer ident, final Model model);

  /**
   * Display the add page for the entity.
   * 
   * @param model
   *          the model
   * @return the edit page
   */
  public abstract ModelAndView add(final Model model);

  /**
   * Save the entity.
   * 
   * @param model
   *          the model
   * @param form
   *          the form
   * @return the edit page
   */
  public abstract ModelAndView save(final Model model, final F form);

  /**
   * Initialises the form for the edit page.
   * 
   * @param ident
   *          the identifier
   * @param form
   *          the form
   */
  protected final void initFormEdit(final I ident, final F form) {
    form.setMode("edit");
    final E entity = getEntityDao().getById(ident);
    form.setEntity(entity);
  }

  /**
   * Initialises the form for the add page.
   * 
   * @param ident
   *          the default identifier
   * @param form
   *          the form
   */
  protected final void initFormAdd(final I ident, final F form) {
    form.setMode("add");
    form.setIdent(ident);
  }

  /**
   * Deletes the entity (implementation).
   * 
   * @param ident
   *          the identifier
   */
  protected final void deleteImpl(final I ident) {
    final E entity = getEntityDao().getById(ident);
    getEntityDao().remove(entity);
  }

}
