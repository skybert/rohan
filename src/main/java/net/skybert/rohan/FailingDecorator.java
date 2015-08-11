package net.skybert.rohan;

import neo.xredsys.presentation.*;

/**
 * FailingDecorator
 *
 * @author Torstein Krause Johansen
 * @version $Revision$ $Date$
 */
public class FailingDecorator extends PresentationArticleDecorator {
  public FailingDecorator(final PresentationArticle pa) {
    throw new RuntimeException("All the best from " + FailingDecorator.class.getName());
  }

  public String toString() {
    return getClass().getName() + "[]";
  }
}
