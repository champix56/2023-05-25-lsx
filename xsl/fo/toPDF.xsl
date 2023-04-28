<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="templatesImagesAndPage.xsl"/>
	<xsl:output method="xml" version="1.0" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--formats de papier-->
			<fo:layout-master-set>
				<!--un format de papier unique-->
				<fo:simple-page-master master-name="A4" page-height="297mm" page-width="210mm">
					<fo:region-body background-image="{photos/config/backgroundAlpha/image/@path}{photos/config/backgroundAlpha/image/@href}" margin-top="2cm" margin-bottom="1cm"/>
					<xsl:if test="photos/config/titleEachPages='True' ">
						<fo:region-before extent="2cm"/>
					</xsl:if>
					<xsl:if test="photos/config/footerEachPages='True' ">
						<fo:region-after extent="1cm"/>
					</xsl:if>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!--chapitres-->
			<fo:page-sequence master-reference="A4">
				<xsl:if test="photos/config/titleEachPages='True' ">
					<fo:static-content flow-name="xsl-region-before">
						<fo:block text-align="center" font-size="38pt" margin-top="5mm">
							<xsl:value-of select="photos/titre"/>
						</fo:block>
					</fo:static-content>
				</xsl:if>
				<xsl:if test="photos/config/footerEachPages='True' ">
					<fo:static-content flow-name="xsl-region-after">
						<fo:block text-align="center">
							<fo:page-number/> / <fo:page-number-citation ref-id="last-page"/>
						</fo:block>
					</fo:static-content>
				</xsl:if>
				<fo:flow flow-name="xsl-region-body">
					<fo:block xsl:use-attribute-sets="breakPageBefore">
						<xsl:apply-templates select="//page"/>
						<fo:block id="last-page"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
