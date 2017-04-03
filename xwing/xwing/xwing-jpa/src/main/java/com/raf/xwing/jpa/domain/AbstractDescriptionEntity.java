package com.raf.xwing.jpa.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * Abstract super class for domain entities.
 * 
 * @param <I> the identifier
 * @author RAF
 */
@MappedSuperclass
public abstract class AbstractDescriptionEntity<I extends Serializable> extends AbstractNamedEntity<I> implements
    DomainDescriptionEntity<I> {
  
  /** Serial UID. */
  private static final long serialVersionUID = 1L;
  
  /** The description. */
  @Column(name = "DESCRIPTION", nullable = false, length = 255)
  private String description;
  
  /**
   * Constructor.
   */
  public AbstractDescriptionEntity() {
    super();
  }
  
  /**
   * Return the description.
   * 
   * @return the description
   */
  @Override
  public final String getDescription() {
    return this.description;
  }
  
  /**
   * Define the description.
   * 
   * @param description the description to set
   */
  @Override
  public final void setDescription(final String description) {
    this.description = description;
  }
  
  /**
   * Append the properties for the to string builder.
   * 
   * @param builder the builder
   * @see AbstractNamedEntity#appendName(ToStringBuilder)
   */
  @Override
  protected final void appendName(final ToStringBuilder builder) {
    builder.append("description", this.description);
    appendDescription(builder);
  }
  
  /**
   * Append the properties for the to string builder.
   * 
   * @param builder the builder
   */
  protected void appendDescription(final ToStringBuilder builder) {
    // RAS
  }
  
}
