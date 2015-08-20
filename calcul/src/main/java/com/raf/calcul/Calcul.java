package com.raf.calcul;

import java.util.List;

/**
 * Le calcul.
 * 
 * @param <C>
 *          le critère de notation
 * @author RAF
 */
public interface Calcul<C extends Notation<C>> {

  /**
   * Retourne le nombre de couples à traiter.
   * 
   * @return le nombre de couples
   */
  int getNbCouples();

  /**
   * Définit le nombre de couples à traiter.
   * 
   * @param nbCouples
   *          le nombre de couples
   */
  void setNbCouples(int nbCouples);

  /**
   * Retourne la liste des éléments primaires.
   * 
   * @return la liste des éléments primaires
   */
  List<Element<C>> getPrimary();

  /**
   * Définit la liste des éléments primaires.
   * 
   * @param primary
   *          la liste des éléments primaires
   */
  void setPrimary(List<Element<C>> primary);

  /**
   * Retourne la liste des éléments secondaires.
   * 
   * @return la liste des éléments secondaires
   */
  List<Element<C>> getSecondary();

  /**
   * Définit la liste des éléments secondaires.
   * 
   * @param secondary
   *          la liste des éléments secondaires
   */
  void setSecondary(List<Element<C>> secondary);

  /**
   * Effectue le traitement.
   */
  void traitement();

}
