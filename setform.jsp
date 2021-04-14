<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<head>
<script>

function get(obj) {
      var poststr = "id=" + encodeURI( document.getElementsByName("id").value );
                    "&name=" + encodeURI( document.getElementsByName("name").value );
                    "&course=" + encodeURI( document.getElementsByName("course").value );
                    "&mobile=" + encodeURI( document.getElementsByName("mobile").value );
                    "&fathername=" + encodeURI( document.getElementsByName("fathername").value );
                    "&mothername=" + encodeURI( document.getElementsByName("mothername").value );
                    "&qualification=" + encodeURI( document.getElementsByName("qualification").value );
                    "&dateofbirth=" + encodeURI( document.getElementsByName("dateofbirth").value );
                    "&dateofjoining=" + encodeURI( document.getElementsByName("dateofjoining").value );
                    "&feesub=" + encodeURI( document.getElementsByName("feesub").value );
                    "&paid=" + encodeURI( document.getElementsByName("paid").value );
                    "&fee=" + encodeURI( document.getElementsByName("fee").value );
                    "&balance=" + encodeURI( document.getElementsByName("balance").value );
                    "&address=" + encodeURI( document.getElementsByName("address").value );
                    "&description=" + encodeURI( document.getElementsByName("description").value );
                    "&trainer=" + encodeURI( document.getElementsByName("trainer").value );
                    
      makePOSTRequest("save.jsp", poststr);
   }

function makePOSTRequest(url, parameters) {
    http_request=false;
      if (window.XMLHttpRequest) { 
         http_request = new XMLHttpRequest();
         if (http_request.overrideMimeType) {
            http_request.overrideMimeType('text/html');
         }
      } else if (window.ActiveXObject) { 
         try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
         }
      }
      if (!http_request) {
         alert('Cannot create XMLHTTP instance');
         return false;
      }
      
		http_request.onreadystatechange = alertContents;
     	http_request.open('POST', url, true);
     	http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      http_request.setRequestHeader("Content-length", parameters.length);
      http_request.setRequestHeader("Connection", "close");
      http_request.send(parameters);
    
   }


</script>
</head>

<form action="javascript:get(document.getElementById('myform1'));" name="myform" id="myform1" method="post">
<table cellspacing=15 cellpadding=15">
<tr><td><font style="color:navy"><B>Детали:</B></font></td></tr>
<tr><td><B>ID:</B></td><td><input type="text" name="id"></input></td></tr>
<tr><td><B>Имя:</B></td><td><input type="text" name="name" ></input></td></tr>
<tr><td><B>Курс:</B></td><td><input type="text" name="course"></input></td></tr>
<tr><td><B>Тел:</B></td><td><input type="text" name="mobile"></input></td></tr>
<tr><td><B>Отец:</B></td><td><input type="text" name="fathername"></input></td></tr>
<tr><td><B>Мать:</B></td><td><input type="text" name="mothername"></input></td></tr>
<tr><td><B>Квалификация:</B></td><td><input type="text" name="qualification"></input></td></tr>
<tr><td><B>Д.Р.:</B></td><td><input type="text" name="dateofbirth"></input></td></tr>
<tr><td><B>Дата регистрации:</B></td><td><input type="text" name="dateofjoining" ></input></td></tr>
<tr><td><B>Дата продления:</B></td><td><input type="text" name="feesub" ></input></td></tr>
<tr><td><B>Оплата:</B></td><td><input type="text" name="paid" ></input></td></tr>
<tr><td><B>Коммсисия:</B></td><td><input type="text" name="fee" ></input></td></tr>
<tr><td><B>Баланс:</B></td><td><input type="text" name="balance" ></input></td></tr>
<tr><td><B>Адрес:</B></td><td><input type="text" name="address"></input></td></tr>
<tr><td><B>Описание:</B></td><td><input type="text" name="description"></input></td></tr>
<tr><td><B>Прочее:</B></td><td><input type="text" name="trainer"></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value="Save" type="submit"></td></tr>
</table>
</form>


