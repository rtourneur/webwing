package com.raf.xwing.jpa.domain.card;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.raf.xwing.jpa.domain.AbstractEntity;
import com.raf.xwing.jpa.domain.model.Expansion;

/**
 * The domain class for the UPGRADE_EXPANSION table.
 *
 * @author RAF
 */
@Entity
@Table(name = "UPGRADE_EXPANSION", schema = "XWING")
public class UpgradeExpansion extends AbstractEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The upgrade. */
  @ManyToOne
  @JoinColumn(name = "UPGRADE_ID", referencedColumnName = "ID")
  private Upgrade upgrade;

  /** The expansion. */
  @ManyToOne
  @JoinColumn(name = "EXPANSION_ID", referencedColumnName = "ID")
  private Expansion expansion;

  /** The quantity of upgrade in the expansion. */
  @Column(name = "QUANTITY", nullable = false)
  private int quantity;

  /**
   * Constructor.
   */
  public UpgradeExpansion() {
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
   * Return the upgrade.
   * 
   * @return the upgrade
   */
  public final Upgrade getUpgrade() {
    return this.upgrade;
  }

  /**
   * Define the upgrade.
   * 
   * @param upgrade
   *          the upgrade
   */
  public final void setUpgrade(final Upgrade upgrade) {
    this.upgrade = upgrade;
  }

  /**
   * Return the expansion.
   * 
   * @return the expansion
   */
  public final Expansion getExpansion() {
    return this.expansion;
  }

  /**
   * Define the expansion.
   * 
   * @param expansion
   *          the expansion
   */
  public final void setExpansion(final Expansion expansion) {
    this.expansion = expansion;
  }

  /**
   * Return the quantity of upgrade in the expansion.
   * 
   * @return the quantity
   */
  public final int getQuantity() {
    return this.quantity;
  }

  /**
   * Define the quantity of upgrade in the expansion.
   * 
   * @param quantity
   *          the quantity
   */
  public final void setQuantity(final int quantity) {
    this.quantity = quantity;
  }

}
