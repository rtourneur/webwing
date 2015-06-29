package com.raf.xwing.jpa.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

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

}
