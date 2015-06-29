package com.raf.xwing.jpa.domain.model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.raf.xwing.jpa.domain.DomainEntity;

/**
 * The domain class for the SHIP_UPGRADE table.
 *
 * @author RAF
 */
@Entity
@Table(name = "SHIP_UPGRADE", schema = "XWING")
public class ShipUpgrade implements DomainEntity<ShipUpgradePk> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The id class. */
  @EmbeddedId
  private ShipUpgradePk ident;

  /** The quantity of upgrade type. */
  @Column(name = "QUANTITY", nullable = false)
  private int quantity;

  /** The upgrade type. */
  @MapsId("upgradeType")
  @ManyToOne
  @JoinColumn(name = "UPGRADE_TYPE_ID", referencedColumnName = "ID")
  private UpgradeType upgradeType;

  /**
   * Constructor.
   */
  public ShipUpgrade() {
    super();
  }

  /**
   * Returns the serializable ID of domain entity.
   *
   * @return the ID
   * @see com.raf.xwing.jpa.domain.DomainEntity#getId()
   */
  @Override
  public final ShipUpgradePk getId() {
    return getIdent();
  }

  /**
   * Return the identifier.
   *
   * @return the identifier
   */
  public final ShipUpgradePk getIdent() {
    return this.ident;
  }

  /**
   * Define the identifier.
   *
   * @param ident
   *          the identifier to set
   */
  @Override
  public final void setIdent(final ShipUpgradePk ident) {
    this.ident = ident;
  }

  /**
   * Return the quantity of upgrade type.
   * 
   * @return the quantity
   */
  public final int getQuantity() {
    return this.quantity;
  }

  /**
   * Define the quantity of upgrade type.
   * 
   * @param quantity
   *          the quantity to set
   */
  public final void setQuantity(final int quantity) {
    this.quantity = quantity;
  }

  /**
   * Return tue upgrade type.
   * 
   * @return the upgrade type
   */
  public final UpgradeType getUpgradeType() {
    return this.upgradeType;
  }

  /**
   * DEfine the upgrade type.
   * 
   * @param upgradeType
   *          the upgrade type
   */
  public final void setUpgradeType(final UpgradeType upgradeType) {
    this.upgradeType = upgradeType;
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
