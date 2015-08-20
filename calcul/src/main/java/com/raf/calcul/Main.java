package com.raf.calcul;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.raf.calcul.impl.CalculCritere;
import com.raf.calcul.impl.CalculImpl;
import com.raf.calcul.impl.ElementCritere;
import com.raf.calcul.impl.ElementImpl;
import com.raf.calcul.impl.NotationCritere;
import com.raf.calcul.impl.NotationImpl;

/**
 * Classe principale pour le lancement du traitement.
 * 
 * @author RAF
 */
public final class Main {

  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(Main.class);

  /**
   * Constructeur.
   */
  private Main() {
    super();
  }

  /**
   * Exécute le programme.
   * 
   * @param args
   */
  public static void main(final String[] args) {
    if (LOGGER.isDebugEnabled()) {
      LOGGER.debug("Début du programme ");
    }
    // Création des options
    final Options options = new Options();
    options.addOption("h", "help", false, "Affiche le message d'aide.");
    options.addOption(Option.builder("n").longOpt("number").desc("La nombre de couples.").hasArg().argName("COUPLES")
        .required().build());

    final CommandLineParser parser = new DefaultParser();
    try {
      final CommandLine cmd = parser.parse(options, args);
      if (cmd.hasOption("h")) {
        if (LOGGER.isInfoEnabled()) {
          LOGGER.info("Affichage de l'aide");
        }
        showHelp(options);
      } else {
        final String couples = cmd.getOptionValue("n");
        if (LOGGER.isInfoEnabled()) {
          LOGGER.info("Lecture du nombre de couples");
        }
        if (StringUtils.isNumeric(couples)) {
          final int nbCouples = Integer.valueOf(couples);
          if (LOGGER.isInfoEnabled()) {
            LOGGER.info("Nombre de couples :" + nbCouples);
          }
          traitement(nbCouples);
          traitementCriteres(nbCouples);
        } else {
          LOGGER.error("Exception le nombre de couples " + couples + " doit être numérique.");
          showHelp(options);

        }
      }
    } catch (ParseException e) {
      LOGGER.error("Exception en lisant les paramètres du programme : " + e.getMessage(), e);
      showHelp(options);

    }
  }

  /**
   * Exécute le traitement.
   * 
   * @param nbCouples
   *          le nombre de couples.
   */
  private static void traitement(final int nbCouples) {
    final Calcul<NotationImpl> calcul = new CalculImpl();
    calcul.setNbCouples(nbCouples);
    final List<Element<NotationImpl>> primary = initElements(nbCouples, CategorieElement.PRIMARY);
    final List<Element<NotationImpl>> secondary = initElements(nbCouples, CategorieElement.SECONDARY);
    notation(primary, secondary);
    notation(secondary, primary);
    calcul.setPrimary(primary);
    calcul.setSecondary(secondary);
    calcul.traitement();
  }

  /**
   * Exécute le traitement par criteres.
   * 
   * @param nbCouples
   *          le nombre de couples.
   */
  private static void traitementCriteres(final int nbCouples) {
    final List<String> criteres = new ArrayList<String>(3);
    criteres.add("CRIT_1");
    criteres.add("CRIT_2");
    criteres.add("CRIT_3");
    final Calcul<NotationCritere> calcul = new CalculCritere(criteres);
    calcul.setNbCouples(nbCouples);
    final List<Element<NotationCritere>> primary = initElementsCritere(nbCouples, CategorieElement.PRIMARY);
    final List<Element<NotationCritere>> secondary = initElementsCritere(nbCouples, CategorieElement.SECONDARY);
    notationCritere(primary, secondary, criteres);
    notationCritere(secondary, primary, criteres);
    calcul.setPrimary(primary);
    calcul.setSecondary(secondary);
    calcul.traitement();
  }

  /**
   * Initialise la liste des éléments pour une catégorie.
   * 
   * @param nbElements
   *          le nombre d'éléments à générer
   * @param categorie
   *          la catégorie de l'élément
   * @return la liste des éléments
   */
  private static List<Element<NotationImpl>> initElements(final int nbElements, final CategorieElement categorie) {
    final List<Element<NotationImpl>> primary = new ArrayList<Element<NotationImpl>>(nbElements);
    ElementImpl element;
    for (int index = 1; index <= nbElements; index++) {
      element = creeElement(index, categorie);
      primary.add(element);
    }
    return primary;
  }

  /**
   * Initialise la liste des éléments pour une catégorie.
   * 
   * @param nbElements
   *          le nombre d'éléments à générer
   * @param categorie
   *          la catégorie de l'élément
   * @return la liste des éléments
   */
  private static List<Element<NotationCritere>> initElementsCritere(final int nbElements,
      final CategorieElement categorie) {
    final List<Element<NotationCritere>> primary = new ArrayList<Element<NotationCritere>>(nbElements);
    ElementCritere element;
    for (int index = 1; index <= nbElements; index++) {
      element = creeElementCritere(index, categorie);
      primary.add(element);
    }
    return primary;
  }

