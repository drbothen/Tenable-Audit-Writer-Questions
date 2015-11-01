<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:audit="urn:internalvim25">

<xsl:template match="audit:returnval">

<xsl:for-each select="audit:propSet/audit:val[@xsi:type='HostConfigInfo']/audit:firewall/audit:ruleset">

    Incomming Blocked <xsl:value-of select="audit:defaultPolicy/audit:incomingBlocked"/>
    Out Going Blocked <xsl:value-of select="audit:defaultPolicy/audit:outgoingBlocked"/>

    Rule Sets
    <xsl:for-each select="audit:ruleset">

        Key <xsl:value-of select="audit:key"/>
        Label <xsl:value-of select="audit:label"/>
        Enabled <xsl:value-of select="audit:enabled"/>
        Required <xsl:value-of select="audit:required"/>
        Port <xsl:value-of select="audit:rule/audit:port"/>
        Direction <xsl:value-of select="audit:rule/audit:direction"/>
        Protocol <xsl:value-of select="audit:rule/audit:protocol"/>

    </xsl:for-each>

</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
	
