<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:attribute-set name="centerCell">
		<xsl:attribute name="text-align">center</xsl:attribute>
		<xsl:attribute name="padding-top">1cm</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="imageSize">
		<xsl:attribute name="content-width">98mm</xsl:attribute>
		<xsl:attribute name="content-height">98mm</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="breakPageBefore">
		<xsl:attribute name="break-before">page</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="bigText">
		<xsl:attribute name="font-weight">900</xsl:attribute>
		<xsl:attribute name="font-size">large</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="underline">
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
	</xsl:attribute-set>
		<xsl:attribute-set name="cellWidth">
		<xsl:attribute name="width">100mm</xsl:attribute>
		<xsl:attribute name="border">0.3mm solid #ACACAC</xsl:attribute>
	</xsl:attribute-set>
		<xsl:attribute-set name="rowHeight">
		<xsl:attribute name="height">110mm</xsl:attribute>
	</xsl:attribute-set>
</xsl:stylesheet>
