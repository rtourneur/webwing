package com.raf.calcul;

/**
 * Classe d'exception.
 * 
 * @author RAF
 *
 */
public class CalculException extends RuntimeException {

  /** Serial UID. */
  private static final long serialVersionUID = -2442599332524754622L;

  /**
   * Constructeur.
   */
  public CalculException() {
    super();
  }

  /**
   * Constructeur.
   * 
   * @param message
   */
  public CalculException(final String message) {
    super(message);
  }

  /**
   * Constructeur.
   * 
   * @param cause
   */
  public CalculException(final Throwable cause) {
    super(cause);
  }

  /**
   * Constructeur.
   * 
   * @param message
   * @param cause
   */
  public CalculException(final String message, final Throwable cause) {
    super(message, cause);
  }

}
