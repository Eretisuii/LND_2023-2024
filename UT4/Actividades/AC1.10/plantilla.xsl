<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Choose</title>
        </head>
        <body>
            <h1>Choose</h1>
            <tabla>
            <tr>
                <td class="negro">Ciclo</td>
                <td class="negro">Año</td>
                <td class="negro">Grado</td>
                <td class="negro">Acceso</td>
            </tr>
            <xsl:apply-templates select="//ciclo" mode="tabla">
                    <xsl:sort select="decretoTitulo/@año" order="ascending"/>
                </xsl:apply-templates>
            
            
            
            </tabla>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ciclo" mode="tabla">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="decretoTitulo/@año"/></td>
            <td><xsl:value-of select="grado"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>



