<%-- 
    Document   : register
    Created on : 20-ago-2013, 11:35:56
    Author     : Juan Blasco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Go Out - Registrar Compa&ntilde;ia</title>
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
                    <form name="registComp" method="POST" action="GOController?op=2">
                        <table>
                            <tr>
                                <td class="col1"><span>Nick Acceso: </span></td>
                                <td class="col2"><input type="text" name="nickComp" placeholder="Nick Acceso Empresa"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Password: </span></td>
                                <td class="col2"><input type="password" name="passwordComp" placeholder="Password"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Password Confirmation: </span></td>
                                <td class="col2"><input type="password" name="passwordConfirmComp" placeholder="Confirm Password"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>CIF/NIF: </span></td>
                                <td class="col2"><input type="text" name="idComp" placeholder="CIF/NIF"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Nombre Empresa: </span></td>
                                <td class="col2"><input type="text" name="nameComp" placeholder="Nombre Empresa"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Nombre Responsablle Empresa: </span></td>
                                <td class="col2"><input type="text" name="nameRespComp" placeholder="Nombre Responsable Empresa"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Apellido Responsable Empresa: </span></td>
                                <td class="col2"><input type="text" name="surnameRespComp" placeholder="Apellido Responsable Empresa"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Telefono: </span></td>
                                <td class="col2"><input type="text" name="phoneComp" placeholder="Numero de contacto la Empresa"/></td>
                            </tr>
                            <tr>
                                <td class="col1"><span>Mail: </span></td>
                                <td class="col2"><input type="email" name="mailComp" placeholder="E-mail"/></td>
                            </tr>                          
                            <tr>
                                <td class="col1"><span>Location: </span></td>
                                <td class="col2"><input type="text" name="locationComp" placeholder="Location"/></td>
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
