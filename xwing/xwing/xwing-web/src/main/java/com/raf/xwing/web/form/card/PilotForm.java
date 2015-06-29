package com.raf.xwing.web.form.card;

import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.web.form.AbstractEntityForm;

/**
 * Upgrade form.
 * 
 * @author RAF
 */
public final class PilotForm extends AbstractEntityForm<Pilot, Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The ship type. */
  private Integer shipType;

  /** The faction. */
  private Integer faction;

  /** The cost. */
  private Integer cost;

  /** The uniqueness indicator. */
  private Boolean uniqueness;

  /** The pilot level. */
  private Integer level;

  /** The elite pilote talent. */
  private Boolean talent;

  /**
   * Constructor.
   */
  public PilotForm() {
    super();
  }

  /**
   * Return the ship type.
   * 
   * @return the ship type
   */
  public Integer getShipType() {
    return this.shipType;
  }

  /**
   * Define the ship type.
   * 
   * @param shipType
   *          the ship type
   */
  public void setShipType(final Integer shipType) {
    this.shipType = shipType;
  }

  /**
   * Return the faction.
   * 
   * @return the faction
   */
  public Integer getFaction() {
    return this.faction;
  }

  /**
   * Define the faction.
   * 
   * @param faction
   *          the faction
   */
  public void setFaction(final Integer faction) {
    this.faction = faction;
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
   * Return the pilot level.
   * 
   * @return the level
   */
  public Integer getLevel() {
    return this.level;
  }

  /**
   * Define the pilot level.
   * 
   * @param level
   *          the level
   */
  public void setLevel(final Integer level) {
    this.level = level;
  }

  /**
   * Return the elite pilote talent indicator.
   * 
   * @return the elite pilote talent indicator
   */
  public Boolean getTalent() {
    return this.talent;
  }

  /**
   * Define the elite pilote talent indicator.
   * 
   * @param talent
   *          the elite pilote talent indicator
   */
  public void setTalent(final Boolean talent) {
    this.talent = talent;
  }

  /**
   * Sets the entity data in the form.
   * 
   * @param entity
   *          the entity
   * @see AbstractEntityForm#setEntity(com.raf.xwing.jpa.domain.DomainDescriptionEntity)
   */
  @Override
  public void setEntity(final Pilot entity) {
    setEntityImpl(entity);
    setShipType(entity.getShipType().getId());
    setFaction(entity.getFaction().getId());
    setCost(Integer.valueOf(entity.getCost()));
    setLevel(Integer.valueOf(entity.getLevel()));
    setUniqueness(Boolean.valueOf(entity.isUniqueness()));
    if (entity.getUpgradeType() == null) {
      setTalent(Boolean.FALSE);
    } else {
      setTalent(Boolean.TRUE);
    }
  }

  /**
   * Return the entity with the form data.
   * 
   * @return the entity
   * @see com.raf.xwing.web.form.AbstractEntityForm#getEntity()
   */
  @Override
  public void getEntity(final Pilot entity) {
    getEntityImpl(entity);
    entity.setCost(getCost().intValue());
    entity.setLevel(getLevel().intValue());
    entity.setUniqueness(Boolean.TRUE.equals(getUniqueness()));
  }

}
