package com.raf.xwing.web.form;

import java.io.Serializable;

/**
 * Abstract form for edit request.
 * 
 * @author RAF
 */
public abstract class AbstractEditForm implements Serializable {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The edition mode. */
  private String mode;

  /**
   * Constructor.
   */
  public AbstractEditForm() {
    super();
  }

  /**
   * Return the edition mode.
   * 
   * @return the edition mode
   */
  public final String getMode() {
    return this.mode;
  }

  /**
   * Define the edition mode.
   * 
   * @param mode
   *          the edition mode
   */
  public final void setMode(final String mode) {
    this.mode = mode;
  }

}
