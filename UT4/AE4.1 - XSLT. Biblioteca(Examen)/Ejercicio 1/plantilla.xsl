<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Top 3 de libros con más puntuación</title>
            <link rel="stylesheet" href="estilos.css"/>
        </head>
        <body>
    <h1>Top 3 de libros con más puntuación</h1>
    <h2>Modo Tabla</h2>
    <table>
        <tr>
            <th class="negro-blanco">Posición</th>
            <th class="negro-blanco">Título</th>
            <th class="negro-blanco">Puntos</th>
        </tr>
        <xsl:for-each select="//libro">
        <xsl:sort select="puntos" order="descending"/>
        <xsl:if test="position() &lt;= 3">
        <tr>
            <td><xsl:value-of select="position()"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="puntos"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
    </table>
    <h2>Modo Lista</h2>
    <dl>
        <xsl:for-each select="//libro">
        <xsl:sort select="puntos" order="descending"/>
        <xsl:if test="position() &lt;= 3">
        <dd class="negro-blanco"><xsl:value-of select="position()"/> - 
            <xsl:value-of select="titulo"/> --> Puntos: 
            <xsl:value-of select="puntos"/></dd>
        </xsl:if>
        </xsl:for-each>
    </dl>
</body>
    </html>
    </xsl:template>
</xsl:stylesheet>