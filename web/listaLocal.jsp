<%-- 
    Document   : listaLocal
    Created on : 13-sep-2013, 12:18:49
    Author     : Juan Blasco
--%>

<%@page import="GOEntities.GOUser"%>
<%@page import="GOEntities.GOCompany"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype>
<html>
    <head>
        <title>Go Out</title>
        <meta charset="UTF-8">
        <!--<meta http-equiv="refresh" content="5">-->
        <link href='http://fonts.googleapis.com/css?family=Racing+Sans+One' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/style.css" type='text/css'>
        <link rel="stylesheet" href="css/listalocalstyle.css" type='text/css'>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/anim.js"></script>
        <script type="text/javascript" src="js/listalocales.js"></script>

    </head>
    <body>
        <div id="bgheader"></div>
        <div id="bgblack"></div>
        <div id="popuplayer">
            <div id="popupmain">
                <img src="" alt="">
                <div class="popupwrapper">
                    <p id="popuptitle">Hola</p>
                    <p id="popupdesc"></p>
                    <div id="popupcontact">
                        <div><span>Lugar: &nbsp;</span><span id="popuplugar"></span></div>
                        <div><span>Telefono: &nbsp;</span><span id="popuptelf"></span></div>
                        <div><span>Horario: &nbsp;</span><span id="popuphorario"></span></div>
                        <div><span>E-mail: &nbsp;</span><span id="popupmail"></span></div>
                    </div>
                </div>
            </div>        
            <div id="popupvotes">
                <div>
                    <div><span>Total Votos: &nbsp;</span><span id="popupVotosTotal"></span></div>
                    <div><span>Precio: &nbsp;</span><span id="popupVotosPrecio"></span></div>
                    <div><span>Limpieza: &nbsp;</span><span id="popupVotosLimpieza"></span></div>
                    <div><span>Atencion: &nbsp;</span><span id="popupVotosAtencion"></span></div>
                </div>
            </div>
        </div>
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
        <%
        } else if (request.getSession().getAttribute("User") != null) {
            GOUser usr = (GOUser) request.getSession().getAttribute("User");
        %>
        <div id="logdata">
            <div id='emTitle'><bold>Usuario</bold></div>
            <div id="empdata">
                <p><%=usr.getNickUser()%></p>
                <p>Editar perfil</p>
                <p>Locales Seguidos</p>
                <p>Edit</p>
            </div>
        </div>
        <%
        } else {
        %>
        <div id="login">
            <form name="login" method="POST" action="GOController?op=1">
                <div id="titulologin"><p>Log In</p></div>
                <div id="campLogin">
                    <span>Nick: <input name="idUser" type="text" placeholder='Nick'></span><br>
                    <span>Pass: <input name="pswUser" type="Password" placeholder='Password'></span>
                    <button id="logButton">Enviar</button><br>
                    <label for="empresackb">Empresa:</label><input name="tipoUser" id="empresackb" value="0" type="checkbox">                    
                    <button id="regButton">Registrarse</button>
                </div>
            </form>
        </div>
        <%            }
        %>
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
            <div id="contenidolocal">			
                
            </div>	
        </div>	
        <div id="footCont">
            <footer>Go Out</footer>
        </div>	
    </body>
</html>
