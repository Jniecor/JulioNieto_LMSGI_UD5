<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Recopilacion de discos</h1>
        <table border="1">
        <tr bgcolor="FF0000">
            <th>Artista</th>
            <th>Canciones</th>
        </tr>
        <xsl:for-each select="cdteca/cd">
        <xsl:if test="artista='Kiko Rivera'">
            <tr>
                <td><xsl:value-of select="artista"/></td>
                <td>
                    <xsl:for-each select="cancion">
                        <xsl:value-of select="."/>
                        <br/>
                    </xsl:for-each>
                    <xsl:value-of select="cancion"/>
                </td>
            </tr>
    </xsl:if>
        </xsl:for-each>    
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>