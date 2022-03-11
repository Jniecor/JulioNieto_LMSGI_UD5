<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Biblioteca personal</h1>
        <table>
        <tr bgcolor="#FF0000">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="Librería/Libro">
        <tr>  
            <td><xsl:value-of select="Título"/></td>   
            <td><xsl:value-of select="ISBN"/></td>
            <xsl:choose>
                <xsl:when test="Autor!='Joanne Rowling'">
                    <td bgcolor="#FFF000">
                        <xsl:value-of select="Autor"/>
                    </td>
                </xsl:when>
                <xsl:when test="Autor='JK Rowling'">
                    <td bgcolor="#FFF000">
                        <xsl:value-of select="Autor"/>
                    </td>
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="Precio &lt; 13">
                    <td bgcolor="#FF00FF">
                        <xsl:value-of select="Precio"/>
                    </td>
                </xsl:when>
                <xsl:when test="Precio &gt; 13">
                    <td bgcolor="#FF0000">
                        <xsl:value-of select="Precio"/>
                    </td>
                </xsl:when>     
            </xsl:choose>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>