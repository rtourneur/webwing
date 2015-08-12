package com.raf.calcul;

import java.math.BigDecimal;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * L'élément d'un couple.
 * 
 * @author RAF
 *
 */
public final class Element {

  /** L'identifiant. */
  private String ident;

  /** La description. */
  private String desc;

  /** La catégorie. */
  private CategorieElement categorie;

  /** Les notations des éléments à associer. */
  private Map<Element, BigDecimal> notations;

  /**
   * Constructeur.
   */
  public Element() {
    super();
  }

  /**
   * Retourne l'identifiant.
   * 
   * @return l'identifiant
   */
  public String getIdent() {
    return this.ident;
  }

  /**
   * Définit l'identifiant.
   * 
   * @param ident
   *          l'identifiant
   */
  public void setIdent(final String ident) {
    this.ident = ident;
  }

  /**
   * Retourne la description.
   * 
   * @return la description
   */
  public String getDesc() {
    return this.desc;
  }

  /**
   * Définit la description.
   * 
   * @param desc
   *          la description
   */
  public void setDesc(final String desc) {
    this.desc = desc;
  }

  /**
   * Retourne la catégorie.
   * 
   * @return la catégorie
   */
  public CategorieElement getCategorie() {
    return this.categorie;
  }

  /**
   * Définit la catégorie.
   * 
   * @param categorie
   *          la catégorie
   */
  public void setCategorie(final CategorieElement categorie) {
    this.categorie = categorie;
  }

  /**
   * Retourne les notations des éléments à associer.
   * 
   * @return les notations
   */
  public Map<Element, BigDecimal> getNotations() {
    return this.notations;
  }

  /**
   * Définit les notations des éléments à associer.
   * 
   * @param notations
   *          les notations.
   */
  public void setNotations(final Map<Element, BigDecimal> notations) {
    this.notations = notations;
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
