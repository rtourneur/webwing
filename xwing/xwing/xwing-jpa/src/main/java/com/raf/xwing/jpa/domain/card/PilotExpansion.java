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
@Table(name = "PILOT_EXPANSION", schema = "XWING")
public class PilotExpansion extends AbstractEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The pilot. */
  @ManyToOne
  @JoinColumn(name = "PILOT_ID", referencedColumnName = "ID")
  private Pilot pilot;

  /** The expansion. */
  @ManyToOne
  @JoinColumn(name = "EXPANSION_ID", referencedColumnName = "ID")
  private Expansion expansion;

  /** The quantity of pilot in the expansion. */
  @Column(name = "QUANTITY", nullable = false)
  private int quantity;

  /**
   * Constructor.
   */
  public PilotExpansion() {
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
   * Return the pilot.
   * 
   * @return the pilot
   */
  public final Pilot getPilot() {
    return this.pilot;
  }

  /**
   * Define the pilot.
   * 
   * @param pilot
   *          the pilot
   */
  public final void setPilot(final Pilot pilot) {
    this.pilot = pilot;
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
   * Return the quantity of pilot in the expansion.
   * 
   * @return the quantity
   */
  public final int getQuantity() {
    return this.quantity;
  }

  /**
   * Define the quantity of pilot in the expansion.
   * 
   * @param quantity
   *          the quantity
   */
  public final void setQuantity(final int quantity) {
    this.quantity = quantity;
  }

}
