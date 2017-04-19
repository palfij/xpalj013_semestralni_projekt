<?xml version="1.0" encoding="UTF-8"?>
<!--github link:https://github.com/palfij/xpalj013_semestralni_projekt-->
<!--Výběr uživatelů s počtem prémium dnů více jak 10 včetně a následná transformace do JSON-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        {
        "radio":"<xsl:value-of select="radio_nastaveni/nazev" />",
        "styly": [
        <xsl:for-each select="radio_nastaveni/styl/uzivatele/user[premium-dnu >= 10]">
            <xsl:sort select="prijmeni" order="ascending"/>
            {
            "jmeno":"<xsl:value-of select="jmeno" />",
            "prijmeni":"<xsl:value-of select="prijmeni" />",    
            "e-mail":"<xsl:value-of select="e-mail" />", 
            "ID":"<xsl:value-of select="@id" />"
            }<xsl:if test="position() !=last()">,</xsl:if>
        </xsl:for-each>  
        ]
        }
    </xsl:template>
</xsl:stylesheet>
