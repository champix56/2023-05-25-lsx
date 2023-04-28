<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="A4">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:block text-align="center">stats des ventes</fo:block>
						<fo:block text-align="center" display-align="center">
							<fo:instream-foreign-object content-height="15cm" content-width="15cm" scaling="uniform">
								<svg viewBox="-20 -20 200 200" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<desc/>
									<defs>
										<symbol id="Axes">
											<line x1="20" y1="0" x2="20" y2="101" stroke="black" stroke-width="2"/>
											<polygon points="20,-1 25,5 15,5"/>
											<text x="112" y="115">X</text>
											<line x1="20" y1="100" x2="120" y2="100" stroke="black" stroke-width="2"/>
											<polygon points="121,100 115,95 115,105"/>
											<text x="5" y="10">Y</text>
											<rect x="40" y="97.5" width="1" height="5" style="fill:black"/>
											<text x="35" y="115">10</text>
											<rect x="70" y="97.5" width="1" height="5" style="fill:black"/>
											<text x="65" y="115">20</text>
											<rect x="100" y="97.5" width="1" height="5" style="fill:black"/>
											<text x="95" y="115">30</text>
											<rect x="18.5" y="20" width="5" height="1" style="fill:black"/>
											<text x="3" y="25">10</text>
											<rect x="18.5" y="50" width="5" height="1" style="fill:black"/>
											<text x="3" y="55">20</text>
											<rect x="18" y="80" width="5" height="1" style="fill:black"/>
											<text x="3" y="85">30</text>
										</symbol>
										<linearGradient id="effetArrondiVertical" x1="0%" x2="100%" y1="20%" y2="0">
											<stop offset="0%" stop-color="#B7CA79"/>
											<stop offset="80%" stop-color="#677E52"/>
										</linearGradient>
									</defs>
									
									<xsl:variable name="maxValue" select="max(//ligneAvg)"/>
									<xsl:variable name="ratioH" select="100 div $maxValue"/>
									<xsl:variable name="widthBar" select="100 div count(//facture)"/>
									 <xsl:for-each select="//facture">
										 <xsl:variable name="height" select="ligneAvg * $ratioH"/>
										<rect x="{7+ $ratioW * (position()-1)}" y="{100 - $height}" width="{$widthBar -5}" height="{$height}" fill="url(#effetArrondiVertical)"/>
									</xsl:for-each>
									<use xlink:href="#Axes" x="-15" y="0"/>
								</svg>
							</fo:instream-foreign-object>
						</fo:block>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
