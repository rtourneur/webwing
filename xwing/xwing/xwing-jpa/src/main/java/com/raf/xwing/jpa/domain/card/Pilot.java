package com.raf.xwing.jpa.domain.card;

import static javax.persistence.FetchType.EAGER;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.raf.xwing.jpa.domain.AbstractDescriptionEntity;
import com.raf.xwing.jpa.domain.model.Faction;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.jpa.domain.model.UpgradeType;

/**
 * The domain class for the PILOT table.
 *
 * @author RAF
 */
@Entity
@Table(name = "PILOT", schema = "XWING")
public class Pilot extends AbstractDescriptionEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();

  /** The pilot level. */
  @Column(name = "LEVEL", nullable = false, precision = 1)
  private int level;

  /** The cost. */
  @Column(name = "COST", nullable = false, precision = 2)
  private int cost;

  /** The uniqueness indicator. */
  @Column(name = "UNIQUENESS", nullable = false)
  private boolean uniqueness;

  /** The ship type. */
  @ManyToOne(fetch = EAGER)
  @JoinColumn(name = "SHIP_TYPE_ID", referencedColumnName = "ID")
  private ShipType shipType;

  /** The faction. */
  @ManyToOne(fetch = EAGER)
  @JoinColumn(name = "FACTION_ID", referencedColumnName = "ID")
  private Faction faction;

  /** The upgrade type if any. */
  @ManyToOne(fetch = EAGER)
  @JoinColumn(name = "UPGRADE_TYPE_ID", referencedColumnName = "ID")
  private UpgradeType upgradeType;

  /** The list of expansions. */
  @OneToMany(fetch = EAGER)
  @JoinColumn(name = "pilot_id", referencedColumnName = "ID")
  @Fetch(FetchMode.SUBSELECT)
  private List<PilotExpansion> expansions;

  static {
    FIELDS.add("name");
    FIELDS.add("shipType");
    FIELDS.add("expansion");
  }

  /**
   * constructor.
   */
  public Pilot() {
    super();
  }

  /**
   * Returns the serializable ID of domain entity.
   *
   * @return the ID
   * @see com.raf.xwing.jpa.domain.DomainEntity#getId()
   */
  @Override
  public final Integer getId() {
    return getIdent();
  }

  /**
   * Return the pilot level.
   * 
   * @return the pilot level
   */
  public final int getLevel() {
    return this.level;
  }

  /**
   * Define the pilot level.
   * 
   * @param level
   *          the pilot level
   */
  public final void setLevel(final int level) {
    this.level = level;
  }

  /**
   * Return the cost.
   * 
   * @return the cost
   */
  public final int getCost() {
    return this.cost;
  }

  /**
   * Define the cost.
   * 
   * @param cost
   *          the cost to set
   */
  public final void setCost(final int cost) {
    this.cost = cost;
  }

  /**
   * Return the uniqueness indicator.
   * 
   * @return the uniqueness indicator
   */
  public final boolean isUniqueness() {
    return this.uniqueness;
  }

  /**
   * Define the uniqueness indicator.
   * 
   * @param uniqueness
   *          the uniqueness indicator
   */
  public final void setUniqueness(final boolean uniqueness) {
    this.uniqueness = uniqueness;
  }

  /**
   * Return the ship type.
   * 
   * @return the ship type
   */
  public final ShipType getShipType() {
    return this.shipType;
  }

  /**
   * Define the ship type.
   * 
   * @param shipType
   *          the ship type
   */
  public final void setShipType(final ShipType shipType) {
    this.shipType = shipType;
  }

  /**
   * Return the faction.
   * 
   * @return the faction
   */
  public final Faction getFaction() {
    return this.faction;
  }

  /**
   * Define the faction.
   * 
   * @param faction
   *          the faction
   */
  public final void setFaction(final Faction faction) {
    this.faction = faction;
  }

  /**
   * Return the upgrade type if any.
   * 
   * @return the upgrade type
   */
  public final UpgradeType getUpgradeType() {
    return this.upgradeType;
  }

  /**
   * Define the upgrade type if any.
   * 
   * @param upgradeType
   *          the upgrade type
   */
  public final void setUpgradeType(final UpgradeType upgradeType) {
    this.upgradeType = upgradeType;
  }

  /**
   * Return the list of expansions.
   * 
   * @return the list of expansions
   */
  public final List<PilotExpansion> getExpansions() {
    return this.expansions;
  }

  /**
   * Define the list of expansions.
   * 
   * @param expansions
   *          the list of expansions
   */
  public final void setExpansions(final List<PilotExpansion> expansions) {
    this.expansions = expansions;
  }

}
