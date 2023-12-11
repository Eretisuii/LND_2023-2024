<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Estadísticas</title>
            <link rel="stylesheet" href="estilos.css"/>
        </head>
    <body>
    <h1>Estadísticas</h1>
    
    <dl>
        <xsl:for-each select="//biblioteca">
        <dd>Total Libro: <xsl:value-of select="count(libro)"/></dd>

        <dd>Puntuación Media: <xsl:variable name="total_puntos" select="sum(libro/puntos)"/>
        <xsl:variable name="total_libros" select="count(libro)"/>

        <xsl:value-of select="format-number($total_puntos div $total_libros, '#0.0')"/></dd>

        <dd>Libros de la década de los 60: <xsl:value-of select="count(libro/fechaPublicacion[@año &gt;= 1960 and @año &lt; 1970])"/>
        (<xsl:value-of select="format-number((count(libro/fechaPublicacion[@año &gt;= 1960 and @año &lt; 1970]) div count(libro)) * 100, '##0.#')"/>%)</dd>
        
        <dd>Libros de la década de los 70: <xsl:value-of select="count(libro/fechaPublicacion[@año &gt;= 1970 and @año &lt; 1980])"/>
        (<xsl:value-of select="format-number((count(libro/fechaPublicacion[@año &gt;= 1970 and @año &lt; 1980]) div count(libro)) * 100, '##0.#')"/>%)</dd>
        
        <dd>Libros de la década de los 80 o posterior: <xsl:value-of select="count(libro/fechaPublicacion[@año &gt;= 1980])"/> 
        (<xsl:value-of select="format-number((count(libro/fechaPublicacion[@año &gt;= 1980]) div count(libro)) * 100, '##0.#')"/>%)</dd>
        </xsl:for-each>
    </dl>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>