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
public class UpgradeExpansionPk implements Serializable {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The identifier for the upgrade. */
  @Column(name = "UPGRADE_ID")
  private Integer upgrade;

  /** The identifier for the expansion. */
  @Column(name = "EXPANSION_ID")
  private Integer expansion;

  /**
   * constructor.
   */
  public UpgradeExpansionPk() {
    super();
  }

  /**
   * @return the upgrade
   */
  public final Integer getUpgrade() {
    return this.upgrade;
  }

  /**
   * @param upgrade
   *          the upgrade to set
   */
  public final void setUpgrade(final Integer upgrade) {
    this.upgrade = upgrade;
  }

  /**
   * @return the expansion
   */
  public final Integer getExpansion() {
    return this.expansion;
  }

  /**
   * @param expansion
   *          the expansion to set
   */
  public final void setExpansion(final Integer expansion) {
    this.expansion = expansion;
  }

  /**
   * @see java.lang.Object#hashCode()
   */
  @Override
  public final int hashCode() {
    return new HashCodeBuilder(17, 37).append(this.upgrade).append(this.expansion).toHashCode();
  }

  /**
   * @see java.lang.Object#equals(java.lang.Object)
   */
  @Override
  public final boolean equals(final Object obj) {
    boolean equals;
    if (this == obj) {
      equals = true;
    } else {
      if (obj != null && getClass().equals(obj.getClass())) {
        final UpgradeExpansionPk other = (UpgradeExpansionPk) obj;
        equals = new EqualsBuilder().append(this.upgrade, other.upgrade).append(this.expansion, other.expansion)
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
