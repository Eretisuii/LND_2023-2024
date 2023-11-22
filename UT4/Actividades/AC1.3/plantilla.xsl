<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Apply-Templates.Mode</title>
        </head>
        <body>
            <h1>Apply-Templates.Mode</h1>
            <h2>Muestra Lista</h2>
            <xsl:apply-templates select="//ciclo"/>
            <ul>
                <xsl:apply-templates select="//ciclo" mode="lista"/>
            </ul>

            <h2>Muestra Tabla</h2>
            <table>
                <tr>
                    <th>Titulo</th>
                    <th>Año</th>
                </tr>
                <xsl:apply-templates select="//ciclo" mode="tabla"/>
            </table>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ciclo" mode="lista">
        <li>
            <xsl:value-of select="nombre"/>
            <xsl:text> (</xsl:text>
            <xsl:value-of select="decretoTitulo/@año"/>
            <xsl:text>)</xsl:text>
        </li>
    </xsl:template>
    <xsl:template match="ciclo" mode="tabla">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>