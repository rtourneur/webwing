package com.raf.xwing.jpa.domain.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * The primary key class for the SHIP_UPGRADE table.
 *
 * @author RAF
 */
@Embeddable
public class ShipUpgradePk implements Serializable {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The identifier for the ship type. */
  @Column(name = "SHIP_TYPE_ID")
  private Integer shipType;

  /** The identifier for the upgrade type. */
  @Column(name = "UPGRADE_TYPE_ID")
  private Integer upgradeType;

  /**
   * constructor.
   */
  public ShipUpgradePk() {
    super();
  }

  /**
   * Return the identifier for the ship type.
   * 
   * @return the identifier for the ship type
   */
  public final Integer getShipType() {
    return this.shipType;
  }

  /**
   * Define the identifier for the ship type.
   * 
   * @param shipType
   *          the identifier for the ship type
   */
  public final void setShipType(final Integer shipType) {
    this.shipType = shipType;
  }

  /**
   * Return the identifier for the upgrade type.
   * 
   * @return the identifier for the upgrade type
   */
  public final Integer getUpgradeType() {
    return this.upgradeType;
  }

  /**
   * Define the identifier for the upgrade type.
   * 
   * @param upgradeType
   *          the identifier for the upgrade type
   */
  public final void setUpgradeType(final Integer upgradeType) {
    this.upgradeType = upgradeType;
  }

  /**
   * Implementation for hashCode.
   * 
   * @see java.lang.Object#hashCode()
   */
  @Override
  public final int hashCode() {
    return new HashCodeBuilder().append(this.shipType).append(this.upgradeType).toHashCode();
  }

  /**
   * Implementation for equals.
   * 
   * @see java.lang.Object#equals(java.lang.Object)
   */
  @Override
  public final boolean equals(final Object obj) {
    boolean equals;
    if (this == obj) {
      equals = true;
    } else {
      if (obj != null && getClass().equals(obj.getClass())) {
        final ShipUpgradePk other = (ShipUpgradePk) obj;
        equals = new EqualsBuilder().append(this.shipType, other.shipType).append(this.upgradeType, other.upgradeType)
            .isEquals();
      } else {
        equals = false;
      }
    }
    return equals;
  }

  /**
   * Generate the toString.
   *
   * @see java.lang.Object#toString()
   */
  @Override
  public final String toString() {
    return ToStringBuilder.reflectionToString(this);
  }

}
