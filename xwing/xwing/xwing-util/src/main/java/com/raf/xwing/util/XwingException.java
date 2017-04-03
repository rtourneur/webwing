package com.raf.xwing.util;

/**
 * Exception for Xwing.
 * 
 * @author RAF
 */
public class XwingException extends Exception {
  
  /** Serial UID. */
  private static final long serialVersionUID = -5704240997995667216L;
  
  /** The error code. */
  private final int code;
  
  /**
   * Constructor.
   * 
   * @param message
   *          the message
   * @param code
   *          the error code
   */
  public XwingException(final String message, final int code) {
    super(message);
    this.code = code;
  }
  
  /**
   * Constructor.
   * 
   * @param message
   *          the message
   * @param code
   *          the error code
   * @param cause
   *          the cause
   */
  public XwingException(final String message, final int code, final Throwable cause) {
    super(message, cause);
    this.code = code;
  }
  
  /**
   * Returns the error code.
   * 
   * @return the code
   */
  public final int getCode() {
    return this.code;
  }
  
}
