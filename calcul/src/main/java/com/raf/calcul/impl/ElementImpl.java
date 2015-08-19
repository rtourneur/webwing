package com.raf.calcul.impl;

import java.math.BigDecimal;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.raf.calcul.CategorieElement;
import com.raf.calcul.Element;

/**
 * L'élément d'un couple (implémentation).
 * 
 * @author RAF
 */
public final class ElementImpl implements Element {

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
  public ElementImpl() {
    super();
  }

  /**
   * Retourne l'identifiant.
   * 
   * @return l'identifiant
   * @see Element#getIdent()
   */
  @Override
  public String getIdent() {
    return this.ident;
  }

  /**
   * Définit l'identifiant.
   * 
   * @param ident
   *          l'identifiant
   * @see Element#setIdent(String)
   */
  @Override
  public void setIdent(final String ident) {
    this.ident = ident;
  }

  /**
   * Retourne la description.
   * 
   * @return la description
   * @see Element#getDesc()
   */
  @Override
  public String getDesc() {
    return this.desc;
  }

  /**
   * Définit la description.
   * 
   * @param desc
   *          la description
   * @see Element#setDesc(String)
   */
  @Override
  public void setDesc(final String desc) {
    this.desc = desc;
  }

  /**
   * Retourne la catégorie.
   * 
   * @return la catégorie
   * @see Element#getCategorie()
   */
  @Override
  public CategorieElement getCategorie() {
    return this.categorie;
  }

  /**
   * Définit la catégorie.
   * 
   * @param categorie
   *          la catégorie
   * @see Element#setCategorie(CategorieElement)
   */
  @Override
  public void setCategorie(final CategorieElement categorie) {
    this.categorie = categorie;
  }

  /**
   * Retourne les notations des éléments à associer.
   * 
   * @return les notations
   * @see Element#getNotations()
   */
  @Override
  public Map<Element, BigDecimal> getNotations() {
    return this.notations;
  }

  /**
   * Définit les notations des éléments à associer.
   * 
   * @param notations
   *          les notations.
   * @see Element#setNotations(Map)
   */
  @Override
  public void setNotations(final Map<Element, BigDecimal> notations) {
    this.notations = notations;
  }

  /**
   * Génère le toString.
   * 
   * @see Object#toString()
   */
  @Override
  public String toString() {
    return ToStringBuilder.reflectionToString(this);
  }

}
