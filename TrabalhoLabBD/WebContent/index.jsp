<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Escola, java.text.SimpleDateFormat, java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Apuração de Escolas de Samba</title>
	<link rel="stylesheet" href="./resources/bootstrap.min.css"/>
	<script src="./resources/jquery-3.2.1.slim.min.js"></script>
	<script src="./resources/popper.min.js" ></script>
	<script src="./resources/bootstrap.min.js"></script>
</head>
<body>
	<%
	String msg = (String)session.getAttribute("MESSAGE");
	%>
	<form>
	<label>Escola:</label>
	<select>
	<option value="tatuape">Acadêmicos do Tatuapé</option>
	<option value="tucuruvi">Acadêmicos do Tucuruvi</option>
	<option value="aguiaouro">Águia de Ouro</option>
	<option value="dragoes">Dragões da Real</option>
	<option value="gavioes">Gaviões da Fiel</option>
	<option value="casaverde">Império de Casa Verde</option>
	<option value="manchaverde">Mancha Verde</option>
	<option value="mocidade">Mocidade Alegre</option>
	<option value="nene">Nenê de Vila Matilde</option>
	<option value="rosasouro">Rosas de Ouro</option>
 	<option value="tomaior">Tom Maior</option>
 	<option value="vilamaria">Unidos de Vila Maria</option>
	<option value="vaivai">Vai-Vai</option>
	<option value="xisnove">X-9 Paulistana</option>
	</select>

	</form><form>
	<label>Jurado:</label>	
	<select style="width: 166px; ">
	<option>1° Jurado</option>
	<option>2° Jurado</option>
	<option>3° Jurado</option>
	<option>4° Jurado</option>
	<option>5° Jurado</option>
	</select>
	</form><label>Quesito: </label><select style="width: 163px; ">
	<option>Comissão de Frente</option>
	<option>Evolução</option>
	<option>Fantasia</option>
	<option>Bateria</option>
	<option>Alegoria</option>
	<option>Harmonia</option>
	<option>Samba-Enredo</option>
	<option>Mestre-Sala e Porta-Bandeira</option>
	<option>Enredo</option>
	</select><form style="height: 56px; ">
	<label>Nota: </label><input style="width: 106px; " /><input type="submit" value="Inserir" style="width: 74px; " />

	</form><form><input type="submit" value="Ver Quesito" style="width: 112px; " /><input type="submit" value="Ver Total" />
	</form></body>
</html>