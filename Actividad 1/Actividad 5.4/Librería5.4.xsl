<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Biblioteca personal de Julio Nieto</h1>
        <table>
        <tr bgcolor="red">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Paginas</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="Librería/Libro">
            <tr>
                <xsl:choose>
                <xsl:when test="Precio &lt; 8">
                    <td bgcolor="blue"><xsl:value-of select="ISBN"/></td>
                    <td bgcolor="blue"><xsl:value-of select="Título"/></td>
                    <td bgcolor="blue"><xsl:value-of select="Autor"/></td>
                    <td bgcolor="blue"><xsl:value-of select="NumPag"/></td>
                    <td bgcolor="blue"><xsl:value-of select="Precio"/></td>
                </xsl:when>
                <xsl:when test="Precio &gt; 8">
                    <td bgcolor="yellow"><xsl:value-of select="ISBN"/></td>
                    <td bgcolor="yellow"><xsl:value-of select="Título"/></td>
                    <td bgcolor="yellow"><xsl:value-of select="Autor"/></td>
                    <td bgcolor="yellow"><xsl:value-of select="NumPag"/></td>
                    <td bgcolor="yellow"><xsl:value-of select="Precio"/></td>
                </xsl:when>
                </xsl:choose>
            </tr>
        </xsl:for-each>   
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>