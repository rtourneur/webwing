package com.raf.xwing.jpa.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * Abstract super class for domain entities.
 *
 * @param <I>
 *          the identifier
 * @author RAF
 *
 */
@MappedSuperclass
public abstract class AbstractEntity<I extends Serializable> implements DomainEntity<I> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The identifier. */
  @Id
  @Column(name = "ID", unique = true, nullable = false)
  private I ident;

  /**
   * Constructor.
   */
  public AbstractEntity() {
    super();
  }

  /**
   * Return the identifier.
   *
   * @return the identifier
   */
  public final I getIdent() {
    return this.ident;
  }

  /**
   * Define the identifier.
   *
   * @param ident
   *          the identifier to set
   */
  @Override
  public final void setIdent(final I ident) {
    this.ident = ident;
  }

  /**
   * Computes the hashcode with the identifier.
   *
   * @see java.lang.Object#hashCode()
   */
  @Override
  public final int hashCode() {
    return new HashCodeBuilder(17, 37).append(this.ident).toHashCode();
  }

  /**
   * Test equality with the identifier.
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
        final DomainEntity<?> other = (DomainEntity<?>) obj;
        equals = new EqualsBuilder().append(this.ident, other.getId()).isEquals();
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
