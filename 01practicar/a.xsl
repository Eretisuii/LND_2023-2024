<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
    <html>
        <head>
            <meta charset="UTF-8"/>
            <link rel="stylesheet" href="a.css"/>
            <title></title>
        </head>
        <body>
            <h1>Mostrar Elementos y Atributos</h1>

            /* actividad 1 */
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
            /* actividad 2 */
            <xsl:apply-templates select="//ciclo"/>

            /* actividad 3 */
            <h2>Muestra lista</h2>
            <xsl:apply-templates select="//ciclo" mode="lista"/>
            <h2>Muestra tabla</h2>
            <table>
                <tr>
                    <th>Título</th>
                    <th>Año</th>
                </tr>
                <xsl:apply-templates select="//ciclo" mode="tabla"/>
            </table>

            /* actividad 4 */
            <xsl:apply-templates select="//ciclo" mode="sort">
                <xsl:sort select="nombre" order="descending"/>
            </xsl:apply-templates>

            /* actividad 5 */
            <xsl:for-each select="//ciclo">
                <xsl:sort select="decretoTitulo/@año" order="descending"/>
                <p>
                    <xsl:value-of select="nombre"/>
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="decretoTitulo/@año"/>
                    <xsl:text>)</xsl:text>
                </p>
            </xsl:for-each>

            /* actividad 6 */
            <xsl:for-each select="//ciclo">
                <xsl:sort select="decretoTitulo/@año"/>
                <xsl:if test="decretoTitulo[@año &gt; 2009]">
                    <p>
                    <xsl:value-of select="nombre"/>
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="decretoTitulo/@año"/>
                    <xsl:text>)</xsl:text>
                    </p>
                </xsl:if>
            </xsl:for-each>
            
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ciclo">
        <p>
        <xsl:value-of select="nombre"/>
        <xsl:text> (</xsl:text>
        <xsl:value-of select="decretoTitulo/@año"/>
        <xsl:text>)</xsl:text>
        </p>
    </xsl:template>
    <xsl:template match="ciclo" mode="lista">
        <ul>
            <li>
                <xsl:value-of select="nombre"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="decretoTitulo/@año"/>
                <xsl:text>)</xsl:text>
            </li>
        </ul>
    </xsl:template>
    <xsl:template match="ciclo" mode="tabla">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="ciclo" mode="sort">
        <p>
        <xsl:value-of select="nombre"/>
        <xsl:text> (</xsl:text>
        <xsl:value-of select="decretoTitulo/@año"/>
        <xsl:text>)</xsl:text>
        </p>
    </xsl:template>
</xsl:stylesheet>