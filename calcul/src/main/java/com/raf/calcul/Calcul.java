package com.raf.calcul;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Classe exécutant le calcul et l'affectation des couples.
 * 
 * @author RAF
 */
public final class Calcul {

  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(Calcul.class);

  /** Logger pour le résultat du traitement. */
  private static final Logger LOGGER_TRAITEMENT = LoggerFactory.getLogger("TRAITEMENT");

  /** Le nombre de couples à traiter. */
  private int nbCouples;

  /** La liste des éléments primaires. */
  private List<Element> primary;

  /** la liste des éléments secondaires. */
  private List<Element> secondary;

  /**
   * Constructeur.
   */
  public Calcul() {
    super();
  }

  /**
   * Retourne le nombre de couples à traiter.
   * 
   * @return le nombre de couples
   */
  public int getNbCouples() {
    return this.nbCouples;
  }

  /**
   * Définit le nombre de couples à traiter.
   * 
   * @param nbCouples
   *          le nombre de couples
   */
  public void setNbCouples(final int nbCouples) {
    this.nbCouples = nbCouples;
  }

  /**
   * Retourne la liste des éléments primaires.
   * 
   * @return la liste des éléments primaires
   */
  public List<Element> getPrimary() {
    return this.primary;
  }

  /**
   * Définit la liste des éléments primaires.
   * 
   * @param primary
   *          la liste des éléments primaires
   */
  public void setPrimary(final List<Element> primary) {
    this.primary = primary;
  }

  /**
   * Retourne la liste des éléments secondaires.
   * 
   * @return la liste des éléments secondaires
   */
  public List<Element> getSecondary() {
    return this.secondary;
  }

  /**
   * Définit la liste des éléments secondaires.
   * 
   * @param secondary
   *          la liste des éléments secondaires
   */
  public void setSecondary(final List<Element> secondary) {
    this.secondary = secondary;
  }

