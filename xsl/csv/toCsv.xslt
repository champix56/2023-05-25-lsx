<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM "entities.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:text>type;date facture;idclient;montant total&newLine;</xsl:text>
		<xsl:for-each select="//facture">
			<xsl:value-of select="translate(@type,'FD','fd') "/>
			<xsl:text>;</xsl:text>
			<xsl:value-of select="@datefacture"/>
			<xsl:text>;</xsl:text>
			<xsl:value-of select="@idclient"/>
			<xsl:text>;</xsl:text>
			<xsl:value-of select="round(sum(.//stotligne) * 100) div 100"/>
			<xsl:text>&newLine;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>