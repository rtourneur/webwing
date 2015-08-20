package com.raf.calcul.impl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.raf.calcul.Couple;

/**
 * Classe exécutant le calcul et l'affectation des couples avec notation par critère (implémentation).
 * 
 * @author RAF
 */
public final class CalculCritere extends AbstractCalcul<NotationCritere> {

  /** La liste des critères. */
  private final List<String> criteres;

  /**
   * Constructeur.
   * 
   * @param criteres
   *          la liste des critères.
   */
  public CalculCritere(final List<String> criteres) {
    super();
    this.criteres = criteres;
  }

  /**
   * Initialise le total des notations.
   * 
   * @return le total initialisé
   * @see AbstractCalcul#initTotal()
   */
  @Override
  protected NotationCritere initTotal() {
    return new NotationCritere(initMapCritere(BigDecimal.ZERO));
  }

  /**
   * Retourne le seuil de validation d'une note : par défaut à 0.
   * 
   * @return le seuil
   * @see AbstractCalcul#getSeuil()
   */
  @Override
  protected NotationCritere getSeuil() {
    return new NotationCritere(initMapCritere(BigDecimal.ZERO));
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
  protected NotationCritere getSeuil(final int nombre) {
    return new NotationCritere(initMapCritere(new BigDecimal(nombre / 3)));
  }

  /**
   * Crée un couple.
   * 
   * @return le couple
   * @see AbstractCalcul#creeCoupleImpl()
   */
  @Override
  protected Couple<NotationCritere> creeCoupleImpl() {
    return new CoupleCritere();
  }

  private Map<String, BigDecimal> initMapCritere(final BigDecimal seuil) {
    final Map<String, BigDecimal> table = new HashMap<String, BigDecimal>(this.criteres.size());
    for (final String critere : this.criteres) {
      table.put(critere, seuil);
    }
    return table;
  }
}
