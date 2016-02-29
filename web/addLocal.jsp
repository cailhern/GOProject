<%-- 
    Document   : register
    Created on : 20-ago-2013, 11:35:56
    Author     : Juan Blasco
--%>

<%@page import="GOEntities.GOCompany"%>
<%@page import="GOEntities.GOUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Go Out - A&ntilde;adir Local</title>
        <meta charset="UTF-8">
        <!--<meta http-equiv="refresh" content="5">-->
        <link href='http://fonts.googleapis.com/css?family=Racing+Sans+One' rel='stylesheet' type='text/css'>        
        <link rel="stylesheet" href="css/styleloc.css" type='text/css'>
        <link rel="stylesheet" href="css/style.css" type='text/css'>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/anim.js"></script>

    </head>
    <body>
        <div id="bgheader"></div>
        <%
            if (request.getSession().getAttribute("Company") != null) {
                GOCompany comp = (GOCompany) request.getSession().getAttribute("Company");
        %>
        <div id="logdata">
            <div id='emTitle'><bold>Empresa</bold></div>
            <div id="empdata">
                <p><%=comp.getNameComp()%></p>
                <p>Editar Perfil</p>
                <p id="addLocal">A&ntilde;adir Local</p>
                <p>Locales</p>
                <p>Estadisticas</p>
            </div>
        </div>
        <% } else {
            }%>
        <div id="content">
            <header>
                <div id="cabecera">
                    <div id="logo"><span>Go Out</span></div>
                    <div id="menu">
                        <ul>
                            <li id='menuLocales'>Locales</li>
                            <li id='menuEventos'>Eventos</li>
                            <li id='menuFunciona'>Cómo Funciona</li>
                        </ul>
                    </div>
                </div>
            </header>
            <div id="submen">
                <ul class='submenu' id='submenuLocales'>
                    <li>Todos</li>
                    <li>M&aacute;s Valorados</li>
                    <li>M&aacute;s Votados</li>
                </ul>
                <ul class='submenu' id='submenuEventos'>
                    <li>Todos</li>
                    <li>M&aacute;s Valorados</li>
                    <li>M&aacute;s Pr&oacute;ximos</li>
                </ul>
                <ul class='submenu' id='submenuFunciona'>
                    <li>F.A.Q.</li>
                    <li>Introducci&oacute;n</li>
                    <li>Gu&iacute;a</li>
                </ul>
            </div>
            <div id="contenido">
                <div id="wrapper">
                    <form name="addLocal" method="POST" action="GOController?op=4" enctype="multipart/form-data">
                        <input type="text" name="reg" hidden="hidden"/>
                        <span><label for="nameLocal">Nombre del Local: </label></span><input type="text" name="nameLocal" placeholder="Nombre del Local"/><br>
                        <span><label for="nameRespLocal">Nombre del Responsable: </label></span><input type="text" name="nameRespLocal" placeholder="Nombre del Responsable"/><br>
                        <span><label for="surnRespLocal">Apellido del Responsable: </label></span><input type="text" name="surnRespLocal" placeholder="Apellido del Responsable"/><br>
                        <span><label for="mailLocal">Email de contacto: </label></span><input type="email" name="mailLocal" placeholder="Email de contacto"/><br>
                        <span><label for="locationLocal">Poblaci&oacute;n: </label></span><input type="text" name="locationLocal" placeholder="Poblacion"/><br>
                        <span><label for="telfLocal">Tel&eacute;fono: </label></span><input type="number" name="telfLocal" placeholder="Telefono"/><br>
                        <span><label for="horario">Horario: </label></span><input type="text" name="horario" placeholder="Horario"/><br>
                        <span><label for="fotoLocal">Fotograf&iacute;a: </label></span><input type="file" name="fotoLocal" placeholder="Fotografia"/><br>
                        <div><p><label for="descLocal">Descripci&oacute;n: </label></p><textarea name="descr"rows="5" maxlength="250"></textarea></div>
                        <button>A&ntilde;adir</button>
                    </form>
                </div>
            </div>            
        </div>        
        <div id="footCont">
            <footer>Go Out</footer>
        </div>
    </body>
</html>
