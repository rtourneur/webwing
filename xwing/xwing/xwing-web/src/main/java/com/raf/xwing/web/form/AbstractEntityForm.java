package com.raf.xwing.web.form;

import java.io.Serializable;

import com.raf.xwing.jpa.domain.DomainDescriptionEntity;

/**
 * Abstract form for entity edit request.
 * 
 * @param <E>
 *          the entity
 * @param <I>
 *          the identifier
 * @author RAF
 */
public abstract class AbstractEntityForm<E extends DomainDescriptionEntity<I>, I extends Serializable> extends
    AbstractEditForm {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The identifier. */
  private I ident;

  /** The name. */
  private String name;

  /** The description. */
  private String description;

  /**
   * Constructor.
   */
  public AbstractEntityForm() {
    super();
  }

  /**
   * Return the identifier.
   *
   * @return the identifier
   */
  public final I getIdent() {
    return this.ident;
  }

  /**
   * Define the identifier.
   *
   * @param ident
   *          the identifier to set
   */
  public final void setIdent(final I ident) {
    this.ident = ident;
  }

  /**
   * Return the name.
   *
   * @return the name
   */
  public final String getName() {
    return this.name;
  }

  /**
   * Define the name.
   *
   * @param name
   *          the name to set
   */
  public final void setName(final String name) {
    this.name = name;
  }

  /**
   * Return the description.
   *
   * @return the description
   */
  public final String getDescription() {
    return this.description;
  }

  /**
   * Define the description.
   *
   * @param description
   *          the description to set
   */
  public final void setDescription(final String description) {
    this.description = description;
  }

  /**
   * Return the entity with the form data.
   * 
   * @param entity
   *          the entity
   */
  public abstract void getEntity(E entity);

  /**
   * Sets the entity data in the form.
   * 
   * @param entity
   *          the entity
   */
  public abstract void setEntity(E entity);

  /**
   * Sets the entity data in the form (abstract implementation).
   * 
   * @param entity
   *          the entity
   */
  protected final void setEntityImpl(final E entity) {
    if (entity.getId() != null) {
      setIdent(entity.getId());
    }
    setName(entity.getName());
    setDescription(entity.getDescription());
  }

  /**
   * Sets the formdata in the entity (abstract implementation).
   * 
   * @param entity
   *          the entity
   */
  protected final void getEntityImpl(final E entity) {
    entity.setIdent(getIdent());
    entity.setName(getName());
    entity.setDescription(getDescription());
  }

}
