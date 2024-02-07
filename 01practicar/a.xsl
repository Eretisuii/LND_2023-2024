<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
    <html>
        <head>
            <meta charset="UTF-8"/>
            <link rel="stylesheet" href="a.css"/>
            <title>Document</title>
        </head>
        <body>
            <h1>Mostrar Elementos y Atributos</h1>
            <ul>
                <li><xsl:value-of select="//ciclo/nombre[1]"/></li>
                <li><xsl:value-of select="//ciclo/nombre[2]"/></li>
                <li><xsl:value-of select="//ciclo/nombre[3]"/></li>
            </ul>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>