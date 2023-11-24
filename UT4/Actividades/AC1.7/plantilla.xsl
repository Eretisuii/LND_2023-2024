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
            <xsl:for-each select="//ciclo">
                <xsl:sort select="decretoTitulo/@año" order="descending"/>
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
</xsl:stylesheet>