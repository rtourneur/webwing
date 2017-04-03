package com.raf.xwing.jpa.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * Abstract super class for domain entities.
 *
 * @param <I>
 *          the identifier
 *
 * @author RAF
 *
 */
@MappedSuperclass
public abstract class AbstractNamedEntity<I extends Serializable> extends AbstractEntity<I> implements
    DomainNamedEntity<I> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The name. */
  @Column(name = "NAME", nullable = false, length = 30)
  private String name;

  /**
   * Constructor.
   */
  public AbstractNamedEntity() {
    super();
  }

  /**
   * Return the name.
   *
   * @return the name
   */
  @Override
  public final String getName() {
    return this.name;
  }

  /**
   * Define the name.
   *
   * @param name
   *          the name to set
   */
  @Override
  public final void setName(final String name) {
    this.name = name;
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
    builder.append("name", getName());
    appendName(builder);
  }

  /**
   * Append the properties for the to string builder.
   * 
   * @param builder
   *          the builder
   */
  protected void appendName(final ToStringBuilder builder) {
    // RAS
  }
}
