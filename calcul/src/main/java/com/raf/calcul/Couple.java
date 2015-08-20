package com.raf.calcul;

/**
 * Le couple.
 * 
 * @param <C>
 *          le critère de notation
 * @author RAF
 */
public interface Couple<C extends Notation<C>> {

  /**
   * Retourne l'élément primaire.
   * 
   * @return l'élément primaire
   */
  Element<C> getPrimary();

  /**
   * Définit l'élément primaire.
   * 
   * @param primary
   *          l'élément primaire
   */
  void setPrimary(Element<C> primary);

  /**
   * Retourne l'élément secondaire.
   * 
   * @return l'élément secondaire
   */
  Element<C> getSecondary();

  /**
   * Définit l'élément secondaire.
   * 
   * @param secondary
   *          l'élément secondaire
   */
  void setSecondary(Element<C> secondary);

  /**
   * Retourne la notation de l'élément primaire.
   * 
   * @return la notation de l'élément primaire
   */
  C getPrimaryNote();

  /**
   * Définit la notation de l'élément primaire.
   * 
   * @param la
   *          notation de l'élément primaire
   */
  void setPrimaryNote(C primaryNote);

  /**
   * Retourne la notation de l'élément secondaire.
   * 
   * @return la notation de l'élément secondaire
   */
  C getSecondaryNote();

  /**
   * Définit la notation de l'élément secondaire.
   * 
   * @param secondaryNote
   *          la notation de l'élément secondaire
   */
  void setSecondaryNote(C secondaryNote);

}
