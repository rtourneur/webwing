package com.raf.xwing.web.form.card;

import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.web.form.AbstractEntityForm;

/**
 * Upgrade form.
 * 
 * @author RAF
 */
public final class UpgradeForm extends AbstractEntityForm<Upgrade, Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The upgrade type. */
  private Integer upgradeType;

  /** The cost. */
  private Integer cost;

  /** The uniqueness indicator. */
  private Boolean uniqueness;

  /** The limited indicator. */
  private Boolean limited;

  /**
   * Constructor.
   */
  public UpgradeForm() {
    super();
  }

  /**
   * Return the upgrade type.
   * 
   * @return the upgrade type
   */
  public Integer getUpgradeType() {
    return this.upgradeType;
  }

  /**
   * Define the upgrade type.
   * 
   * @param upgradeType
   *          the upgrade type
   */
  public void setUpgradeType(final Integer upgradeType) {
    this.upgradeType = upgradeType;
  }

  /**
   * Return the cost.
   * 
   * @return the cost
   */
  public Integer getCost() {
    return this.cost;
  }

  /**
   * Define the cost.
   * 
   * @param cost
   *          the cost
   */
  public void setCost(final Integer cost) {
    this.cost = cost;
  }

  /**
   * Return the uniqueness indicator.
   * 
   * @return the uniqueness indicator
   */
  public Boolean getUniqueness() {
    return this.uniqueness;
  }

  /**
   * Define the uniqueness indicator.
   * 
   * @param uniqueness
   *          the uniqueness indicator
   */
  public void setUniqueness(final Boolean uniqueness) {
    this.uniqueness = uniqueness;
  }

  /**
   * Return the limited indicator.
   * 
   * @return the limited indicator
   */
  public Boolean getLimited() {
    return this.limited;
  }

  /**
   * Define the limited indicator.
   * 
   * @param limited
   *          the limited indicator
   */
  public void setLimited(final Boolean limited) {
    this.limited = limited;
  }

  /**
   * Sets the entity data in the form.
   * 
   * @param entity
   *          the entity
   * @see AbstractEntityForm#setEntity(com.raf.xwing.jpa.domain.DomainDescriptionEntity)
   */
  @Override
  public void setEntity(final Upgrade entity) {
    setEntityImpl(entity);
    setUpgradeType(entity.getUpgradeType().getId());
    setCost(Integer.valueOf(entity.getCost()));
    setUniqueness(Boolean.valueOf(entity.isUniqueness()));
    setLimited(Boolean.valueOf(entity.isLimited()));
  }

  /**
   * Return the entity with the form data.
   * 
   * @return the entity
   * @see com.raf.xwing.web.form.AbstractEntityForm#getEntity()
   */
  @Override
  public void getEntity(final Upgrade entity) {
    getEntityImpl(entity);
    entity.setCost(getCost().intValue());
    entity.setUniqueness(Boolean.TRUE.equals(getUniqueness()));
    entity.setLimited(Boolean.TRUE.equals(getLimited()));
  }

}
