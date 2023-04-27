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
						h1{color :blue;}
						#facture-8{}
				</style>
			</head>
			<body>
				<h1>Factures en date du : <xsl:value-of select="factures/@dateeditionXML"/></h1>
				<hr/>
				<xsl:apply-templates select="//facture"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="facture">
		<div class="facture" id="facture-{@numfacture}">
			<div class="expediteur">expediteur</div>
			<div class="destinataire">destinataire</div>
			<div class="numerofacture">Facture N°XX</div>
			<table>
				<thead>
					<tr>
						<th>ref</th>
						<th>designation</th>
						<th>€/Unit.</th>
						<th>Quant.</th>
						<th>S-total</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th></th>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="4">Montant HT</th>
						<th>XXX.XX€</th>
					</tr>
					<tr>
						<th colspan="4">Montant TVA</th>
						<th>XXX.XX€</th>
					</tr>
					<tr>
						<th colspan="4">Montant TTC</th>
						<th>XXX.XX€</th>
					</tr>
				</tfoot>
			</table>
		
		</div>
	</xsl:template>
</xsl:stylesheet>
