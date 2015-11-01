<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:audit="urn:internalvim25">

<xsl:template match="audit:returnval">

<xsl:for-each select="audit:propSet/audit:val[@xsi:type='HostConfigInfo']/audit:service/audit:service">

    <xsl:if test="audit:running='true'">
        
    Key <xsl:value-of select="audit:key"/>
    Label <xsl:value-of select="audit:label"/>
    Required <xsl:value-of select="audit:required"/>
    Uninstallable <xsl:value-of select="audit:uninstallable"/>
    Running <xsl:value-of select="audit:running"/>
    Policy <xsl:value-of select="audit:policy"/>

    </xsl:if>

</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
	
