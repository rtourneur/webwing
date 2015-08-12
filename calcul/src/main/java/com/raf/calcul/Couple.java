package com.raf.calcul;

import java.math.BigDecimal;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * Le couple d'éléments.
 * 
 * @author RAF.
 *
 */
public final class Couple {

  /** L'élément primaire. */
  private Element primary;

  /** L'élément secondaire. */
  private Element secondary;

  /** La notation de l'élément primaire. */
  private BigDecimal primaryNote;

  /** La notation de l'élément secondaire. */
  private BigDecimal secondaryNote;

  /**
   * Constructeur.
   */
  public Couple() {
    super();
  }

  /**
   * Retourne l'élément primaire.
   * 
   * @return l'élément primaire
   */
  public Element getPrimary() {
    return this.primary;
  }

  /**
   * Définit l'élément primaire.
   * 
   * @param primary
   *          l'élément primaire
   */
  public void setPrimary(final Element primary) {
    this.primary = primary;
  }

  /**
   * Retourne l'élément secondaire.
   * 
   * @return l'élément secondaire
   */
  public Element getSecondary() {
    return this.secondary;
  }

  /**
   * Définit l'élément secondaire.
   * 
   * @param secondary
   *          l'élément secondaire
   */
  public void setSecondary(final Element secondary) {
    this.secondary = secondary;
  }

  /**
   * Retourne la notation de l'élément primaire.
   * 
   * @return la notation de l'élément primaire
   */
  public BigDecimal getPrimaryNote() {
    return this.primaryNote;
  }

  /**
   * Définit la notation de l'élément primaire.
   * 
   * @param la
   *          notation de l'élément primaire
   */
  public void setPrimaryNote(final BigDecimal primaryNote) {
    this.primaryNote = primaryNote;
  }

  /**
   * Retourne la notation de l'élément secondaire.
   * 
   * @return la notation de l'élément secondaire
   */
  public BigDecimal getSecondaryNote() {
    return this.secondaryNote;
  }

  /**
   * Définit la notation de l'élément secondaire.
   * 
   * @param secondaryNote
   *          la notation de l'élément secondaire
   */
  public void setSecondaryNote(final BigDecimal secondaryNote) {
    this.secondaryNote = secondaryNote;
  }

  /**
   * Génère le toString.
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return ToStringBuilder.reflectionToString(this);
  }

}
