package com.raf.xwing.jpa.domain.card;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * The primary key class for the UPGRADE_EXPANSION table.
 *
 * @author RAF
 */
@Embeddable
public class PilotExpansionPk implements Serializable {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The identifier for the pilot. */
  @Column(name = "PILOT_ID")
  private Integer pilot;

  /** The identifier for the expansion. */
  @Column(name = "EXPANSION_ID")
  private Integer expansion;

  /**
   * constructor.
   */
  public PilotExpansionPk() {
    super();
  }

  /**
   * Return the pilot's identifier.
   *
   * @return the pilot's identifier
   */
  public final Integer getPilot() {
    return this.pilot;
  }

  /**
   * Set the pilot's identifier.
   *
   * @param pilot
   *          the pilot's identifier
   */
  public final void setPilot(final Integer pilot) {
    this.pilot = pilot;
  }

  /**
   * Return the expansion's identifier.
   *
   * @return the expansion's identifier
   */
  public final Integer getExpansion() {
    return this.expansion;
  }

  /**
   * Set the expansion's identifier.
   *
   * @param expansion
   *          the expansion's identifier
   */
  public final void setExpansion(final Integer expansion) {
    this.expansion = expansion;
  }

  /**
   * Computes the hashcode with the pilot identifier and expansion identifier.
   *
   * @see java.lang.Object#hashCode()
   */
  @Override
  public final int hashCode() {
    return new HashCodeBuilder(17, 37).append(this.pilot).append(this.expansion).toHashCode();
  }

  /**
   * Test equality with the pilot identifier and expansion identifier.
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
        final PilotExpansionPk other = (PilotExpansionPk) obj;
        equals = new EqualsBuilder().append(this.pilot, other.pilot).append(this.expansion, other.expansion).isEquals();
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
