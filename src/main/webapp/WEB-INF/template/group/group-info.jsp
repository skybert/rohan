<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<p>
  <code>
    type=${element.type}
  </code>
  <code>
    label=${element.label}
  </code>
  <code>
    # of left=${element.areas["left"].items.size()}
    # of center=${element.areas["center"].items.size()}
    # of right=${element.areas["right"].items.size()}
  </code>
</p>