  /**
   * Effectue le traitement.
   */
  public void traitement() {
    if (LOGGER.isInfoEnabled()) {
      LOGGER.info("Début du traitement.");
    }
    long time;
    long duree;
    final Map<Element, Map<Element, BigDecimal>> tableNotations = CalculUtils.initNotations(getPrimary(),
        getSecondary());
    // Traitement 1 : Calcul de la note totale de chaque élément et affectation en traitant les éléments par note
    // décroissante
    time = System.currentTimeMillis();
    traitement1(tableNotations);
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 1 : " + duree);
    }
    // Traitement 3 : Calcul de la note totale de chaque élément et affectation en traitant les éléments par note
    // décroissante, sans tenir compte des éléments déjà affectés.
    time = System.currentTimeMillis();
    traitement2(tableNotations);
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 2 : " + duree);
    }
    // Traitement 3 : Calcule la note de tous les couples possibles par addition des notes et crée les couples par note
    // de couple décroissante.
    time = System.currentTimeMillis();
    traitement3();
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 3 : " + duree);
    }
    // Traitement 3 : Calcule la note de tous les couples possibles par multiplication des notes et crée les couples par
    // note de couple décroissante.
    time = System.currentTimeMillis();
    traitement4();
    if (LOGGER.isDebugEnabled()) {
      duree = System.currentTimeMillis() - time;
      LOGGER.debug("Durée du traitement 4 : " + duree);
    }
  }

  /**
   * Calcul de la note totale de chaque élément et affectation en traitant les éléments par note décroissante.
   * 
   * @param tableNotations
   *          la table des notations
   */
  public void traitement1(final Map<Element, Map<Element, BigDecimal>> tableNotations) {
    Map<Element, BigDecimal> notations;
    Couple couple;
    BigDecimal total = BigDecimal.ZERO;
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 1 *****");
    }
    final List<Couple> couples = new ArrayList<Couple>(getNbCouples());
    final List<Element> eltAffectes = new ArrayList<Element>();
    notations = CalculUtils.calculNotations(tableNotations);
    for (final Entry<Element, BigDecimal> eltNote : notations.entrySet()) {
      LOGGER_TRAITEMENT
          .info("Notation totale de l'élément " + eltNote.getKey().getIdent() + " : " + eltNote.getValue());
    }
    Element currentElt;
    BigDecimal currentNote;
    for (int index = 1; index <= getNbCouples(); index++) {
      Element bestElement = null;
      BigDecimal bestNote = null;
      Element coupleElement = null;
      BigDecimal coupleNote = null;
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      for (final Entry<Element, BigDecimal> eltNote : notations.entrySet()) {
        currentElt = eltNote.getKey();
        if (!eltAffectes.contains(currentElt)) {
          currentNote = eltNote.getValue();
          if (bestNote == null || bestElement == null) {
            bestElement = currentElt;
            bestNote = currentNote;
          } else {
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
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("-> Meilleure notation totale : l'élément " + bestElement.getIdent() + " : " + bestNote);
      }
      for (final Entry<Element, BigDecimal> eltNote : bestElement.getNotations().entrySet()) {
        currentElt = eltNote.getKey();
        if (!eltAffectes.contains(currentElt)) {
          currentNote = eltNote.getValue();
          if (LOGGER_TRAITEMENT.isDebugEnabled()) {
            LOGGER_TRAITEMENT.debug("Notation de l'élément " + currentElt.getIdent() + " : " + eltNote.getValue());
          }
          if (coupleNote == null) {
            coupleElement = currentElt;
            coupleNote = currentNote;
          } else {
            if (currentNote.compareTo(coupleNote) > 0) {
              coupleElement = currentElt;
              coupleNote = currentNote;
            }
          }
        }
      }
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("-> Couple associé : l'élément " + coupleElement.getIdent() + " : " + coupleNote);
      }
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
   * Calcul de la note totale de chaque élément et affectation en traitant les éléments par note décroissante. La note
   * totale est recalculée à chaque itération en excluant les éléments déjà affectés.
   * 
   * @param tableNotations
   *          la table des notations
   */
  public void traitement2(final Map<Element, Map<Element, BigDecimal>> tableNotations) {
    Map<Element, BigDecimal> notations;
    Couple couple;
    BigDecimal total = BigDecimal.ZERO;
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 2 *****");
    }
    final List<Couple> couples = new ArrayList<Couple>(getNbCouples());
    final List<Element> eltAffectes = new ArrayList<Element>();
    Element currentElt;
    BigDecimal currentNote;
    for (int index = 1; index <= getNbCouples(); index++) {
      Element bestElement = null;
      BigDecimal bestNote = null;
      Element coupleElement = null;
      BigDecimal coupleNote = null;
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      notations = CalculUtils.calculNotations(tableNotations, eltAffectes);
      for (final Entry<Element, BigDecimal> eltNote : notations.entrySet()) {
        if (LOGGER_TRAITEMENT.isDebugEnabled()) {
          LOGGER_TRAITEMENT.debug("Notation totale de l'élément " + eltNote.getKey().getIdent() + " : "
              + eltNote.getValue());
        }
      }
      for (final Entry<Element, BigDecimal> eltNote : notations.entrySet()) {
        currentElt = eltNote.getKey();
        if (!eltAffectes.contains(currentElt)) {
          currentNote = eltNote.getValue();
          if (bestNote == null || bestElement == null) {
            bestElement = currentElt;
            bestNote = currentNote;
          } else {
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
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("-> Meilleure notation totale : l'élément " + bestElement.getIdent() + " : " + bestNote);
      }
      for (final Entry<Element, BigDecimal> eltNote : bestElement.getNotations().entrySet()) {
        currentElt = eltNote.getKey();
        if (!eltAffectes.contains(currentElt)) {
          currentNote = eltNote.getValue();
          if (LOGGER_TRAITEMENT.isDebugEnabled()) {
            LOGGER_TRAITEMENT.debug("Notation de l'élément " + currentElt.getIdent() + " : " + eltNote.getValue());
          }
          if (coupleNote == null) {
            coupleElement = currentElt;
            coupleNote = currentNote;
          } else {
            if (currentNote.compareTo(coupleNote) > 0) {
              coupleElement = currentElt;
              coupleNote = currentNote;
            }
          }
        }
      }
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("-> Couple associé : l'élément " + coupleElement.getIdent() + " : " + coupleNote);
      }
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
  public void traitement3() {
    Couple couple;
    BigDecimal total = BigDecimal.ZERO;
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 3 *****");
    }
    final List<Couple> couples = new ArrayList<Couple>(getNbCouples());
    final List<Element> eltAffectes = new ArrayList<Element>();
    final List<Couple> travail = new ArrayList<Couple>((int) Math.pow(getNbCouples(), 2));
    // Initialise la liste des couples de travail
    for (final Element element : getPrimary()) {
      for (final Entry<Element, BigDecimal> eltCouple : element.getNotations().entrySet()) {
        couple = creeCouple(element, eltCouple.getKey());
        travail.add(couple);
      }
    }
    BigDecimal currentNote;
    for (int index = 1; index <= getNbCouples(); index++) {
      Couple bestCouple = null;
      BigDecimal bestNote = null;
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      for (final Couple currentCouple : travail) {
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
  public void traitement4() {
    Couple couple;
    BigDecimal total = BigDecimal.ZERO;
    if (LOGGER_TRAITEMENT.isInfoEnabled()) {
      LOGGER_TRAITEMENT.info("***** Traitement 3 *****");
    }
    final List<Couple> couples = new ArrayList<Couple>(getNbCouples());
    final List<Element> eltAffectes = new ArrayList<Element>();
    final List<Couple> travail = new ArrayList<Couple>((int) Math.pow(getNbCouples(), 2));
    // Initialise la liste des couples de travail
    for (final Element element : getPrimary()) {
      for (final Entry<Element, BigDecimal> eltCouple : element.getNotations().entrySet()) {
        couple = creeCouple(element, eltCouple.getKey());
        travail.add(couple);
      }
    }
    BigDecimal currentNote;
    for (int index = 1; index <= getNbCouples(); index++) {
      Couple bestCouple = null;
      BigDecimal bestNote = null;
      if (LOGGER_TRAITEMENT.isInfoEnabled()) {
        LOGGER_TRAITEMENT.info("** Itération " + index);
      }
      for (final Couple currentCouple : travail) {
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
   * Crée le couple.
   * 
   * @param firstElt
   *          le premier élément du couple
   * @param secondElt
   *          le second élément du couple.
   * @return
   */
  private Couple creeCouple(final Element firstElt, final Element secondElt) {
    Element primaryCouple;
    Element secondaryCouple;
    if (CategorieElement.PRIMARY.equals(firstElt.getCategorie())) {
      primaryCouple = firstElt;
      secondaryCouple = secondElt;
    } else {
      primaryCouple = secondElt;
      secondaryCouple = firstElt;
    }
    final Couple couple = new Couple();
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
}
