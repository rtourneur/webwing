package com.raf.xwing.web.dto;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * The User DTO.
 * 
 * @author RAF
 */
public final class UserDto implements Serializable {
  
  /** Serial UID. */
  private static final long serialVersionUID = 1L;
  
  /** Firstname. */
  @NotNull
  @NotEmpty
  @Size(min = 1, max = 30)
  private String firstName;
  
  @NotNull
  @NotEmpty
  private String lastName;
  
  @NotNull
  @NotEmpty
  private String password;
  private String matchingPassword;
  
  @NotNull
  @NotEmpty
  private String email;
  
  /**
   * Constructor.
   */
  public UserDto() {
    super();
  }
  
}
