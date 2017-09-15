<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>




</head>
<body>

<form name=clothes action="select_OK">

<table cellpadding=1>
<tr>
	<td>1차</td>
	<td>2차</td>
	<td>3차</td>
</tr>
	
<tr>
	<td>
		<select name=ctype onChange=javascript:clotheschange(document.clothes.ctype.options.selectedIndex);>
			<option selected value="">-선택-</option>
			<option value=1 <c:if test="${first == 1}">selected</c:if> >TOP</option>
			<option value=2 <c:if test="${first == 2}">selected</c:if> >BOTTOM</option>			
			<option value=3 <c:if test="${first == 3}">selected</c:if> >ACC</option>	
			<option value=4 <c:if test="${first == 4}">selected</c:if> >OUTER</option>
			<option value=5 <c:if test="${first == 5}">selected</c:if> >ONE-PIECE</option>
			<option value=6 <c:if test="${first == 6}">selected</c:if> >SHOES</option>		
		</select>
	</td>
	<td>
		<select name=hobby size=1 onChange="this.form.submit()">
			<option selected value="" >-선택-</option>
			<option value=""></option>
		</select>
	</td>
	
	<td>
		<select name="detail">
			<option value="" >-선택-</option>
		<c:forEach var="result" items="${list}">

			<option value="${result}">${result}</option>

		</c:forEach>	
		</select>
	</td>
	
	<td>
	
	
	
	</td>
	
	
</tr>
</table>
</form>


<script>
var hobby0 = new Array("-선택-","");
var hobby1 = new Array("-선택-","T-shits/Jackets","맨투맨/후드","니트","블라우스");
var hobby2 = new Array("-선택-","shorts_pants","long_pants","training");
var hobby3 = new Array("-선택-","귀걸이","목걸이","팔찌","양말","벨트");
var hobby4 = new Array("-선택-","분류 없음");
var hobby5 = new Array("-선택-","분류 없음");
var hobby6 = new Array("-선택-","분류 없음");

function clotheschange(item){
    var temp, i=0, j=0;
    var ccount, cselect;   
  
    temp = document.clothes.hobby;

    var prevselect = '<c:out value="${second}"/>';
    var selectedIndex = 0;
    
    
    for (i=(temp.options.length-1) ; i>0 ; i--){ temp.options[i] = null; }
    eval('ccount = hobby' + item + '.length');
    for (j=0 ; j<ccount ; j++) {
        eval('cselect = hobby' + item + '[' + j + '];');
        temp.options[j]= new Option(cselect,cselect); 
        if(temp.options[j].value === prevselect){
        	  	
        	selectedIndex = j;
        }        
    }  
    
    
    
    
    temp.options[selectedIndex].selected=true;   
    return true;
  
}


</script>



<script>

    (function(){
    	var type = '<c:out value="${first}"/>';	
    	clotheschange(type);

    })()

  </script>

 



</body>
</html>