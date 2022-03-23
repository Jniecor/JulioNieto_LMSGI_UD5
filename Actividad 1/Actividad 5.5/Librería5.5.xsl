<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <xsl:apply-templates/>
    </body>
</html>
</xsl:template>
<xsl:template match="Librería">
    <h2>Biblioteca personal de Julio Nieto</h2>
    <table>
        <tr bgcolor="red">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Páginas</th>
        </tr>
        <xsl:apply-templates select="Libro"/>
    </table>
</xsl:template>
<xsl:template match="Libro">
    <tr>
        <td>
            <xsl:apply-templates select="ISBN"/></td>
            <xsl:apply-templates select="Título"/>
            <xsl:apply-templates select="Autor"/>
            <td><xsl:value-of select="Precio"/> </td>
        <xsl:choose>
            <xsl:when test="NumPag &gt;350">
                <xsl:apply-templates select="NumPag"/>
            </xsl:when>
            <xsl:otherwise>
                <td>
                    <xsl:value-of select="NumPag"/>
                </td>
            </xsl:otherwise>
        </xsl:choose>
    </tr>
</xsl:template>
<xsl:template match="Título">
    <td bgcolor="green"><xsl:value-of select="."/></td>
</xsl:template>
<xsl:template match="Autor">
    <td bgcolor="blue"><xsl:value-of select="."/></td>
</xsl:template>
<xsl:template match="NumPag">
    <td bgcolor="red">
        <xsl:value-of select="."/>
    </td>
</xsl:template>
</xsl:stylesheet>