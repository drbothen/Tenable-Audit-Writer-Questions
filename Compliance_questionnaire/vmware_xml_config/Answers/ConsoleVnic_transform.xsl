<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:audit="urn:internalvim25">

<xsl:template match="audit:returnval">

<xsl:for-each select="audit:propSet/audit:val[@xsi:type='HostConfigInfo']/audit:network/audit:consoleVnic">

    Device <xsl:value-of select="audit:device"/>
    Key <xsl:value-of select="audit:key"/>
    Port Group <xsl:value-of select="audit:portgroup"/>
    Port <xsl:value-of select="audit:port"/>
    DHCP Enabled <xsl:value-of select="audit:spec/audit:ip/audit:dhcp"/>
    IP <xsl:value-of select="audit:spec/audit:ip/audit:ipAddress"/>
    Subnet <xsl:value-of select="audit:spec/audit:ip/audit:subnetMask"/>
    MAC <xsl:value-of select="audit:spec/audit:mac"/>


</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
	
