<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--formats de papier-->
			<fo:layout-master-set>
				<!--un format de papier unique-->
				<fo:simple-page-master master-name="A4" page-height="297mm" page-width="210mm">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!--chapitres-->
			<fo:page-sequence master-reference="A4">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:apply-templates select="//page"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="pages/page">
		<fo:block>
			<xsl:if test="position()>1">
				<xsl:attribute name="break-before">page</xsl:attribute>
			</xsl:if>
			<fo:table>
				<fo:table-body>
					<fo:table-row>
						<xsl:apply-templates select="image"/>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template match="page/image">
		<fo:table-cell>
			<fo:block>
					<fo:external-graphic src="{@path}{@href}" content-height="4cm" content-width="4cm" scaling="uniform"/>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
</xsl:stylesheet>
