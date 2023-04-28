<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:include href="albumPhotos.styles.xsl"/>
	<xsl:template match="pages/page">
		<fo:block text-align="center" id="page-{position()}">
			<xsl:if test="position()>1">
				<xsl:attribute name="break-before">page</xsl:attribute>
			</xsl:if>
			<fo:table>
				<fo:table-body>
					<fo:table-row xsl:use-attribute-sets="rowHeight">
						<xsl:apply-templates select="image[position() &lt;= 2]"/>
					</fo:table-row>
					<xsl:if test="count(image) > 2">
						<fo:table-row>
							<xsl:apply-templates select="image[position() &gt; 2]"/>
						</fo:table-row>
					</xsl:if>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template match="page/image">
		<fo:table-cell xsl:use-attribute-sets="cellWidth">
			<fo:block xsl:use-attribute-sets="bigText underline centerCell">
				<xsl:variable name="srcFullPath">
					<xsl:apply-templates select="@path"/>
				</xsl:variable>
				<fo:external-graphic src="{$srcFullPath}" scaling="uniform" xsl:use-attribute-sets="imageSize"/>
				<fo:block/>
				<xsl:value-of select="."/>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template match="image/@path">
		<xsl:value-of select="."/>
		<xsl:value-of select="../@href"/>
	</xsl:template>
</xsl:stylesheet>
