<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>Zoo</title>
            </head>
            <body>
            <h1>Zvířata naší zoo</h1>
              <h2>Zvířata</h2>
                <table style="width:150%;" border="5">
                    <tr bgcolor="#ADD8E6"  style="color:#54000">
                        <th>Jméno</th>
                        <th>Lokace</th>
                        <th>Typ krmení</th>
                        <th>Hl. chovatel</th>
                        <th>Veterinář</th>
                        <th>Rok narození</th>
                        <th>Druh</th>
                        <th>Potomci</th>
                        <th>Kastrace</th>
                        <th>Výběh</th>
                        <th>Země narození</th>
                        <th>Vedlejší chovatel</th>
                        <th>specialista</th>
                        <th>Informace o druhu</th>
                    </tr>
                    <xsl:for-each select="/zoo/zvire">
                        <xsl:sort select="rok_narozeni"/>
                        <tr>
                            <td><xsl:value-of select="jmeno"/></td>
                            <td><xsl:value-of select="lokace"/></td>
                            <td><xsl:value-of select="krmeni"/></td>
                            <td><xsl:value-of select="hlavni_chovatel"/></td> 
                            <td><xsl:value-of select="veterinar"/></td> 
                            <td><xsl:value-of select="rok_narozeni"/></td>
                            <td><xsl:value-of select="druh"/></td>
                            <td><xsl:value-of select="potomci"/></td>
                            <td><xsl:value-of select="kastrace"/></td>
                            <td><xsl:value-of select="vybeh"/></td>
                            <td><xsl:value-of select="zeme_narozeni"/></td>
                            <td><xsl:value-of select="vedlejsi_chovatek"/></td>
                            <td><xsl:value-of select="specialista"/></td>
                            <td><xsl:value-of select="vedecka_klasifikace_cz"/></td>
                        </tr>
                    </xsl:for-each>
                </table>           
            </body>
         </html>
    </xsl:template>
</xsl:stylesheet>