  /**
   * Crée un élément pour une catégorie.
   * 
   * @param index
   *          le numéro de l'élément
   * @param categorie
   *          la catégorie de l'élément
   * @return l'élément
   */
  private static ElementImpl creeElement(final int index, final CategorieElement categorie) {
    final ElementImpl element = new ElementImpl();
    element.setIdent(categorie.name() + index);
    element.setDesc("Elément " + categorie.name() + " numéro " + index);
    element.setCategorie(categorie);
    if (LOGGER.isDebugEnabled()) {
      LOGGER.debug("Création de l'élément" + element);
    }
    return element;
  }

  /**
   * Crée un élément pour une catégorie.
   * 
   * @param index
   *          le numéro de l'élément
   * @param categorie
   *          la catégorie de l'élément
   * @return l'élément
   */
  private static ElementCritere creeElementCritere(final int index, final CategorieElement categorie) {
    final ElementCritere element = new ElementCritere();
    element.setIdent(categorie.name() + index);
    element.setDesc("Elément " + categorie.name() + " numéro " + index);
    element.setCategorie(categorie);
    if (LOGGER.isDebugEnabled()) {
      LOGGER.debug("Création de l'élément" + element);
    }
    return element;
  }

  /**
   * Attribue pour chaque élément de la liste prime, une note pour chaque élément de la liste toNote.
   * 
   * @param prime
   *          la liste des éléments
   * @param toNote
   *          la liste des éléments à noter
   */
  private static void notation(final List<Element<NotationImpl>> prime, final List<Element<NotationImpl>> toNote) {
    final int size = toNote.size();
    Map<Element<NotationImpl>, NotationImpl> notes;
    List<Element<NotationImpl>> temp;
    for (final Element<NotationImpl> element : prime) {
      if (LOGGER.isInfoEnabled()) {
        LOGGER.info("Notation : traitement de l'élément" + element.getIdent());
      }
      notes = CalculUtils.initNotationMap(size);
      element.initNotations(notes);
      temp = CalculUtils.copyListe(toNote);
      Element<NotationImpl> eltNote;
      int index;
      for (int count = size; count > 0; count--) {
        index = (int) (Math.random() * count);
        eltNote = temp.remove(index);
        notes.put(eltNote, new NotationImpl(new BigDecimal(count)));
        if (LOGGER.isInfoEnabled()) {
          LOGGER.info("Notation : notation l'élément" + eltNote.getIdent() + " : " + count);
        }
      }
    }
  }

  /**
   * Attribue pour chaque élément de la liste prime, une note pour chaque élément de la liste toNote.
   * 
   * @param prime
   *          la liste des éléments
   * @param toNote
   *          la liste des éléments à noter
   * @param criteres
   *          la liste des critères
   */
  private static void notationCritere(final List<Element<NotationCritere>> prime,
      final List<Element<NotationCritere>> toNote, final List<String> criteres) {
    final int size = toNote.size();
    Map<Element<NotationCritere>, NotationCritere> notes;
    for (final Element<NotationCritere> element : prime) {
      if (LOGGER.isInfoEnabled()) {
        LOGGER.info("Notation : traitement de l'élément" + element.getIdent());
      }
      notes = CalculUtils.initNotationMap(size);
      element.initNotations(notes);
      NotationCritere notation;
      for (final Element<NotationCritere> eltNote : toNote) {
        notation = getNotationCritere(criteres, size);
        notes.put(eltNote, notation);
        if (LOGGER.isInfoEnabled()) {
          LOGGER.info("Notation : notation l'élément" + eltNote.getIdent() + " : " + notation);
        }
      }
    }
  }

  private static NotationCritere getNotationCritere(final List<String> criteres, final int size) {
    final Map<String, BigDecimal> notations = new HashMap<String, BigDecimal>(criteres.size());
    for (final String critere : criteres) {
      notations.put(critere, getRandom(size));
    }
    return new NotationCritere(notations);
  }

  private static BigDecimal getRandom(final int size) {
    final int value = (int) (Math.random() * 4) + (int) (Math.random() * 4) + (int) (Math.random() * 4) + 1;
    return new BigDecimal((double) value * size / 10);
  }

  /**
   * Affiche le message d'aide sur la sortie standart.
   * 
   * @param options
   */
  private static void showHelp(final Options options) {
    final HelpFormatter formatter = new HelpFormatter();
    formatter.printHelp("CalculImpl", options);
  }

}
