package com.raf.calcul.impl;

import java.math.BigDecimal;

import com.raf.calcul.Couple;

/**
 * Classe exécutant le calcul et l'affectation des couples (implémentation).
 * 
 * @author RAF
 */
public final class CalculImpl extends AbstractCalcul<NotationImpl> {

  /**
   * Constructeur.
   */
  public CalculImpl() {
    super();
  }

  /**
   * Initialise le total des notations.
   * 
   * @return le total initialisé
   * @see AbstractCalcul#initTotal()
   */
  @Override
  protected NotationImpl initTotal() {
    return new NotationImpl(BigDecimal.ZERO);
  }

  /**
   * Retourne le seuil de validation d'une note : par défaut à 0.
   * 
   * @return le seuil
   * @see AbstractCalcul#getSeuil()
   */
  @Override
  protected NotationImpl getSeuil() {
    return new NotationImpl(BigDecimal.ZERO);
  }

  /**
   * Retourne le seuil de validation d'une note.
   * 
   * @param nombre
   *          le critère du seuil
   * @return le seuil
   * @see AbstractCalcul#getSeuil(int)
   */
  @Override
  protected NotationImpl getSeuil(final int nombre) {
    return new NotationImpl(new BigDecimal(nombre / 3));
  }

  /**
   * Crée un couple.
   * 
   * @return le couple
   * @see AbstractCalcul#creeCoupleImpl()
   */
  @Override
  protected Couple<NotationImpl> creeCoupleImpl() {
    return new CoupleImpl();
  }
}
