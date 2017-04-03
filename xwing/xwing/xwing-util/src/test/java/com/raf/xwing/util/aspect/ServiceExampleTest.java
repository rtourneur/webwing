package com.raf.xwing.util.aspect;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import com.raf.xwing.util.config.UtilConfig;

/**
 * @author RAF
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = UtilConfig.class, loader = AnnotationConfigContextLoader.class)
public class ServiceExampleTest {
  
  /** Logger. */
  private static final Logger LOGGER = LoggerFactory.getLogger(ServiceExampleTest.class);

  @Resource
  private ServiceExample serviceExample;
  
  @BeforeClass
  public static void beforeClass() throws IOException {
    final String userDir = System.getProperty("user.dir");
    File propertiesFile = new File("src/test/resources", "log4j.xml");
    LOGGER.info("Path : " + propertiesFile.getAbsolutePath());
    if (propertiesFile.isFile()) {
      FileUtils.copyFile(propertiesFile, new File(userDir, propertiesFile.getName()));
    }
  }
  
  @AfterClass
  public static void afterClass() {
    final String userDir = System.getProperty("user.dir");
    File propertiesFile = new File(userDir, "log4j.xml");
    if (propertiesFile.isFile()) {
      if (!propertiesFile.delete()) {
        LOGGER.info("Cannot remove file " + propertiesFile.getAbsolutePath());
      }
    }
  }
  
  /**
   * Test method for {@link com.raf.xwing.util.aspect.ServiceExample#getById(java.lang.Integer)}.
   */
  @Test
  public final void testGetById() {
    this.serviceExample.getById(Integer.valueOf(0));
  }
  
}
