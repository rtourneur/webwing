package com.raf.calcul.impl;

import java.math.BigDecimal;

import com.raf.calcul.Notation;

/**
 * La notation (implémentation).
 * 
 * @author RAF
 *
 */
public final class NotationImpl implements Notation<NotationImpl> {

  /** la note. */
  private final BigDecimal note;

  /**
   * Constructeur.
   * 
   * @param note
   *          la note
   */
  public NotationImpl(final BigDecimal note) {
    this.note = note;
  }

  /**
   * Compare les notations : compare les notes des notations.
   * 
   * @param notation
   *          la notation à comparer
   * @return le résultat de la comparaison
   * @see Comparable#compareTo(Object)
   */
  @Override
  public int compareTo(final NotationImpl notation) {
    return this.note.compareTo(notation.note);
  }

  /**
   * Ajoute la note de la notation.
   * 
   * @param notation
   *          la notation
   * @see Notation#add(Object)
   */
  @Override
  public NotationImpl add(final NotationImpl notation) {
    return new NotationImpl(this.note.add(notation.note));

  }

  /**
   * Multiplie la note par la note de la notation.
   * 
   * @param notation
   *          la notation
   * @see Notation#multiply(Object)
   */
  @Override
  public NotationImpl multiply(final NotationImpl notation) {
    return new NotationImpl(this.note.multiply(notation.note));

  }

  /**
   * Représente la note.
   * 
   * @return la note de la notation
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return this.note.toString();
  }

}
