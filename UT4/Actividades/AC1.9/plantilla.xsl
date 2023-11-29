<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Currículo más actual</title>
        </head>
        <body>
            <h1>Currículo más actual</h1>
            <h2>Tabla</h2>
            <table>
                <tr>
                    <th>Titulo</th>
                    <th>Año</th>
                </tr>
                <th>
                <xsl:for-each select="//ciclo">
                    <xsl:sort select="decretoTitulo/@año" order="descending"/>
                    <xsl:if test="position() &lt;= 3">
                        <th>
                            <xsl:value-of select="nombre"/>
                            <xsl:value-of select="decretoTitulo/@año"/>
                        </th>
                    </xsl:if>
                </xsl:for-each>
                </th>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>