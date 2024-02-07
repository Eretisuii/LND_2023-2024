<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/"> 
    <!--Harry Kokal Kokal 1ASIR B-->
    <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Autor y Libros Escritos</title>
            <link rel="stylesheet" href="estilos.css"/>
        </head>
        <body>
        <h1>Autor y Libros Escritos</h1>
        <table>
            <tr>
                <th class="negro-blanco">Autor</th>
                <th class="negro-blanco">Total</th>
                <th class="negro-blanco">Total (%)</th>
            </tr>
            <!--Crea una variable llamada $libros que contiene todos los nodos libro en el documento-->
            <xsl:variable name="libros" select="//libro" />
            <!--Inicia un bucle for-each que itera sobre los libros y selecciona solo aquellos cuyo autor no coincide con el autor 
            de su hermano anterior (es decir, el primer libro de cada autor)-->
            <xsl:for-each select="$libros[not(autor = preceding-sibling::libro/autor)]">
                <!--Ordena los libros en orden descendente según la cantidad de libros del autor actual-->
                <xsl:sort select="count($libros[autor = current()/autor])" order="descending"/>
                <!--Crea una variable $autor que almacena el valor del autor actual-->
                <xsl:variable name="autor" select="autor"/>
                <!--Crea una variable $totalLibrosAutor que almacena la cantidad total de libros del autor actual-->
                <xsl:variable name="totalLibros" select="count($libros[autor = $autor])" />
                <!--Crea una variable $porcentaje que almacena el porcentaje de libros del autor actual con respecto al total de libros-->
                <xsl:variable name="porcentaje" select="format-number(($totalLibros div count($libros)) * 100, '0')"/>
                <tr>
                    <!--Muestra el autor-->
                    <td><xsl:value-of select="$autor"/></td>
                    <!-- Muestra el valor del autor-->
                    <td><xsl:value-of select="$totalLibros"/></td>
                    <!--Muestra el porcentaje de libros del autor con respecto al total de libros-->
                    <td><xsl:value-of select="$porcentaje"/>%</td>
                </tr>
            </xsl:for-each>
        </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>