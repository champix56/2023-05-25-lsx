<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="pages/page">
		<fo:block>
			<xsl:if test="position()>1">
				<xsl:attribute name="break-before">page</xsl:attribute>
			</xsl:if>
			<fo:table>
				<fo:table-body>
					<fo:table-row>
						<xsl:apply-templates select="image[position() &lt;= 2]"/>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template match="page/image">
		<fo:table-cell>
			<fo:block text-align="center" padding-top="1cm">
				<xsl:variable name="srcFullPath">
					<xsl:apply-templates select="@path"/>
				</xsl:variable>
				<fo:external-graphic src="{$srcFullPath}" content-height="4cm" content-width="4cm" scaling="uniform"/>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template match="image/@path">
		<xsl:value-of select="."/>
		<xsl:value-of select="../@href"/>
	</xsl:template>
</xsl:stylesheet>
