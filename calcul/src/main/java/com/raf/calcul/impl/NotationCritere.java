package com.raf.calcul.impl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import com.raf.calcul.Notation;

/**
 * La notation par critères (implémentation).
 * 
 * @author RAF
 *
 */
public final class NotationCritere implements Notation<NotationCritere> {

  /**
   * Les critères et leurs notations.
   */
  private final Map<String, BigDecimal> criteres;

  /**
   * Constructeur.
   */
  public NotationCritere(final Map<String, BigDecimal> criteres) {
    super();
    this.criteres = criteres;
  }

  /**
   * Compare les notations : compare les notes de chaque critères des notations.
   * 
   * @param notation
   *          la notation à comparer
   * @return le résultat de la comparaison
   * @see Comparable#compareTo(Object)
   */
  @Override
  public int compareTo(final NotationCritere notation) {
    BigDecimal value = BigDecimal.ZERO;
    BigDecimal other = BigDecimal.ZERO;
    for (final Entry<String, BigDecimal> critere : this.criteres.entrySet()) {
      value = value.add(critere.getValue());
      other = other.add(notation.criteres.get(critere.getKey()));
    }
    return value.compareTo(other);
  }

  /**
   * Ajoute chaque note des critères de la notation.
   * 
   * @param notation
   *          la notation
   * @see Notation#add(Object)
   */
  @Override
  public NotationCritere add(final NotationCritere notation) {
    final Map<String, BigDecimal> notes = new HashMap<String, BigDecimal>(this.criteres.size());
    for (final Entry<String, BigDecimal> critere : this.criteres.entrySet()) {
      notes.put(critere.getKey(), critere.getValue().add(notation.criteres.get(critere.getKey())));
    }
    return new NotationCritere(notes);
  }

  /**
   * Multiplie chaque note des critères par la note du critère correspondant de la notation.
   * 
   * @param notation
   *          la notation
   * @see Notation#multiply(Object)
   */
  @Override
  public NotationCritere multiply(final NotationCritere notation) {
    final Map<String, BigDecimal> notes = new HashMap<String, BigDecimal>(this.criteres.size());
    for (final Entry<String, BigDecimal> critere : this.criteres.entrySet()) {
      notes.put(critere.getKey(), critere.getValue().multiply(notation.criteres.get(critere.getKey())));
    }
    return new NotationCritere(notes);
  }

  /**
   * Représente la note.
   * 
   * @return la note de la notation
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    BigDecimal value = BigDecimal.ZERO;
    for (final Entry<String, BigDecimal> critere : this.criteres.entrySet()) {
      value = value.add(critere.getValue());
    }
    return this.criteres.toString() + ":" + value;
  }

}
