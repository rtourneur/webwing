package com.raf.xwing.web.controller.dto;

import java.util.Comparator;

import com.raf.xwing.web.dto.DialDto;

/**
 * Dial Dto comparator. The order is the speed desc.
 * 
 * @author RAF
 *
 */
public final class DialDtoComparator implements Comparator<DialDto> {

  /**
   * Constructor.
   */
  public DialDtoComparator() {
    super();
  }

  /**
   * The order is the speed desc.
   * 
   * @param dialDto1
   *          the first dial dto.
   * @param dialDto2
   *          the second dial dto.
   * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
   */
  @Override
  public int compare(final DialDto dialDto1, final DialDto dialDto2) {
    return dialDto2.getSpeed() - dialDto1.getSpeed();
  }

}
