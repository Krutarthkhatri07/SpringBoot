<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- <c:set var="i" value="${registation}"></c:set>
<c:set var="len" value="${f:length(i)}"></c:set>


<c:set var="count" value="0"></c:set>
<c:forEach items="${registation}" var="reg"> --%>
[

{
		
      "name" : "${registation}"
}
<%-- <c:set var="count" value="${count+1}"></c:set>
	<c:if test="${count lt len}">,</c:if>
 --%>



]



