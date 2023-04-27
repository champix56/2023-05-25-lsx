<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Factures en date du : <xsl:value-of select="factures/@dateeditionXML"/></title>
				<style type="text/css">
						.facture{}
						.numerofacture{}
						.expediteur{}
						.destinataire{}
				</style>
			</head>
			<body>
				<h1>Factures en date du : <xsl:value-of select="factures/@dateeditionXML"/></h1>
				<hr/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
