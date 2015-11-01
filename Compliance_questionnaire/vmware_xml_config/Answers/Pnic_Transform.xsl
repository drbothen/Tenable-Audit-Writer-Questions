<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:audit="urn:internalvim25">

<xsl:template match="audit:returnval">

<xsl:for-each select="audit:propSet/audit:val[@xsi:type='HostConfigInfo']/audit:network/audit:pnic">

    Key <xsl:value-of select="audit:key"/>
    Device <xsl:value-of select="audit:device"/>
    PCI <xsl:value-of select="audit:pci"/>
    Driver <xsl:value-of select="audit:driver"/>
    Speed <xsl:value-of select="audit:linkSpeed/audit:speedMb"/>
    Duplex <xsl:value-of select="audit:linkSpeed/audit:duplex"/>
    MAC <xsl:value-of select="audit:mac"/>
    IP <xsl:value-of select="audit:spec/audit:ip/audit:ipAddress"/>
    <xsl:for-each select="audit:validLinkSpecification">
        Speed <xsl:value-of select="audit:speedMb"/>
        Duplex <xsl:value-of select="audit:duplex"/>
    </xsl:for-each>

</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
	
