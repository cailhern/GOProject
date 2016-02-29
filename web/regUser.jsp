<%-- 
    Document   : register
    Created on : 20-ago-2013, 11:35:56
    Author     : Juan Blasco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Go Out - Register</title>
        <meta charset="UTF-8">
        <!--<meta http-equiv="refresh" content="5">-->
        <link href='http://fonts.googleapis.com/css?family=Racing+Sans+One' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/style.css" type='text/css'>
        <link rel="stylesheet" href="css/stylereg.css" type='text/css'>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/anim.js"></script>

    </head>
    <body>
        <div id="bgheader"></div>
        <div id="bgsubmen"></div>
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
                <div id="regform">
                    <form name="registUser" method="POST" action="GOController?op=3">
                        <table>
                            <tr>
                                <td class="col1"><span>Nick: </span></td>
                                <td class="col2"><input type="text" name="nickUser" placeholder="Nick"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Password: </span></td>
                                <td class="col2"><input type="password" name="passwordUser" placeholder="Password"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Password Confirmation: </span></td>
                                <td class="col2"><input type="password" name="passwordconfirmUser" placeholder="Confirm Password"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Name: </span></td>
                                <td class="col2"><input type="text" name="nameUser" placeholder="Name"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Surname: </span></td>
                                <td class="col2"><input type="text" name="surnameUser"placeholder="Surname"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Birth Date: </span></td>
                                <td class="col2"><input type="date" name="birthUser" placeholder="Age"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Mail: </span></td>
                                <td class="col2"><input type="email" name="mailUser" placeholder="mail"/></td>
                            </tr>                          
                            <tr>
                                <td class="col1"><span>Location: </span></td>
                                <td class="col2"><input type="text" name="locationUser" placeholder="Location"/></td>
                            </tr>
                            <tr><td colspan="2"><input type="submit" value="Enviar"></td></tr>
                        </table>
                        
                        
                    </form>
                </div>
            </div>	
        </div>	
        <div id="footCont">
            <footer>Go Out</footer>
        </div>	
    </body>
</html>
