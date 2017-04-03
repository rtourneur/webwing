package com.raf.xwing.jpa.domain.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.raf.xwing.jpa.domain.AbstractDescriptionEntity;

/**
 * The domain class for the UPGRADE_TYPE table.
 *
 * @author raphael.tourneur
 */
@Entity
@Table(name = "UPGRADE_TYPE", schema = "XWING")
public class UpgradeType extends AbstractDescriptionEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();
  
  /** The icon name. */
  @Column(name = "ICON", nullable = false)
  private String icon;

  static {
    FIELDS.add("name");
  }

  /**
   * Constructor.
   */
  public UpgradeType() {
    super();
  }

  /**
   * Returns the serializable ID of domain entity.
   *
   * @return the ID
   * @see DomainEntity#getId()
   */
  @Override
  public final Integer getId() {
    return getIdent();
  }

  /**
   * Return the icon name.
   * 
   * @return the icon
   */
  public final String getIcon() {
    return this.icon;
  }

  /**
   * Define the icon name.
   * 
   * @param icon
   *          the icon to set
   */
  public final void setIcon(final String icon) {
    this.icon = icon;
  }

  /**
   * Append the properties for the to string builder.
   * 
   * @param builder the builder
   * @see AbstractDescriptionEntity#appendDescription(ToStringBuilder)
   */
  @Override
  protected final void appendDescription(final ToStringBuilder builder) {
    builder.append("icon", this.icon);
  }
}
