package com.raf.calcul;

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
  public static <C extends Notation<C>> List<Element<C>> copyListe(final List<Element<C>> toCopy) {
    final List<Element<C>> temp = new ArrayList<Element<C>>(toCopy.size());
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
  public static <C extends Notation<C>> Map<Element<C>, C> initNotationMap(final int size) {
    return new HashMap<Element<C>, C>(size);
  }

  /**
   * Calcule la notation totale pour chaque élément de la table des notations. Ne tiens pas compte des éléments dans la
   * liste des éléments affectés.
   * 
   * @param tableNotations
   *          la table des notations par éléments
   * @param eltAffectes
   *          la liste des éléments affectés
   * @param seuil
   *          le seuil pour valider la note
   * @return la table des notations totales
   */
  public static <C extends Notation<C>> Map<Element<C>, C> calculNotations(
      final Map<Element<C>, Map<Element<C>, C>> tableNotations, final List<Element<C>> eltAffectes, final C seuil) {
    final Map<Element<C>, C> notations = initNotationMap(tableNotations.size());
    Map<Element<C>, C> eltNotations;
    Element<C> current;
    C note;
    for (final Entry<Element<C>, Map<Element<C>, C>> entry : tableNotations.entrySet()) {
      if (!eltAffectes.contains(entry.getKey())) {
        eltNotations = entry.getValue();
        for (final Entry<Element<C>, C> eltNote : eltNotations.entrySet()) {
          current = eltNote.getKey();
          if (!eltAffectes.contains(current)) {
            note = eltNote.getValue();
            if (notations.containsKey(current) && note.compareTo(seuil) > 0) {
              note = note.add(notations.get(current));
            }
            notations.put(current, note);
          }
        }
      }
    }
    return notations;
  }

  /**
   * Initialise les notations.
   * 
   * @param primary
   *          la liste des éléments primaires
   * @param secondary
   *          la liste des éléments secondaires
   * @return la table des notations
   */
  public static <C extends Notation<C>> Map<Element<C>, Map<Element<C>, C>> initNotations(
      final List<Element<C>> primary, final List<Element<C>> secondary) {
    final Map<Element<C>, Map<Element<C>, C>> notations = new HashMap<Element<C>, Map<Element<C>, C>>(primary.size()
        + secondary.size());
    Map<Element<C>, C> eltNotes;
    for (final Element<C> element : primary) {
      eltNotes = initNotationMap(element.getNotations().size());
      eltNotes.putAll(element.getNotations());
      notations.put(element, eltNotes);
    }
    for (final Element<C> element : secondary) {
      eltNotes = initNotationMap(element.getNotations().size());
      eltNotes.putAll(element.getNotations());
      notations.put(element, eltNotes);
    }
    return notations;
  }

}
