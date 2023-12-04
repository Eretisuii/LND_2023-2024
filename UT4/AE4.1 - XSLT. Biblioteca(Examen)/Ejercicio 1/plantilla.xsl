<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Mostrar Elementos y Atributos</title>
        </head>
        <body>
            <h1>Mostrar Elementos y Atributos</h1>
            <ul>
                <li>
                <xsl:value-of select="//ciclo[1]/nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//ciclo[1]/decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
                </li>
                <li>
                <xsl:value-of select="//ciclo[2]/nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//ciclo[2]/decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
                </li>
                <li>
                <xsl:value-of select="//ciclo[3]/nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//ciclo[3]/decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
                </li>
            </ul>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>



