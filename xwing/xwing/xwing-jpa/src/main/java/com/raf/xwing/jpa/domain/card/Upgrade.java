package com.raf.xwing.jpa.domain.card;

import static javax.persistence.FetchType.EAGER;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.raf.xwing.jpa.domain.AbstractDescriptionEntity;
import com.raf.xwing.jpa.domain.model.Restriction;
import com.raf.xwing.jpa.domain.model.UpgradeType;

/**
 * The domain class for the UPGRADE table.
 *
 * @author RAF
 */
@Entity
@Table(name = "UPGRADE", schema = "XWING")
public class Upgrade extends AbstractDescriptionEntity<Integer> {

  /** Serial UID. */
  private static final long serialVersionUID = 1L;

  /** The list of searched fields. */
  public static final List<String> FIELDS = new ArrayList<>();

  /** The upgrade type. */
  @ManyToOne
  @JoinColumn(name = "UPGRADE_TYPE_ID", referencedColumnName = "ID")
  private UpgradeType upgradeType;

  /** The cost. */
  @Column(name = "COST")
  private int cost;

  /** The uniqueness indicator. */
  @Column(name = "UNIQUENESS")
  private boolean uniqueness;

  /** The limited indicator. */
  @Column(name = "LIMITED")
  private boolean limited;

  /** The list of restrictions. */
  @ManyToMany(fetch = EAGER)
  @JoinTable(name = "UPGRADE_RESTRICTION", schema = "XWING", joinColumns = @JoinColumn(name = "UPGRADE_ID", referencedColumnName = "ID"), inverseJoinColumns = @JoinColumn(name = "RESTRICTION_ID", referencedColumnName = "ID"))
  @Fetch(FetchMode.SUBSELECT)
  private List<Restriction> restrictions;

  /** The list of expansions. */
  @OneToMany(fetch = EAGER)
  @JoinColumn(name = "upgrade_id", referencedColumnName = "ID")
  @Fetch(FetchMode.SUBSELECT)
  private List<UpgradeExpansion> expansions;

  static {
    FIELDS.add("name");
    FIELDS.add("upgradeType");
    FIELDS.add("expansion");
  }

  /**
   * Constructor.
   */
  public Upgrade() {
    super();
  }

  /**
   * Returns the serializable ID of domain entity.
   *
   * @return the ID
   * @see com.raf.xwing.jpa.domain.DomainEntity#getId()
   */
  @Override
  public final Integer getId() {
    return getIdent();
  }

  /**
   * Return the upgrade type.
   * 
   * @return the upgrade type
   */
  public final UpgradeType getUpgradeType() {
    return this.upgradeType;
  }

  /**
   * Define the upgrade type.
   * 
   * @param upgradeType
   *          the upgrade type
   */
  public final void setUpgradeType(final UpgradeType upgradeType) {
    this.upgradeType = upgradeType;
  }

  /**
   * Return the cost.
   * 
   * @return the cost
   */
  public final int getCost() {
    return this.cost;
  }

  /**
   * Define the cost.
   * 
   * @param cost
   *          the cost to set
   */
  public final void setCost(final int cost) {
    this.cost = cost;
  }

  /**
   * Return the uniqueness indicator.
   * 
   * @return the uniqueness indicator
   */
  public final boolean isUniqueness() {
    return this.uniqueness;
  }

  /**
   * Define the uniqueness indicator.
   * 
   * @param uniqueness
   *          the uniqueness indicator
   */
  public final void setUniqueness(final boolean uniqueness) {
    this.uniqueness = uniqueness;
  }

  /**
   * Return the limited indicator.
   * 
   * @return the limited indicator
   */
  public final boolean isLimited() {
    return this.limited;
  }

  /**
   * Define the limited indicator.
   * 
   * @param limited
   *          the limited indicator
   */
  public final void setLimited(final boolean limited) {
    this.limited = limited;
  }

  /**
   * Return the list of restrictions.
   * 
   * @return the list of restrictions
   */
  public final List<Restriction> getRestrictions() {
    return this.restrictions;
  }

  /**
   * Define the list of restrictions.
   * 
   * @param restrictions
   *          the list of restrictions
   */
  public final void setRestrictions(final List<Restriction> restrictions) {
    this.restrictions = restrictions;
  }

  /**
   * Return the list of expansions.
   * 
   * @return the list of expansions
   */
  public final List<UpgradeExpansion> getExpansions() {
    return this.expansions;
  }

  /**
   * Define the list of expansions.
   * 
   * @param expansions
   *          the list of expansions
   */
  public final void setExpansions(final List<UpgradeExpansion> expansions) {
    this.expansions = expansions;
  }

}
