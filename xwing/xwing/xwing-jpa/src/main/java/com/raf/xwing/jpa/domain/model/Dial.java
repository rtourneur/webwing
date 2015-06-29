package com.raf.xwing.jpa.domain.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.raf.xwing.jpa.domain.AbstractEntity;

/**
 * The domain class for the DIAL table.
 *
 * @author RAF
 */
@Entity
@Table(name = "DIAL", schema = "XWING")
public class Dial extends AbstractEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The ship type. */
  @ManyToOne
  @JoinColumn(name = "SHIP_TYPE_ID", referencedColumnName = "ID")
  private ShipType shipType;

  /** The maneuver type. */
  @ManyToOne
  @JoinColumn(name = "MANEUVER_TYPE_ID", referencedColumnName = "ID")
  private ManeuverType maneuverType;

  /** The speed. */
  @Column(name = "SPEED")
  private int speed;

  /**
   * Constructor.
   */
  public Dial() {
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
   * Return the maneuver type.
   * 
   * @return the maneuver type
   */
  public final ManeuverType getManeuverType() {
    return this.maneuverType;
  }

  /**
   * Define the maneuver type.
   * 
   * @param maneuverType
   *          the maneuver type
   */
  public final void setManeuverType(final ManeuverType maneuverType) {
    this.maneuverType = maneuverType;
  }

  /**
   * Return the speed.
   * 
   * @return the speed
   */
  public final int getSpeed() {
    return this.speed;
  }

  /**
   * Define the speed.
   * 
   * @param speed
   *          the speed
   */
  public final void setSpeed(final int speed) {
    this.speed = speed;
  }

}
