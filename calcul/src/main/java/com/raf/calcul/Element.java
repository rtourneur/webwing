package com.raf.calcul;

import java.math.BigDecimal;
import java.util.Map;

/**
 * L'élément d'un couple.
 * 
 * @author RAF
 */
public interface Element {

  /**
   * Retourne l'identifiant.
   * 
   * @return l'identifiant
   */
  String getIdent();

  /**
   * Définit l'identifiant.
   * 
   * @param ident
   *          l'identifiant
   */
  void setIdent(String ident);

  /**
   * Retourne la description.
   * 
   * @return la description
   */
  String getDesc();

  /**
   * Définit la description.
   * 
   * @param desc
   *          la description
   */
  void setDesc(String desc);

  /**
   * Retourne la catégorie.
   * 
   * @return la catégorie
   */
  CategorieElement getCategorie();

  /**
   * Définit la catégorie.
   * 
   * @param categorie
   *          la catégorie
   */
  void setCategorie(CategorieElement categorie);

  /**
   * Retourne les notations des éléments à associer.
   * 
   * @return les notations
   */
  Map<Element, BigDecimal> getNotations();

  /**
   * Définit les notations des éléments à associer.
   * 
   * @param notations
   *          les notations.
   */
  void setNotations(Map<Element, BigDecimal> notations);

}
