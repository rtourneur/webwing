package com.raf.calcul.impl;

import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.raf.calcul.CategorieElement;
import com.raf.calcul.Element;
import com.raf.calcul.Notation;

/**
 * Classe abstraite pour l'implémentation d'un {@link Element}.
 * 
 * @param <C>
 *          le critère de notation
 * @author RAF
 */
public abstract class AbstractElement<C extends Notation<C>> implements Element<C> {

  /** L'identifiant. */
  private String ident;

  /** La description. */
  private String desc;

  /** La catégorie. */
  private CategorieElement categorie;

  /** Les notations des éléments à associer. */
  private Map<Element<C>, C> notations;

  /**
   * Constructeur.
   */
  protected AbstractElement() {
    super();
  }

  /**
   * Retourne l'identifiant.
   * 
   * @return l'identifiant
   * @see Element#getIdent()
   */
  @Override
  public final String getIdent() {
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
  public final void setIdent(final String ident) {
    this.ident = ident;
  }

  /**
   * Retourne la description.
   * 
   * @return la description
   * @see Element#getDesc()
   */
  @Override
  public final String getDesc() {
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
  public final void setDesc(final String desc) {
    this.desc = desc;
  }

  /**
   * Retourne la catégorie.
   * 
   * @return la catégorie
   * @see Element#getCategorie()
   */
  @Override
  public final CategorieElement getCategorie() {
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
  public final void setCategorie(final CategorieElement categorie) {
    this.categorie = categorie;
  }

  /**
   * Retourne les notations des éléments à associer.
   * 
   * @return les notations
   * @see Element#getNotations()
   */
  @Override
  public final Map<Element<C>, C> getNotations() {
    return this.notations;
  }

  /**
   * Définit les notations des éléments à associer.
   * 
   * @param notationsElt
   *          les notations.
   * @see Element#initNotations(Map)
   */
  @Override
  public final void initNotations(final Map<Element<C>, C> notationsElt) {
    this.notations = notationsElt;
  }

  /**
   * Génère le toString.
   * 
   * @see Object#toString()
   */
  @Override
  public final String toString() {
    return ToStringBuilder.reflectionToString(this);
  }

}
