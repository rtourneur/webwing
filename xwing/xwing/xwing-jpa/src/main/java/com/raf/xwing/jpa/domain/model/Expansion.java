package com.raf.xwing.jpa.domain.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.raf.xwing.jpa.domain.AbstractDescriptionEntity;

/**
 * The domain class for the EXPANSION table.
 *
 * @author RAF
 */
@Entity
@Table(name = "EXPANSION", schema = "XWING")
public class Expansion extends AbstractDescriptionEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();

  /** The wave. */
  @Column(name = "WAVE")
  private String wave;

  /** The cost. */
  @Column(name = "COST")
  private BigDecimal cost;

  static {
    FIELDS.add("name");
    FIELDS.add("wave");
  }

  /**
   * Constructor.
   */
  public Expansion() {
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

  /**
   * Return the wave.
   * 
   * @return the wave
   */
  public final String getWave() {
    return this.wave;
  }

  /**
   * Define the wave.
   * 
   * @param wave
   *          the wave
   */
  public final void setWave(final String wave) {
    this.wave = wave;
  }

  /**
   * Return the cost.
   * 
   * @return the cost
   */
  public final BigDecimal getCost() {
    return this.cost;
  }

  /**
   * Define the cost.
   * 
   * @param cost
   *          the cost
   */
  public final void setCost(final BigDecimal cost) {
    this.cost = cost;
  }

}
