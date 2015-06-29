package com.raf.xwing.web.form.card;

import com.raf.xwing.web.form.AbstractEditForm;

/**
 * Upgrade expansion form.
 * 
 * @author RAF
 */
public final class UpgradeExpansionForm extends AbstractEditForm {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The upgrade id. */
  private Integer ident;

  /** The expansion. */
  private Integer expansion;

  /** The previous expansion. */
  private Integer expansionOld;

  /** The quantity. */
  private Integer quantity;

  /**
   * Constructor.
   */
  public UpgradeExpansionForm() {
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
   * Return the expansion.
   * 
   * @return the expansion
   */
  public Integer getExpansion() {
    return this.expansion;
  }

  /**
   * Define the expansion.
   * 
   * @param expansion
   *          the expansion
   */
  public void setExpansion(final Integer restriction) {
    this.expansion = restriction;
  }

  /**
   * Return the previous expansion.
   * 
   * @return the previous expansion
   */
  public Integer getExpansionOld() {
    return this.expansionOld;
  }

  /**
   * Define the previous expansion.
   * 
   * @param expansionOld
   *          the previous expansion
   */
  public void setExpansionOld(final Integer restrictionOld) {
    this.expansionOld = restrictionOld;
  }

  /**
   * Return the quantity.
   * 
   * @return the quantity
   */
  public Integer getQuantity() {
    return this.quantity;
  }

  /**
   * Define the quantity.
   * 
   * @param quantity
   *          the quantity
   */
  public void setQuantity(final Integer quantity) {
    this.quantity = quantity;
  }

}
