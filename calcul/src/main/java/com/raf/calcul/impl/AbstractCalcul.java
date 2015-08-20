package com.raf.calcul.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.raf.calcul.Calcul;
import com.raf.calcul.CalculException;
import com.raf.calcul.CalculUtils;
import com.raf.calcul.CategorieElement;
import com.raf.calcul.Couple;
import com.raf.calcul.Element;
import com.raf.calcul.Notation;

/**
 * Classe abstraite pour l'implémentation d'un {@link Calcul}.
 * 
 * @param <C>
 *          le critère de notation
 * @author RAF
 */
public abstract class AbstractCalcul<C extends Notation<C>> implements Calcul<C> {

  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(AbstractCalcul.class);

  /** Logger pour le résultat du traitement. */
  private static final Logger LOGGER_TRAITEMENT = LoggerFactory.getLogger("TRAITEMENT");

  /** Le nombre de couples à traiter. */
  private int nbCouples;
  /** La liste des éléments primaires. */
  private List<Element<C>> primary;
  /** la liste des éléments secondaires. */
  private List<Element<C>> secondary;

  /**
   * Constructeur.
   */
  protected AbstractCalcul() {
    super();
  }

  /**
   * Retourne le nombre de couples à traiter.
   * 
   * @return le nombre de couples
   * @see Calcul#getNbCouples()
   */
  @Override
  public final int getNbCouples() {
    return this.nbCouples;
  }

  /**
   * Définit le nombre de couples à traiter.
   * 
   * @param nbCouples
   *          le nombre de couples
   * @see Calcul#setNbCouples(int)
   */
  @Override
  public final void setNbCouples(final int nbCouples) {
    this.nbCouples = nbCouples;
  }

  /**
   * Retourne la liste des éléments primaires.
   * 
   * @return la liste des éléments primaires
   * @see Calcul#getPrimary()
   */
  @Override
  public final List<Element<C>> getPrimary() {
    return this.primary;
  }

  /**
   * Définit la liste des éléments primaires.
   * 
   * @param primary
   *          la liste des éléments primaires
   * @see Calcul#setPrimary(List)
   */
  @Override
  public final void setPrimary(final List<Element<C>> primary) {
    this.primary = primary;
  }

  /**
   * Retourne la liste des éléments secondaires.
   * 
   * @return la liste des éléments secondaires
   * @see Calcul#getSecondary()
   */
  @Override
  public final List<Element<C>> getSecondary() {
    return this.secondary;
  }

  /**
   * Définit la liste des éléments secondaires.
   * 
   * @param secondary
   *          la liste des éléments secondaires
   * @see Calcul#setSecondary(List)
   */
  @Override
  public final void setSecondary(final List<Element<C>> secondary) {
    this.secondary = secondary;
  }

