package com.raf.xwing.web.form.admin;

import com.raf.xwing.web.form.AbstractSearchListForm;

/**
 * Expansion list form.
 * 
 * @author RAF
 *
 */
public class ExpansionListForm extends AbstractSearchListForm {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;
  
  /** The form name. */
  public static final String FORM_NAME = "expansionListForm";

  /** The wave. */
  private String wave;

  /**
   * Constructor.
   */
  public ExpansionListForm() {
    super();
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

}
