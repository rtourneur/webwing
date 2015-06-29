package com.raf.xwing.jpa.domain.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.raf.xwing.jpa.domain.AbstractDescriptionEntity;

/**
 * The domain class for the FACTION table.
 *
 * @author RAF
 */
@Entity
@Table(name = "FACTION", schema = "XWING")
public class Faction extends AbstractDescriptionEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();
  
  static {
    FIELDS.add("name");
  }

  /**
   * Constructor.
   */
  public Faction() {
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

}
