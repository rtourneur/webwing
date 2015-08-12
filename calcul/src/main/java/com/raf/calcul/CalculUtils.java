package com.raf.calcul;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * Classe utilitaire.
 * 
 * @author RAF
 */
public final class CalculUtils {

  /**
   * Constructeur privé.
   */
  private CalculUtils() {
    super();
  }

  /**
   * Copie les éléments de la liste.
   * 
   * @param toCopy
   *          la liste à copier
   * @return la liste copiée
   */
  public static List<Element> copyListe(final List<Element> toCopy) {
    final List<Element> temp = new ArrayList<Element>(toCopy.size());
    temp.addAll(toCopy);
    return temp;
  }

  /**
   * Initialise la table des notations.
   * 
   * @param size
   *          la taille de la table
   * @return la table des notations
   */
  public static Map<Element, BigDecimal> initNotationMap(final int size) {
    return new HashMap<Element, BigDecimal>(size);
  }

  /**
   * Calcule la notation totale pour chaque élément de la table des notations.
   * 
   * @param tableNotations
   *          la table des notations par éléments
   * @return la table des notations totales
   */
  public static Map<Element, BigDecimal> calculNotations(final Map<Element, Map<Element, BigDecimal>> tableNotations) {
    return calculNotations(tableNotations, new ArrayList<Element>());
  }

  /**
   * Calcule la notation totale pour chaque élément de la table des notations. Ne tiens pas compte des éléments dans la
   * liste des éléments affectés.
   * 
   * @param tableNotations
   *          la table des notations par éléments
   * @param eltAffectes
   *          la liste des éléments affectés
   * @return la table des notations totales
   */
  public static Map<Element, BigDecimal> calculNotations(final Map<Element, Map<Element, BigDecimal>> tableNotations,
      final List<Element> eltAffectes) {
    final Map<Element, BigDecimal> notations = initNotationMap(tableNotations.size());
    Map<Element, BigDecimal> eltNotations;
    Element current;
    BigDecimal note;
    for (Entry<Element, Map<Element, BigDecimal>> entry : tableNotations.entrySet()) {
      if (!eltAffectes.contains(entry.getKey())) {
        eltNotations = entry.getValue();
        for (Entry<Element, BigDecimal> eltNote : eltNotations.entrySet()) {
          current = eltNote.getKey();
          if (!eltAffectes.contains(current)) {
            note = eltNote.getValue();
            if (notations.containsKey(current)) {
              note = note.add(notations.get(current));
            }
            notations.put(current, note);
          }
        }
      }
    }
    return notations;
  }

  public static Map<Element, Map<Element, BigDecimal>> initNotations(final List<Element> primary,
      final List<Element> secondary) {
    final Map<Element, Map<Element, BigDecimal>> notations = new HashMap<Element, Map<Element, BigDecimal>>(
        primary.size() + secondary.size());
    Map<Element, BigDecimal> eltNotes;
    for (Element element : primary) {
      eltNotes = initNotationMap(element.getNotations().size());
      eltNotes.putAll(element.getNotations());
      notations.put(element, eltNotes);
    }
    for (Element element : secondary) {
      eltNotes = initNotationMap(element.getNotations().size());
      eltNotes.putAll(element.getNotations());
      notations.put(element, eltNotes);
    }
    return notations;
  }

}
