<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Julio Nieto</h1>
        <table>
        <tr bgcolor="FF0000">
            <th>Título</th>
            <th>Autor</th>
        </tr>
        <xsl:for-each select="Librería/Libro">
        <tr>
            <td><xsl:value-of select="Título"/></td>
            <td><xsl:value-of select="Autor"/></td>
        </tr>
        </xsl:for-each>    
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>