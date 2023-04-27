<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#xA0;">
	<!ENTITY euro "&#x20ac;">
	<!ENTITY signature "DESORBAIX Alexandre">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:param name="tva" select="0.2"/>
	<!--<xsl:variable name="docClient" select="document('../clients.xml')"/>-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Factures en date du : <xsl:value-of select="factures/@dateeditionXML"/>
				</title>
				<style type="text/css">
						.facture{
							width:200mm;
							height:287mm;
							border:1px solid black;
							margin-left:auto;
							margin-right:auto;
							page-break-before:always;
						}
						.numerofacture{
							width:12cm;
							margin-left:4cm;
							margin-right:4cm;
							text-align:center;
							border:2px solid black;
						}
						.expediteur,.destinataire{
							width:8cm;
							height:3cm;
							padding:5mm;
							border:1px solid black;
						}
						.expediteur{
							margin-top:2cm;
							margin-left:1cm;
						}
						.destinataire{
							margin-top:3cm;
							margin-bottom:1.5cm;
							margin-left:11cm;
						}
						table{width:18cm;margin-left:1cm;margin-top:1.5cm;}
						thead th{background-color:#DFDFDF;}
						h1{color :blue;}
						.green{color:green;}
						.blue{color:skyblue;}
						li{display:inline;padding : 5px;}
						#facture-8{}
				</style>
			</head>
			<body>
				<h1>Factures en date du : <xsl:value-of select="factures/@dateeditionXML"/></h1>
				<h3>Liste des factures :</h3>
				<ul>
					<xsl:apply-templates select="//facture" mode="toc"/>
				</ul>
				<table>
					<tbody>
						<tr>
							<th></th>
						</tr>
					</tbody>
					<xsl:call-template name="total-facture"/>
				</table>	
				<hr/>
				<xsl:apply-templates select="//facture"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="facture" mode="toc">
		<li><a href="#facture-{@numfacture}"><xsl:value-of select="translate(@type,'fd','FD')"/> n°<xsl:value-of select="@numfacture"/></a></li>
	</xsl:template>	
	<xsl:template match="facture">
		<div class="facture" id="facture-{@numfacture}">
			<!--selection du noeud sans preservation de context pour declenchement du rendu de @rsets-->
			<xsl:apply-templates select="/factures/@rsets"/>
			<xsl:variable name="idc" select="@idclient"/>
			<xsl:variable name="factureClient" select="document('../clients.xml')/clients/client[@id=$idc]"/>
			<xsl:apply-templates select="$factureClient"/>
			<xsl:apply-templates select="@numfacture"/>
			<xsl:apply-templates select="lignes"/>
		</div>
	</xsl:template>
	<xsl:template match="clients/client">
		<div class="destinataire">
				<xsl:value-of select="destinataire"/><br/>
				<xsl:value-of select="adr1"/><br/>
				<xsl:value-of select="adr2"/><br/>
				<xsl:value-of select="cp"/>&nbsp;<xsl:value-of select="ville"/><br/>
		</div>
	</xsl:template>
	<xsl:template match="lignes">
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
				<xsl:apply-templates select="ligne"/>
			</tbody>
			<xsl:call-template name="total-facture">
				<xsl:with-param name="nodesStotligne">
					<xsl:for-each select="ligne">
						<ligne>
							<stotligne><xsl:value-of select="round(stotligne*100) div 100"/></stotligne>
						</ligne>
					</xsl:for-each>
				</xsl:with-param>
			</xsl:call-template>
		</table>
	</xsl:template>
	<xsl:template match="ligne">
		<tr>
		<!--class conditionnel pair/impair pour gestion couleur de fond un sur deux en css-->
			<xsl:attribute name="class">
				<xsl:choose>
					<xsl:when test="position() mod 2 = 0">ligne-blue</xsl:when>
					<xsl:otherwise>ligne-grey</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:apply-templates select="*"/>
		</tr>
	</xsl:template>
	<!--
		template pour effectuer une NON presentation du noeud cible mais déclencher lors du apply
		ELEVATION DE PRIOTITY pour eviter que ce noeud declenche le template en dessous qui a la meme priorité de match
	-->
	<xsl:template match="ligne/surface" priority="2" />
	<!--traitement generique d'un enfant de ligne-->
	<xsl:template match="ligne/*">
		<td><xsl:value-of select="."/></td>
	</xsl:template>
	<!--declarer apres ligne/* car priority de match similaire, il est possible grace à @priority de le declarer avant et elever la priority-->
	<xsl:template match="ligne/phtByUnit | ligne/stotligne">
		<td><xsl:value-of select="format-number(round(.*100) div 100,'0.00€')"/></td>
	</xsl:template>
	<!--	<xsl:template match="@type[contains(.''acture)]"></xsl:template>
	<xsl:template match="@type"></xsl:template>-->
	<xsl:template match="@numfacture">
		<div>
			<!--construction dynamique de la valeur de l'attribut de sortie class-->
			<xsl:attribute name="class">numerofacture<xsl:choose><xsl:when test="contains(../@type,'acture')"> blue</xsl:when><!--2 eme cas possible--><xsl:when test="contains(../@type,'nc')"> nc</xsl:when><!--cas par defaut--><xsl:otherwise> green</xsl:otherwise></xsl:choose></xsl:attribute>
			<xsl:value-of select="translate(../@type,'fd','FD')"/> N°<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="@rsets">
		<div class="expediteur">
			<xsl:value-of select="."/>
			<br/>
			<!--preservation du context du template-->
			<xsl:value-of select="../@adr1ets"/>
			<br/>
			<!--un seum cas a traiter pas de cas contraire (pas de else if ou de else sinon usage de choose/when/otherwise)-->
			<xsl:if test="string-length(/factures/@adr2ets)>0">
				<!--sans preservation du context passage par noeud racine-->
				<xsl:value-of select="/factures/@adr2ets"/>
				<br/>
			</xsl:if>
			<!--usage d'entity ou de xsl:text (les espaces de xsl text seront normalisées par html à l'etape d'affichage-->
			<xsl:value-of select="/factures/@cpets"/>&nbsp;<xsl:value-of select="/factures/@villeets"/>
		</div>
	</xsl:template>
	<xsl:decimal-format name="euro-curr" decimal-separator=","	grouping-separator=" "/>
	<xsl:template name="total-facture">
		<xsl:param name="nodesStotligne" select=".//ligne"/>
		<tfoot>
				<xsl:variable name="pht" select="round(sum($nodesStotligne//stotligne)*100) div 100"/>
				<xsl:variable name="ptva" select="round($pht *$tva*100) div 100"/>
				<tr>
					<th colspan="4">Montant HT</th>
					<!--attention a l'arrondi a gerrer-->
					<th><xsl:value-of select="format-number($pht,'0,00€','euro-curr')"/></th>
				</tr>
				<tr>
					<th colspan="4">Montant TVA</th>
						<th><xsl:value-of select="format-number($ptva,'0,00€','euro-curr')"/></th>
				</tr>
				<tr>
					<th colspan="4">Montant TTC</th>
					<th><xsl:value-of select="format-number($pht+$ptva,'0,00€','euro-curr')"/></th>
				</tr>
			</tfoot>
	</xsl:template>
</xsl:stylesheet>
