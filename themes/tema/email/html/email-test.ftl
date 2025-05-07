<#import "template.ftl" as layout>
<@layout.emailLayout>
${kcSanitize(msg("emailTestBodyHtml",realmName))?no_esc}


<p>San Juan de Pasto, 3 de febrero de 2025</p>

<br><br>

<p>Apreciado(a)</p>

<p></p>

<br>

<p>Cordial saludo</p>

<p>
Por medio del presente mensaje de correo electrónico se le informa que la <strong>CREACIÓN</strong> del correo electrónico institucional
<strong>david.solarte@sednarino.gov.co</strong> ha sido contestada; por lo cual se le suministra la siguiente información.
</p>

<table style="border-collapse: collapse;">
    <tr><td><strong>Nombre:</strong></td><td><p>${user.firstName!}</p></td></tr>
    <tr><td><strong>Correo:</strong></td><td></td></tr>
    <tr><td><strong>Contraseña:</strong></td><td></td></tr>
    <tr><td><strong>Motivo:</strong></td><td>Creación del correo institucional david.solarte@sednarino.gov.co</td></tr>
</table>

<br>

<p>Por consiguiente, se envía la respuesta suministrada hasta el momento.</p>

<p>
Se recuerda que la contraseña es temporal y la primera vez que ingrese, el sistema le exige que se realice un cambio de contraseña. 
Se recomienda colocar una contraseña que tenga letras mayúsculas, letras minúsculas, al menos cuatro números y un símbolo.
</p>

<p>
Además, se comparte el vínculo para acceder al instructivo para la doble autenticación: 
<a href="https://www.sednarino.gov.co/descargas/DobleAutenticacion.pdf">DobleAutenticación.pdf</a>
</p>

<br>

<p>Agradezco de antemano la atención prestada.</p>


</@layout.emailLayout>
