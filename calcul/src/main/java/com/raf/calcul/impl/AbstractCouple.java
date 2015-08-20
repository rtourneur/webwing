package com.raf.calcul.impl;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.raf.calcul.Couple;
import com.raf.calcul.Element;
import com.raf.calcul.Notation;

/**
 * Classe abstraite pour l'implémentation d'un {@link Couple}.
 * 
 * @param <C>
 *          le critère de notation
 * @author RAF
 */
public abstract class AbstractCouple<C extends Notation<C>> implements Couple<C> {

  /** L'élément primaire. */
  private Element<C> primary;
  /** L'élément secondaire. */
  private Element<C> secondary;
  /** La notation de l'élément primaire. */
  private C primaryNote;
  /** La notation de l'élément secondaire. */
  private C secondaryNote;

  /**
   * Constructeur.
   */
  protected AbstractCouple() {
    super();
  }

  /**
   * Retourne l'élément primaire.
   * 
   * @return l'élément primaire
   * @see Couple#getPrimary()
   */
  @Override
  public final Element<C> getPrimary() {
    return this.primary;
  }

  /**
   * Définit l'élément primaire.
   * 
   * @param primary
   *          l'élément primaire
   * @see Couple#setPrimary(Element)
   */
  @Override
  public final void setPrimary(final Element<C> primary) {
    this.primary = primary;
  }

  /**
   * Retourne l'élément secondaire.
   * 
   * @return l'élément secondaire
   * @see Couple#getSecondary()
   */
  @Override
  public final Element<C> getSecondary() {
    return this.secondary;
  }

  /**
   * Définit l'élément secondaire.
   * 
   * @param secondary
   *          l'élément secondaire
   * @see Couple#setSecondary(Element)
   */
  @Override
  public final void setSecondary(final Element<C> secondary) {
    this.secondary = secondary;
  }

  /**
   * Retourne la notation de l'élément primaire.
   * 
   * @return la notation de l'élément primaire
   * @see Couple#getPrimaryNote()
   */
  @Override
  public final C getPrimaryNote() {
    return this.primaryNote;
  }

  /**
   * Définit la notation de l'élément primaire.
   * 
   * @param la
   *          notation de l'élément primaire
   * @see Couple#setPrimaryNote(C)
   */
  @Override
  public final void setPrimaryNote(final C primaryNote) {
    this.primaryNote = primaryNote;
  }

  /**
   * Retourne la notation de l'élément secondaire.
   * 
   * @return la notation de l'élément secondaire
   * @see Couple#getSecondaryNote()
   */
  @Override
  public final C getSecondaryNote() {
    return this.secondaryNote;
  }

  /**
   * Définit la notation de l'élément secondaire.
   * 
   * @param secondaryNote
   *          la notation de l'élément secondaire
   * @see Couple#setSecondaryNote(C)
   */
  @Override
  public final void setSecondaryNote(final C secondaryNote) {
    this.secondaryNote = secondaryNote;
  }

  /**
   * Génère le toString.
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public final String toString() {
    return ToStringBuilder.reflectionToString(this);
  }

}
