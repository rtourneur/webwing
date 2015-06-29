package com.raf.xwing.jpa.domain;

import java.io.Serializable;

/**
 * Interface for Domain entities.
 *
 * @param <I>
 *          the serializable ID.
 * @author RAF
 */
public interface DomainNamedEntity<I extends Serializable> extends DomainEntity<I> {

  /**
   * Return the name.
   *
   * @return the name
   */
  String getName();

  /**
   * Define the name.
   *
   * @param name
   *          the name to set
   */
  void setName(String name);

}
