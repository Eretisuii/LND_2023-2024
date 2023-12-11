<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Autor y Libros Escritos</title>
            <link rel="stylesheet" href="estilos.css"/>
        </head>
    <body>
    <h1>Autor y Libros Escritos</h1>
    <table>
        <tr>
            <th class="negro-blanco">Autor</th>
            <th class="negro-blanco">Total</th>
            <th class="negro-blanco">Total (%)</th>
        </tr>
        <tr>
            <td>Autor 1</td>
            <td>3</td>
            <td>30 %</td>
        </tr>
        <tr>
            <td>Autor 2</td>
            <td>2</td>
            <td>25 %</td>
        </tr>
    </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>