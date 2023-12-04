<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF8"/>
            <title>Proyecto Web</title>
        </head>
        <body>
            <h1>Top 3 de libros con más puntuación</h1>
            <table>
                <tr>
                    <th>Posición</th>
                    <th>Título</th>
                    <th>Puntos</th>
                </tr>
            <xsl:for-each select="//libros">
            <xsl:sort select="number(puntos)" order="descending"/>
            <xsl:if test="position() &lt;= 3">
                <tr>
                    <td><xsl:value-of select="position()"/></td>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="puntos"/></td>
             </tr>
            </xsl:if>
            </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>



