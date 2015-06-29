package com.raf.xwing.web.form;

import java.io.Serializable;

/**
 * Abstract form for list request.
 * 
 * @author RAF
 */
public abstract class AbstractListForm implements Serializable {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The number of rows. */
  private int nbRows;

  /** The page number. */
  private int pageNum;

  /** The total number of pages. */
  private int totalPages;

  /** The total number of rows. */
  private int totalRows;

  /**
   * Constructor.
   */
  public AbstractListForm() {
    super();
  }

  /**
   * Return the number of rows.
   * 
   * @return the number of rows
   */
  public final int getNbRows() {
    return this.nbRows;
  }

  /**
   * Define the number of rows.
   * 
   * @param nbRows
   *          the number of rows
   */
  public final void setNbRows(final int nbRows) {
    this.nbRows = nbRows;
  }

  /**
   * Return the page number.
   * 
   * @return the page number
   */
  public final int getPageNum() {
    return this.pageNum;
  }

  /**
   * Define the page number.
   * 
   * @param pageNum
   *          the page number
   */
  public final void setPageNum(final int pageNum) {
    this.pageNum = pageNum;
  }

  /**
   * Return the total number of pages.
   * 
   * @return the total number of pages
   */
  public final int getTotalPages() {
    return this.totalPages;
  }

  /**
   * Define the total number of pages.
   * 
   * @param totalPages
   *          the total number of pages
   */
  public final void setTotalPages(final int totalPages) {
    this.totalPages = totalPages;
  }

  /**
   * Return the total number of rows.
   * 
   * @return the total number of rows
   */
  public final int getTotalRows() {
    return this.totalRows;
  }

  /**
   * Define the total number of rows.
   * 
   * @param totalRows
   *          the total number of rows
   */
  public final void setTotalRows(final int totalRows) {
    this.totalRows = totalRows;
  }

}
