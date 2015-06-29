package com.raf.xwing.web.form.card;

import com.raf.xwing.web.form.AbstractSearchListForm;

/**
 * Upgrade list form.
 * 
 * @author RAF
 */
public class UpgradeListForm extends AbstractSearchListForm {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The form name. */
  public static final String FORM_NAME = "upgradeListForm";

  /** The upgrade type. */
  private String type;

  /**
   * Constructor.
   */
  public UpgradeListForm() {
    super();
  }

  /**
   * Return the upgrade type.
   * 
   * @return the upgrade type
   */
  public final String getType() {
    return this.type;
  }

  /**
   * Define the upgrade type.
   * 
   * @param type
   *          the upgrade type
   */
  public final void setType(final String type) {
    this.type = type;
  }

}
