package com.raf.xwing.jpa.domain.card;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.jpa.domain.model.Expansion;

/**
 * The domain class for the UPGRADE_EXPANSION table.
 *
 * @author RAF
 */
@Entity
@Table(name = "PILOT_EXPANSION", schema = "XWING")
public class PilotExpansion implements DomainEntity<PilotExpansionPk> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The id class. */
  @EmbeddedId
  private PilotExpansionPk ident;

  /** The quantity of pilot in the expansion. */
  @Column(name = "QUANTITY", nullable = false)
  private int quantity;

  /** The expansion. */
  @MapsId("expansion")
  @ManyToOne
  @JoinColumn(name = "EXPANSION_ID", referencedColumnName = "ID")
  private Expansion expansion;

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
  public final PilotExpansionPk getId() {
    return getIdent();
  }

  /**
   * Return the identifier.
   *
   * @return the identifier
   */
  public final PilotExpansionPk getIdent() {
    return this.ident;
  }

  /**
   * Define the identifier.
   *
   * @param ident
   *          the identifier to set
   */
  @Override
  public final void setIdent(final PilotExpansionPk ident) {
    this.ident = ident;
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
   * Generate the toString.
   *
   * @see java.lang.Object#toString()
   */
  @Override
  public final String toString() {
    return ToStringBuilder.reflectionToString(this);
  }
}
