<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.0">
	 <xsl:import href="file:///usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl"/>

<xsl:param name="paper.type">A4</xsl:param>
<xsl:param name="body.font.master">11</xsl:param>
<xsl:param name="body.font.family">Liberation Sans</xsl:param>
<xsl:param name="body.margin.top">2.5cm</xsl:param>
<xsl:param name="region.before.extent">2cm</xsl:param>
<xsl:param name="body.start.indent">0pt</xsl:param>
<xsl:param name="admon.graphics">1</xsl:param>
<xsl:param name="admon.graphics.extension">.svg</xsl:param>
<xsl:param name="admon.graphics.path">/usr/share/xml/docbook/stylesheet/nwalsh/images/</xsl:param>

<xsl:attribute-set name="section.title.level1.properties">
  <xsl:attribute name="font-size">18pt</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="section.title.level2.properties">
  <xsl:attribute name="font-size">14pt</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="section.title.level3.properties">
  <xsl:attribute name="font-size">14pt</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="section.title.level4.properties">
  <xsl:attribute name="font-size">11pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="toc.margin.properties">
	<xsl:attribute name="break-after">page</xsl:attribute>
</xsl:attribute-set>

<xsl:template name="header.content">  
	<xsl:param name="pageclass" select="''"/>
	<xsl:param name="sequence" select="''"/>
	<xsl:param name="position" select="''"/>
	<xsl:param name="gentext-key" select="''"/>

<!-- sequence can be odd, even, first, blank -->
<!-- position can be left, center, right -->
<xsl:choose>
	<xsl:when test="$position = 'center'">
		<fo:block>
			<fo:external-graphic content-width="16cm">
				<xsl:attribute name="src">
					<xsl:call-template name="fo-external-image">
						<xsl:with-param name="filename" select="'enteteefs.png'"/>
					</xsl:call-template>
				</xsl:attribute>
			</fo:external-graphic>
		</fo:block>
	</xsl:when>
</xsl:choose>
</xsl:template>

<xsl:template name="head.sep.rule">
  <xsl:param name="pageclass"/>
  <xsl:param name="sequence"/>
  <xsl:param name="gentext-key"/>
</xsl:template>

<xsl:template name="article.titlepage.recto">
  <fo:block background-color="#daddec" text-align="left" color="#333399" padding-left="1em" padding-top="3pt" padding-bottom="3pt" margin-top="6pt" padding-right="1em" margin-bottom="12pt" font-size="11pt">
	  <fo:block>DSI - Direction des systèmes d'information</fo:block>
	  <fo:block margin-top="6pt" margin-bottom="6pt" border-top-style="solid" border-color="#000080"></fo:block>
	  <fo:block font-size="18pt"><xsl:value-of select="articleinfo/title"></xsl:value-of></fo:block>
	  <!--	  <fo:block>Document de conception</fo:block> --> 
	  <fo:block><xsl:value-of select="articleinfo/releaseinfo"></xsl:value-of></fo:block>
	  <fo:block><xsl:value-of select="articleinfo/date"></xsl:value-of></fo:block>
	  <fo:block><xsl:value-of select="articleinfo/biblioid"></xsl:value-of></fo:block>
	</fo:block>
</xsl:template>

</xsl:stylesheet>
