<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Biblioteca personal de Julio</h1>
        <table border="1">
        <tr bgcolor="FF0000">
            <th>Título</th>
            <th>Artista</th>
            <th>Año</th>
            <th>Sello</th>
            <th>Canciones</th>
        </tr>
        <xsl:for-each select="cdteca/cd">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="artista"/></td>
            <td><xsl:value-of select="sello"/></td>
            <td><xsl:value-of select="año"/></td>
            <td>
                <xsl:for-each select="cancion">
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each>
                <xsl:value-of select="cancion"/>
            </td>
        </tr>
        </xsl:for-each>    
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>