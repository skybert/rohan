package net.skybert.rohan;

import neo.xredsys.presentation.*;

/**
 * OutOfMemoryProducingDecorator
 *
 * @author Torstein Krause Johansen
 * @version $Revision$ $Date$
 */
public class OutOfMemoryProducingDecorator extends PresentationArticleDecorator {
  public OutOfMemoryProducingDecorator(final PresentationArticle pa) {
    throw new OutOfMemoryError("Greetings from + " + OutOfMemoryProducingDecorator.class.getName());
  }

  public String toString() {
    return getClass().getName() + "[]";
  }
}
