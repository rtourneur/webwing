package com.raf.xwing.jpa.domain.model;

import static javax.persistence.FetchType.EAGER;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.raf.xwing.jpa.domain.AbstractNamedEntity;

/**
 * The domain class for the SHIP_TYPE table.
 *
 * @author RAF
 */
@Entity
@Table(name = "SHIP_TYPE", schema = "XWING")
public class ShipType extends AbstractNamedEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();

  /** The primary weapon value. */
  @Column(name = "PRIMARY_WEAPON", nullable = false)
  private int primaryWeapon;

  /** The agility value. */
  @Column(name = "AGILITY", nullable = false)
  private int agility;

  /** The hull value. */
  @Column(name = "HULL", nullable = false)
  private int hull;

  /** The shield value. */
  @Column(name = "SHIELD", nullable = false)
  private int shield;

  /** The energie value. */
  @Column(name = "ENERGY", nullable = false)
  private int energy;

  /** The ship size. */
  @ManyToOne(fetch = EAGER)
  @JoinColumn(name = "SHIP_SIZE_ID", referencedColumnName = "ID")
  private ShipSize shipSize;

  /** The icon name. */
  @Column(name = "ICON", nullable = false)
  private String icon;

  /** The list of actions. */
  @ManyToMany(fetch = EAGER)
  @JoinTable(name = "SHIP_ACTION", schema = "XWING", joinColumns = @JoinColumn(name = "SHIP_TYPE_ID", referencedColumnName = "ID"), inverseJoinColumns = @JoinColumn(name = "ACTION_TYPE_ID", referencedColumnName = "ID"))
  @Fetch(FetchMode.SUBSELECT)
  private List<ActionType> actions;

  /** The list of upgrades. */
  @OneToMany(fetch = EAGER)
  @JoinColumn(name = "ship_type_id", referencedColumnName = "ID")
  @Fetch(FetchMode.SUBSELECT)
  private List<ShipUpgrade> upgrades;

  /** The dial. */
  @OneToMany(fetch = EAGER)
  @JoinColumn(name = "ship_type_id", referencedColumnName = "ID")
  @Fetch(FetchMode.SUBSELECT)
  private List<Dial> dials;

  static {
    FIELDS.add("name");
    FIELDS.add("primaryWeapon");
    FIELDS.add("agility");
    FIELDS.add("upgradeType");
  }

  /**
   * Constructor.
   */
  public ShipType() {
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
   * Returns the primary weapon value.
   * 
   * @return the primary weapon
   */
  public final int getPrimaryWeapon() {
    return this.primaryWeapon;
  }

  /**
   * Define the primary weapon value.
   * 
   * @param primaryWeapon
   *          the primary weapon
   */
  public final void setPrimaryWeapon(final int primaryWeapon) {
    this.primaryWeapon = primaryWeapon;
  }

  /**
   * Return the agility value.
   * 
   * @return the agility
   */
  public final int getAgility() {
    return this.agility;
  }

  /**
   * Define the agility value.
   * 
   * @param agility
   *          the agility
   */
  public final void setAgility(final int agility) {
    this.agility = agility;
  }

  /**
   * Return the hull value.
   * 
   * @return the hull
   */
  public final int getHull() {
    return this.hull;
  }

  /**
   * Define the hull value.
   * 
   * @param hull
   *          the hull
   */
  public final void setHull(final int hull) {
    this.hull = hull;
  }

  /**
   * Return the shield value.
   * 
   * @return the shield
   */
  public final int getShield() {
    return this.shield;
  }

  /**
   * Define the shield value.
   * 
   * @param shield
   *          the shield
   */
  public final void setShield(final int shield) {
    this.shield = shield;
  }

  /**
   * Return the energie value.
   * 
   * @return the energy
   */
  public final int getEnergy() {
    return this.energy;
  }

  /**
   * Define the energie value.
   * 
   * @param energy
   *          the energy
   */
  public final void setEnergy(final int energy) {
    this.energy = energy;
  }

  /**
   * Return the ship size.
   * 
   * @return the ship size
   */
  public final ShipSize getShipSize() {
    return this.shipSize;
  }

  /**
   * Define the ship size.
   * 
   * @param shipSize
   *          the ship size
   */
  public final void setShipSize(final ShipSize shipSize) {
    this.shipSize = shipSize;
  }

  /**
   * Return the icon name.
   * 
   * @return the icon
   */
  public final String getIcon() {
    return this.icon;
  }

  /**
   * Define the icon name.
   * 
   * @param icon
   *          the icon
   */
  public final void setIcon(final String icon) {
    this.icon = icon;
  }

  /**
   * Return the list of actions.
   * 
   * @return the list of actions
   */
  public final List<ActionType> getActions() {
    return this.actions;
  }

  /**
   * Define the list of actions.
   * 
   * @param actions
   *          the list of actions
   */
  public final void setActions(final List<ActionType> actions) {
    this.actions = actions;
  }

  /**
   * Return the list of upgrades.
   * 
   * @return the list of upgrades
   */
  public final List<ShipUpgrade> getUpgrades() {
    return this.upgrades;
  }

  /**
   * Define the list of upgrades.
   * 
   * @param upgrades
   *          the list of upgrades
   */
  public final void setUpgrades(final List<ShipUpgrade> upgrades) {
    this.upgrades = upgrades;
  }

  /**
   * Return the dial.
   * 
   * @return the dial
   */
  public final List<Dial> getDials() {
    return this.dials;
  }

  /**
   * Define the dial.
   * 
   * @param dials
   *          the dial
   */
  public final void setDials(final List<Dial> dials) {
    this.dials = dials;
  }

}
