package com.raf.xwing.web.form.card;

import com.raf.xwing.web.form.AbstractEditForm;

/**
 * Upgrade restriction form.
 * 
 * @author RAF
 */
public final class UpgradeRestrictionForm extends AbstractEditForm {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The upgrade id. */
  private Integer ident;

  /** The restriction. */
  private Integer restriction;

  /** The previous restriction. */
  private Integer restrictionOld;

  /**
   * Constructor.
   */
  public UpgradeRestrictionForm() {
    super();
  }

  /**
   * Return the upgrade id.
   * 
   * @return the upgrade id
   */
  public Integer getIdent() {
    return this.ident;
  }

  /**
   * Define the upgrade id.
   * 
   * @param ident
   *          the upgrade id
   */
  public void setIdent(final Integer ident) {
    this.ident = ident;
  }

  /**
   * Return the restriction.
   * 
   * @return the restriction
   */
  public Integer getRestriction() {
    return this.restriction;
  }

  /**
   * Define the restriction.
   * 
   * @param restriction
   *          the restriction
   */
  public void setRestriction(final Integer restriction) {
    this.restriction = restriction;
  }

  /**
   * Return the previous restriction.
   * 
   * @return the previous restriction
   */
  public Integer getRestrictionOld() {
    return this.restrictionOld;
  }

  /**
   * Define the previous restriction.
   * 
   * @param restrictionOld
   *          the previous restriction
   */
  public void setRestrictionOld(final Integer restrictionOld) {
    this.restrictionOld = restrictionOld;
  }

}
