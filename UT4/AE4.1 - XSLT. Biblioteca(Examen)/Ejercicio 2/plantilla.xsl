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
        <!--Inicia un bucle que selecciona todos los elementos biblioteca-->
        <xsl:for-each select="//biblioteca">
        <!--Para cada elemento biblioteca, cuenta el número de elementos libro dentro de ella y muestra este valor como Total Libro-->
        <dd>Total Libro: <xsl:value-of select="count(libro)"/></dd>
        <!--Calcula la puntuación media de todos los libros dentro de la biblioteca actual.Utiliza las funciones sum y count
         junto con una variable para almacenar el resultado y luego lo muestra con un formato específico-->
        <dd>Puntuación Media: <xsl:variable name="total_puntos" select="sum(libro/puntos)"/>
        <xsl:variable name="total_libros" select="count(libro)"/>
        <xsl:value-of select="format-number($total_puntos div $total_libros, '0.0')"/></dd>
        <!--Cuenta los libros cuya fecha de publicación está en la década de los 60 y calcula el porcentaje en relación con el total 
        de libros en la biblioteca actual-->
        <dd>Libros de la década de los 60: <xsl:value-of select="count(libro/fechaPublicacion[@año &gt;= 1960 and @año &lt; 1970])"/>
        (<xsl:value-of select="format-number((count(libro/fechaPublicacion[@año &gt;= 1960 and @año &lt; 1970]) div count(libro)) * 100, '0,0')"/>%)</dd>
        <!--Para la década de los 70-->    
        <dd>Libros de la década de los 70: <xsl:value-of select="count(libro/fechaPublicacion[@año &gt;= 1970 and @año &lt; 1980])"/>
        (<xsl:value-of select="format-number((count(libro/fechaPublicacion[@año &gt;= 1970 and @año &lt; 1980]) div count(libro)) * 100, '0,0')"/>%)</dd>
        <!--Para la década de los 80 o mayor-->
        <dd>Libros de la década de los 80 o posterior: <xsl:value-of select="count(libro/fechaPublicacion[@año &gt;= 1980])"/> 
        (<xsl:value-of select="format-number((count(libro/fechaPublicacion[@año &gt;= 1980]) div count(libro)) * 100, '0,0')"/>%)</dd>
        </xsl:for-each>
    </dl>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>