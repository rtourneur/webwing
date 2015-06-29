package com.raf.xwing.jpa.domain;

import java.io.Serializable;

/**
 * Interface for Domain entities.
 *
 * @param <I>
 *          the serializable ID.
 * @author RAF
 */
public interface DomainEntity<I extends Serializable> extends Serializable {

  /**
   * Returns the serializable ID of domain entity.
   *
   * @return the ID
   */
  I getId();

  /**
   * Define the identifier.
   *
   * @param ident
   *          the identifier to set
   */
  void setIdent(I ident);
}