  /**
   * Effectue le traitement.
   * 
   * @see Calcul#traitement()
   */
  @Override
  public final void traitement() {
    if (LOGGER.isInfoEnabled()) {
      LOGGER.info("Début du traitement.");
    }
    long time;
    long duree;
    final Map<Element<C>, Map<Element<C>, C>> tableNotations = CalculUtils.initNotations(getPrimary(), getSecondary());
    // Traitement 1 : CalculImpl de la note totale de chaque élément et affectation en traitant les éléments par note
    // décroissante
    time = System.currentTimeMillis();
    try {
      traitement1(tableNotations);
    } catch (CalculException e) {
      LOGGER.warn("Exception " + e.getMessage(), e);
    }
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 1 : " + duree);
    }
    // Traitement 2 : CalculImpl de la note totale de chaque élément et affectation en traitant les éléments par note
    // décroissante, sans tenir compte des éléments déjà affectés.
    time = System.currentTimeMillis();
    try {
      traitement2(tableNotations);
    } catch (CalculException e) {
      LOGGER.warn("Exception " + e.getMessage(), e);
    }
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 2 : " + duree);
    }
    // Traitement 2b : CalculImpl de la note totale de chaque élément et affectation en traitant les éléments par note
    // décroissante, sans tenir compte des éléments déjà affectés.
    time = System.currentTimeMillis();
    try {
      traitement2b(tableNotations);
    } catch (CalculException e) {
      LOGGER.warn("Exception " + e.getMessage(), e);
    }
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 2b : " + duree);
    }
    // Traitement 3 : Calcule la note de tous les couples possibles par addition des notes et crée les couples par note
    // de couple décroissante.
    time = System.currentTimeMillis();
    traitement3();
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 3 : " + duree);
    }
    // Traitement 4 : Calcule la note de tous les couples possibles par multiplication des notes et crée les couples par
    // note de couple décroissante.
    time = System.currentTimeMillis();
    traitement4();
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 4 : " + duree);
    }
  }

  /**
   * CalculImpl de la note totale de chaque élément et affectation en traitant les éléments par note décroissante.
   * 
   * @param tableNotations
   *          la table des notations
   */
  protected final void traitement1(final Map<Element<C>, Map<Element<C>, C>> tableNotations) {
    Map<Element<C>, C> notations;
    Couple<C> couple;
    C total = initTotal();
    final C seuil = getSeuil();
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 1 *****");
    }
    final List<Couple<C>> couples = new ArrayList<Couple<C>>(getNbCouples());
    final List<Element<C>> eltAffectes = new ArrayList<Element<C>>();
    notations = CalculUtils.calculNotations(tableNotations, new ArrayList<Element<C>>(), seuil);
    for (final Entry<Element<C>, C> eltNote : notations.entrySet()) {
      LOGGER_TRAITEMENT
          .info("Notation totale de l'élément " + eltNote.getKey().getIdent() + " : " + eltNote.getValue());
    }
    for (int index = 1; index <= getNbCouples(); index++) {
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      final Element<C> bestElement = getBestElement(notations, eltAffectes, seuil);
      final Element<C> coupleElement = getBestCoupleElement(eltAffectes, bestElement, seuil);
      couple = creeCouple(bestElement, coupleElement);
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info(">>> Meilleur couple : " + couple.getPrimary().getIdent() + "("
            + couple.getPrimaryNote() + ") - " + couple.getSecondary().getIdent() + "(" + couple.getSecondaryNote()
            + ")");
      }
      couples.add(couple);
      total = total.add(couple.getPrimaryNote()).add(couple.getSecondaryNote());
      eltAffectes.add(bestElement);
      eltAffectes.add(coupleElement);
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("** Valeur totale de l'affectation : " + total);
    }
  }

  /**
   * CalculImpl de la note totale de chaque élément et affectation en traitant les éléments par note décroissante. La
   * note totale est recalculée à chaque itération en excluant les éléments déjà affectés.
   * 
   * @param tableNotations
   *          la table des notations
   */
  protected final void traitement2(final Map<Element<C>, Map<Element<C>, C>> tableNotations) {
    Map<Element<C>, C> notations;
    Couple<C> couple;
    C total = initTotal();
    final C seuil = getSeuil();
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 2 *****");
    }
    final List<Couple<C>> couples = new ArrayList<Couple<C>>(getNbCouples());
    final List<Element<C>> eltAffectes = new ArrayList<Element<C>>();
    for (int index = 1; index <= getNbCouples(); index++) {
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      notations = CalculUtils.calculNotations(tableNotations, eltAffectes, seuil);
      for (final Entry<Element<C>, C> eltNote : notations.entrySet()) {
        if (LOGGER_TRAITEMENT.isDebugEnabled()) {
          LOGGER_TRAITEMENT.debug("Notation totale de l'élément " + eltNote.getKey().getIdent() + " : "
              + eltNote.getValue());
        }
      }
      final Element<C> bestElement = getBestElement(notations, eltAffectes, seuil);
      final Element<C> coupleElement = getBestCoupleElement(eltAffectes, bestElement, seuil);
      couple = creeCouple(bestElement, coupleElement);
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info(">>> Meilleur couple : " + couple.getPrimary().getIdent() + "("
            + couple.getPrimaryNote() + ") - " + couple.getSecondary().getIdent() + "(" + couple.getSecondaryNote()
            + ")");
      }
      couples.add(couple);
      total = total.add(couple.getPrimaryNote()).add(couple.getSecondaryNote());
      eltAffectes.add(bestElement);
      eltAffectes.add(coupleElement);
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("** Valeur totale de l'affectation : " + total);
    }
  }

  /**
   * CalculImpl de la note totale de chaque élément et affectation en traitant les éléments par note décroissante. La
   * note totale est recalculée à chaque itération en excluant les éléments déjà affectés. Les notes inférieures à 1/3
   * ne sont pas prises en compte
   * 
   * @param tableNotations
   *          la table des notations
   */
  protected final void traitement2b(final Map<Element<C>, Map<Element<C>, C>> tableNotations) {
    Map<Element<C>, C> notations;
    Couple<C> couple;
    C total = initTotal();
    final C seuil = getSeuil(getNbCouples());
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 2 b *****");
    }
    final List<Couple<C>> couples = new ArrayList<Couple<C>>(getNbCouples());
    final List<Element<C>> eltAffectes = new ArrayList<Element<C>>();
    for (int index = 1; index <= getNbCouples(); index++) {
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      notations = CalculUtils.calculNotations(tableNotations, eltAffectes, seuil);
      for (final Entry<Element<C>, C> eltNote : notations.entrySet()) {
        if (LOGGER_TRAITEMENT.isDebugEnabled()) {
          LOGGER_TRAITEMENT.debug("Notation totale de l'élément " + eltNote.getKey().getIdent() + " : "
              + eltNote.getValue());
        }
      }
      final Element<C> bestElement = getBestElement(notations, eltAffectes, seuil);
      final Element<C> coupleElement = getBestCoupleElement(eltAffectes, bestElement, seuil);
      couple = creeCouple(bestElement, coupleElement);
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info(">>> Meilleur couple : " + couple.getPrimary().getIdent() + "("
            + couple.getPrimaryNote() + ") - " + couple.getSecondary().getIdent() + "(" + couple.getSecondaryNote()
            + ")");
      }
      couples.add(couple);
      total = total.add(couple.getPrimaryNote()).add(couple.getSecondaryNote());
      eltAffectes.add(bestElement);
      eltAffectes.add(coupleElement);
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("** Valeur totale de l'affectation : " + total);
    }
  }

  /**
   * Traitement 3.
   */
  protected final void traitement3() {
    C total = initTotal();
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 3 *****");
    }
    final List<Couple<C>> couples = new ArrayList<Couple<C>>(getNbCouples());
    final List<Element<C>> eltAffectes = new ArrayList<Element<C>>();
    final List<Couple<C>> travail = new ArrayList<Couple<C>>((int) Math.pow(getNbCouples(), 2));
    // Initialise la liste des couples de travail
    initListeCouples(travail);
    C currentNote;
    for (int index = 1; index <= getNbCouples(); index++) {
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      Couple<C> bestCouple = null;
      C bestNote = null;
      for (final Couple<C> currentCouple : travail) {
        if (!eltAffectes.contains(currentCouple.getPrimary()) && !eltAffectes.contains(currentCouple.getSecondary())) {
          currentNote = currentCouple.getPrimaryNote().add(currentCouple.getSecondaryNote());
          if (bestNote == null || bestCouple == null) {
            bestCouple = currentCouple;
            bestNote = currentNote;
          } else {
            if (currentNote.compareTo(bestNote) > 0) {
              bestCouple = currentCouple;
              bestNote = currentNote;
            } else if (currentNote.compareTo(bestNote) == 0
                && (bestCouple.getPrimary().equals(currentCouple.getPrimary()) || bestCouple.getSecondary().equals(
                    currentCouple.getSecondary()))
                && currentCouple.getSecondaryNote().compareTo(bestCouple.getSecondaryNote()) > 0) {
              bestCouple = currentCouple;
              bestNote = currentNote;
            }
          }
        }
      }
      if (bestCouple == null) {
        throw new CalculException("Aucun couple candidat trouvé");
      }
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info(">>> Meilleur couple : " + bestCouple.getPrimary().getIdent() + "("
            + bestCouple.getPrimaryNote() + ") - " + bestCouple.getSecondary().getIdent() + "("
            + bestCouple.getSecondaryNote() + ")");
      }
      couples.add(bestCouple);
      total = total.add(bestCouple.getPrimaryNote()).add(bestCouple.getSecondaryNote());
      eltAffectes.add(bestCouple.getPrimary());
      eltAffectes.add(bestCouple.getSecondary());
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("** Valeur totale de l'affectation : " + total);
    }
  }

  /**
   * Traitement 4.
   */
  protected final void traitement4() {
    C total = initTotal();
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 3 *****");
    }
    final List<Couple<C>> couples = new ArrayList<Couple<C>>(getNbCouples());
    final List<Element<C>> eltAffectes = new ArrayList<Element<C>>();
    final List<Couple<C>> travail = new ArrayList<Couple<C>>((int) Math.pow(getNbCouples(), 2));
    initListeCouples(travail);
    C currentNote;
    for (int index = 1; index <= getNbCouples(); index++) {
      Couple<C> bestCouple = null;
      C bestNote = null;
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      for (final Couple<C> currentCouple : travail) {
        if (!eltAffectes.contains(currentCouple.getPrimary()) && !eltAffectes.contains(currentCouple.getSecondary())) {
          currentNote = currentCouple.getPrimaryNote().multiply(currentCouple.getSecondaryNote());
          if (bestNote == null || bestCouple == null) {
            bestCouple = currentCouple;
            bestNote = currentNote;
          } else {
            if (currentNote.compareTo(bestNote) > 0) {
              bestCouple = currentCouple;
              bestNote = currentNote;
            } else if (currentNote.compareTo(bestNote) == 0
                && (bestCouple.getPrimary().equals(currentCouple.getPrimary()) || bestCouple.getSecondary().equals(
                    currentCouple.getSecondary()))
                && currentCouple.getSecondaryNote().compareTo(bestCouple.getSecondaryNote()) > 0) {
              bestCouple = currentCouple;
              bestNote = currentNote;
            }
          }
        }
      }
      if (bestCouple == null) {
        throw new CalculException("Aucun couple candidat trouvé");
      }
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info(">>> Meilleur couple : " + bestCouple.getPrimary().getIdent() + "("
            + bestCouple.getPrimaryNote() + ") - " + bestCouple.getSecondary().getIdent() + "("
            + bestCouple.getSecondaryNote() + ")");
      }
      couples.add(bestCouple);
      total = total.add(bestCouple.getPrimaryNote()).add(bestCouple.getSecondaryNote());
      eltAffectes.add(bestCouple.getPrimary());
      eltAffectes.add(bestCouple.getSecondary());
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("** Valeur totale de l'affectation : " + total);
    }
  }

  /**
   * Initialise le total des notations.
   * 
   * @return le total initialisé
   */
  protected abstract C initTotal();

  /**
   * Retourne le seuil de validation d'une note : par défaut à 0.
   * 
   * @return le seuil
   */
  protected abstract C getSeuil();

  /**
   * Retourne le seuil de validation d'une note.
   * 
   * @param nombre
   *          le critère du seuil
   * @return le seuil
   */
  protected abstract C getSeuil(int nombre);

  /**
   * Crée un couple.
   * 
   * @return le couple
   */
  protected abstract Couple<C> creeCoupleImpl();

  /**
   * Recherche le meilleur élément.
   * 
   * @param notations
   *          la table des notations
   * @param eltAffectes
   *          la liste des éléments affectés
   * @param seuil
   *          le seuil de notataion
   * @return le meilleur élément
   */
  private Element<C> getBestElement(final Map<Element<C>, C> notations, final List<Element<C>> eltAffectes,
      final C seuil) {
    Element<C> bestElement = null;
    C bestNote = null;
    Element<C> currentElt;
    C currentNote;
    for (final Entry<Element<C>, C> eltNote : notations.entrySet()) {
      currentElt = eltNote.getKey();
      if (!eltAffectes.contains(currentElt)) {
        currentNote = eltNote.getValue();
        if ((bestNote == null || bestElement == null) && currentNote.compareTo(seuil) > 0) {
          bestElement = currentElt;
          bestNote = currentNote;
        } else if (bestNote != null && bestElement != null) {
          if (currentNote.compareTo(bestNote) > 0) {
            bestElement = currentElt;
            bestNote = currentNote;
          } else if (currentNote.compareTo(bestNote) == 0
              && CategorieElement.SECONDARY.equals(bestElement.getCategorie())
              && CategorieElement.PRIMARY.equals(currentElt.getCategorie())) {
            bestElement = currentElt;
            bestNote = currentNote;
          }
        }
      }
    }
    if (bestElement == null) {
      throw new CalculException("Aucun élément candidat trouvé");
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("-> Meilleure notation totale : l'élément " + bestElement.getIdent() + " : " + bestNote);
    }
    return bestElement;
  }

  /**
   * Retourne le meilleur élément à coupler à l'élément.
   * 
   * @param eltAffectes
   *          la liste des éléments affectés
   * @param bestElement
   *          le meilleur élément
   * @param seuil
   *          le seuil de notataion
   * @return le meilleur élément à coupler
   */
  private Element<C> getBestCoupleElement(final List<Element<C>> eltAffectes, final Element<C> bestElement,
      final C seuil) {
    Element<C> coupleElement = null;
    C coupleNote = null;
    Element<C> currentElt;
    C currentNote;
    for (final Entry<Element<C>, C> eltNote : bestElement.getNotations().entrySet()) {
      currentElt = eltNote.getKey();
      if (!eltAffectes.contains(currentElt)) {
        currentNote = eltNote.getValue();
        if (LOGGER_TRAITEMENT.isDebugEnabled()) {
          LOGGER_TRAITEMENT.debug("Notation de l'élément " + currentElt.getIdent() + " : " + eltNote.getValue());
        }
        if ((coupleNote == null || coupleElement == null) && currentNote.compareTo(seuil) > 0) {
          coupleElement = currentElt;
          coupleNote = currentNote;
        } else if (coupleNote != null && coupleElement != null) {
          if (currentNote.compareTo(coupleNote) > 0) {
            coupleElement = currentElt;
            coupleNote = currentNote;
          }
        }
      }
    }
    if (coupleElement == null) {
      throw new CalculException("Aucun élément candidat associé trouvé");
    }
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("-> Couple associé : l'élément " + coupleElement.getIdent() + " : " + coupleNote);
    }
    return coupleElement;
  }

  /**
   * Crée le couple.
   * 
   * @param firstElt
   *          le premier élément du couple
   * @param secondElt
   *          le second élément du couple.
   * @return
   */
  private Couple<C> creeCouple(final Element<C> firstElt, final Element<C> secondElt) {
    Element<C> primaryCouple;
    Element<C> secondaryCouple;
    if (CategorieElement.PRIMARY.equals(firstElt.getCategorie())) {
      primaryCouple = firstElt;
      secondaryCouple = secondElt;
    } else {
      primaryCouple = secondElt;
      secondaryCouple = firstElt;
    }
    final Couple<C> couple = creeCoupleImpl();
    couple.setPrimary(primaryCouple);
    couple.setPrimaryNote(secondaryCouple.getNotations().get(primaryCouple));
    couple.setSecondary(secondaryCouple);
    couple.setSecondaryNote(primaryCouple.getNotations().get(secondaryCouple));
    if (LOGGER_TRAITEMENT.isDebugEnabled()) {
      LOGGER_TRAITEMENT.debug(">>> le couple : " + couple.getPrimary().getIdent() + "(" + couple.getPrimaryNote()
          + ") - " + couple.getSecondary().getIdent() + "(" + couple.getSecondaryNote() + ")");
    }
    return couple;
  }

  /**
   * Initialise la liste des couples possibles.
   * 
   * @param travail
   *          la liste des couples possibles
   */
  private void initListeCouples(final List<Couple<C>> travail) {
    Couple<C> couple;
    for (final Element<C> element : getPrimary()) {
      for (final Entry<Element<C>, C> eltCouple : element.getNotations().entrySet()) {
        couple = creeCouple(element, eltCouple.getKey());
        travail.add(couple);
      }
    }
  }

}
