package com.raf.xwing.web.form;

import java.util.Map;

/**
 * Abstract form for list request.
 * 
 * @author RAF
 */
public abstract class AbstractSearchListForm extends AbstractListForm {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The name. */
  private String name;

  /** The map of field values. */
  private Map<String, String> values;

  /**
   * Constructor.
   */
  public AbstractSearchListForm() {
    super();
  }

  /**
   * Return the name.
   * 
   * @return the name
   */
  public final String getName() {
    return this.name;
  }

  /**
   * Define the name.
   * 
   * @param name
   *          the name
   */
  public final void setName(final String name) {
    this.name = name;
  }

  /**
   * Return the map of field values.
   * 
   * @return the map of field values
   */
  public final Map<String, String> getValues() {
    return this.values;
  }

  /**
   * Define the map of field values.
   * 
   * @param values
   *          the map of field values
   */
  public final void setValues(final Map<String, String> values) {
    this.values = values;
  }

}
