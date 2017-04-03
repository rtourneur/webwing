package com.raf.xwing.web.dto;

import java.io.Serializable;

/**
 * The Dial display object.
 * 
 * @author RAF
 *
 */
public final class DialDto implements Serializable {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The speed. */
  private int speed;

  /** The maneuvers. */
  private String[] maneuvers = new String[6];

  /**
   * Constructor.
   */
  public DialDto() {
    super();
  }

  /**
   * Return the speed.
   * 
   * @return the speed
   */
  public int getSpeed() {
    return this.speed;
  }

  /**
   * Define the speed.
   * 
   * @param speed
   *          the speed
   */
  public void setSpeed(final int speed) {
    this.speed = speed;
  }

  /**
   * Return the maneuvers.
   * 
   * @return the maneuvers
   */
  public String[] getManeuvers() {
    return this.maneuvers;
  }

  /**
   * Define the maneuvers.
   * 
   * @param maneuvers
   *          the maneuvers
   */
  public void setManeuvers(final String[] maneuvers) {
    this.maneuvers = maneuvers;
  }

}
