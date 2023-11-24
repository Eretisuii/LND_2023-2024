<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>IF</title>
        </head>
        <body>
            <h1>IF</h1>
            <h2>Muestra Tabla</h2>
            <table>
                <tr>
                    <th>Titulo</th>
                    <th>Año</th>
                </tr>
                <xsl:apply-templates select="//ciclo[decretoTitulo]" mode="tabla">
                    <xsl:sort select="decretoTitulo/@año" order="ascending"/>
                </xsl:apply-templates>
            </table>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ciclo" mode="tabla">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>