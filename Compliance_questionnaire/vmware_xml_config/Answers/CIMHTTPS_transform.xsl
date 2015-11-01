<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:audit="urn:internalvim25">

    <xsl:template match="audit:returnval">

        <xsl:for-each select="audit:propSet/audit:val[@xsi:type='HostConfigInfo']/audit:firewall/audit:ruleset">
            <xsl:if test="audit:key='CIMHttpsServer'">
                Key <xsl:value-of select="audit:key"/>
                Label <xsl:value-of select="audit:label"/>
                Enabled <xsl:value-of select="audit:enabled"/>
                Required <xsl:value-of select="audit:required"/>
                Port <xsl:value-of select="audit:rule/audit:port"/>
                Direction <xsl:value-of select="audit:rule/audit:direction"/>
                Protocol <xsl:value-of select="audit:rule/audit:protocol"/>
            </xsl:if>
        </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>
	
