package com.raf.xwing.jpa.domain.model;

import static javax.persistence.FetchType.EAGER;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.raf.xwing.jpa.domain.AbstractEntity;

/**
 * The domain class for the RESTRICTION table.
 *
 * @author RAF
 */
@Entity
@Table(name = "RESTRICTION", schema = "XWING")
public class Restriction extends AbstractEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();

  /** The restriction type. */
  @ManyToOne
  @JoinColumn(name = "RESTRICTION_TYPE_ID", referencedColumnName = "ID")
  private RestrictionType restrictionType;

  /** The list of ship type. */
  @ManyToMany(fetch = EAGER)
  @JoinTable(name = "RESTRICTION_SHIP_TYPE", schema = "XWING", joinColumns = @JoinColumn(name = "RESTRICTION_ID", referencedColumnName = "ID"), inverseJoinColumns = @JoinColumn(name = "SHIP_TYPE_ID", referencedColumnName = "ID"))
  @Fetch(FetchMode.SUBSELECT)
  private List<ShipType> shipTypes;

  /** The ship size. */
  @ManyToOne(optional = true)
  @JoinColumn(name = "SHIP_SIZE_ID", referencedColumnName = "ID")
  private ShipSize shipSize;

  /** The faction. */
  @ManyToOne(optional = true)
  @JoinColumn(name = "FACTION_ID", referencedColumnName = "ID")
  private Faction faction;

  static {
    FIELDS.add("restrictionType");
  }

  /**
   * Constructor.
   */
  public Restriction() {
    super();
  }

  /**
   * Returns the serializable ID of domain entity.
   *
   * @return the ID
   * @see AbstractEntity#getId()
   */
  @Override
  public final Integer getId() {
    return getIdent();
  }

  /**
   * Return the restriction type.
   * 
   * @return the restriction type
   */
  public final RestrictionType getRestrictionType() {
    return this.restrictionType;
  }

  /**
   * Define the restriction type.
   * 
   * @param restrictionType
   *          the restriction type
   */
  public final void setRestrictionType(final RestrictionType restrictionType) {
    this.restrictionType = restrictionType;
  }

  /**
   * Return the list of ship type.
   * 
   * @return the list of ship type
   */
  public final List<ShipType> getShipTypes() {
    return this.shipTypes;
  }

  /**
   * Define the list of ship type.
   * 
   * @param shipTypes
   *          the list of ship type
   */
  public final void setShipTypes(final List<ShipType> shipTypes) {
    this.shipTypes = shipTypes;
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
   * Append the properties for the to string builder.
   * 
   * @param builder
   *          the builder
   * @see AbstractEntity#append(ToStringBuilder)
   */
  @Override
  protected final void append(final ToStringBuilder builder) {
    if (this.restrictionType != null && RestrictionType.class.equals(this.restrictionType.getClass())) {
      builder.append("restrictionType", this.restrictionType);
    }
  }

}
