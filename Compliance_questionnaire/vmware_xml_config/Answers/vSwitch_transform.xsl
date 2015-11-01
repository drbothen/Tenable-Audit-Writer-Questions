<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:audit="urn:internalvim25">

<xsl:template match="audit:returnval">

<xsl:for-each select="audit:propSet/audit:val[@xsi:type='HostConfigInfo']/audit:network/audit:vswitch">

Name <xsl:value-of select="audit:name"/>
Key  <xsl:value-of select="audit:key"/>
NumPorts <xsl:value-of select="audit:numPorts"/>
NumPortsAvailable <xsl:value-of select="audit:numPortsAvailable"/>
MTU <xsl:value-of select="audit:mtu"/>
PortGroup <xsl:value-of select="audit:portgroup"/>
Pnic <xsl:value-of select="audit:pnic"/>

</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
	
