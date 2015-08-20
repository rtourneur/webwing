package com.raf.calcul;

/**
 * L'interface de notation.
 * 
 * @param <T>
 *          la notation
 * @author RAF
 */
public interface Notation<T> extends Comparable<T> {

  /**
   * Retourne une nouvelle notation résultant de l'ajout de la note à la notation.
   * 
   * @param note
   *          la note
   * @return la nouvelle notation
   */
  T add(T note);

  /**
   * MRetourne une nouvelle notation résultant de la multiplication de la note à la notation.
   * 
   * @param note
   *          la note
   * @return la nouvelle notation
   */
  T multiply(T note);
}
