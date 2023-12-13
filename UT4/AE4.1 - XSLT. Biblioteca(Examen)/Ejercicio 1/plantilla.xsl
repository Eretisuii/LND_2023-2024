<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <!--Harry Kokal Kokal 1ASIR B-->
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
        <!--Inicia un bucle sobre todos los elementos libro-->
        <xsl:for-each select="//libro">
        <!--Ordena los elementos libro por el valor de la etiqueta puntos en orden descendente (de mayor a menor)-->
        <xsl:sort select="puntos" order="descending"/>
        <!--Dentro del bucle, verifica si la posición del libro es menor o igual a 3. Solo se cojeran los tres primeros libros después de ordenar-->
        <xsl:if test="position() &lt;= 3">
        <tr>
            <!-- Muestra la posición del libro en la tabla-->
            <td><xsl:value-of select="position()"/></td>
            <!--Muestra el título del libro-->
            <td><xsl:value-of select="titulo"/></td>
            <!--Muestra la puntuación del libro-->
            <td><xsl:value-of select="puntos"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
    </table>
    <!--Harry Kokal Kokal 1ASIR B-->
    <h2>Modo Lista</h2>
    <dl>
        <!--Inicia un bucle sobre todos los elementos libro-->
        <xsl:for-each select="//libro">
        <!--Ordena los elementos libro por el valor de la etiqueta puntos en orden descendente (de mayor a menor)-->
        <xsl:sort select="puntos" order="descending"/>
        <!--Dentro del bucle, verifica si la posición del libro es menor o igual a 3. Solo se cojeran los tres primeros libros después de ordenar-->
        <xsl:if test="position() &lt;= 3">
        <!-- Imprime la posición, el título y los puntos del elemento libro-->
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