<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet" xmlns:html="http://www.w3.org/TR/REC-html40">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<!--gen en sortie d'une PI pour excel-->
		<xsl:processing-instruction name="mso-application">progid="Excel.Sheet"</xsl:processing-instruction>
		<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet" xmlns:html="http://www.w3.org/TR/REC-html40">
			<DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
				<Author>champix</Author>
				<LastAuthor>champix</LastAuthor>
				<Created>2023-04-26T14:24:53Z</Created>
				<Version>16.00</Version>
			</DocumentProperties>
			<OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
				<AllowPNG/>
			</OfficeDocumentSettings>
			<ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
				<WindowHeight>9036</WindowHeight>
				<WindowWidth>19008</WindowWidth>
				<WindowTopX>32767</WindowTopX>
				<WindowTopY>32767</WindowTopY>
				<ProtectStructure>False</ProtectStructure>
				<ProtectWindows>False</ProtectWindows>
			</ExcelWorkbook>
			<Styles>
				<Style ss:ID="Default" ss:Name="Normal">
					<Alignment ss:Vertical="Bottom"/>
					<Borders/>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"/>
					<Interior/>
					<NumberFormat/>
					<Protection/>
				</Style>
				<Style ss:ID="m456939296">
					<Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s63">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
				</Style>
				<Style ss:ID="s66">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
					</Borders>
				</Style>
				<Style ss:ID="s67">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
					</Borders>
				</Style>
				<Style ss:ID="s68">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
					</Borders>
				</Style>
				<Style ss:ID="s72">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s76">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s77">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s79">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
					<NumberFormat ss:Format="[$-F800]dddd\,\ mmmm\ dd\,\ yyyy"/>
				</Style>
				<Style ss:ID="s80">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
					<NumberFormat ss:Format="#,##0.00\ &quot;€&quot;"/>
				</Style>
				<Style ss:ID="s81">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s82">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s90">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="22" ss:Color="#000000"/>
				</Style>
				<Style ss:ID="s95">
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="14" ss:Color="#70AD47" ss:Bold="1"/>
				</Style>
				<Style ss:ID="s100">
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="16" ss:Color="#4472C4" ss:Bold="1"/>
				</Style>
				<Style ss:ID="s105">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="16" ss:Color="#000000" ss:Bold="1"/>
					<NumberFormat ss:Format="#,##0.00\ &quot;€&quot;"/>
				</Style>
				<Style ss:ID="s113">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
					</Borders>
				</Style>
			</Styles>
			<Worksheet ss:Name="Feuil1">
				<Table ss:ExpandedColumnCount="8" ss:ExpandedRowCount="{9 + count(//facture)}" x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="62.400000000000006" ss:DefaultRowHeight="14.4">
					<Column ss:AutoFitWidth="0" ss:Width="18"/>
					<Column ss:Index="3" ss:Width="112.2"/>
					<Column ss:Index="6" ss:Width="64.8"/>
					<Column ss:Index="8" ss:AutoFitWidth="0" ss:Width="18.600000000000001"/>
					<Row ss:Index="2" ss:Height="28.8">
						<Cell ss:Index="2" ss:MergeAcross="5" ss:StyleID="s90">
							<Data ss:Type="String">facture en date du :<xsl:value-of select="/factures/@dateeditionXML"/>
							</Data>
						</Cell>
					</Row>
					<Row ss:Index="4" ss:Height="21">
						<Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s63">
							<Data ss:Type="String">Nombre de factures</Data>
						</Cell>
						<Cell ss:StyleID="s95">
							<Data ss:Type="Number">
								<xsl:value-of select="count(//facture[contains(@type,'acture')])"/>
							</Data>
						</Cell>
						<Cell ss:MergeAcross="1" ss:StyleID="s63">
							<Data ss:Type="String">Nombre de devis</Data>
						</Cell>
						<Cell ss:StyleID="s100">
							<Data ss:Type="Number">
								<xsl:value-of select="count(//facture[contains(@type,'evis')])"/>
							</Data>
						</Cell>
					</Row>
					<Row>
						<Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s63">
							<Data ss:Type="String">Montant total des factures</Data>
						</Cell>
						<Cell>
							<Data ss:Type="Number">
								<xsl:value-of select="sum(//facture[contains(@type,'acture')]//stotligne)"/>
							</Data>
						</Cell>
						<Cell ss:MergeAcross="1" ss:StyleID="s63">
							<Data ss:Type="String">Montant toal des devis</Data>
						</Cell>
						<Cell>
							<Data ss:Type="Number">
								<xsl:value-of select="sum(//facture[contains(@type,'evis')]//stotligne)"/>
							</Data>
						</Cell>
					</Row>
					<Row ss:Height="15"/>
					<Row ss:Height="15.600000000000001">
						<Cell ss:Index="2" ss:StyleID="s66">
							<Data ss:Type="String">position</Data>
						</Cell>
						<Cell ss:StyleID="s67">
							<Data ss:Type="String">date facture</Data>
						</Cell>
						<Cell ss:StyleID="s67">
							<Data ss:Type="String">idclient</Data>
						</Cell>
						<Cell ss:StyleID="s67">
							<Data ss:Type="String">type</Data>
						</Cell>
						<Cell ss:StyleID="s67">
							<Data ss:Type="String">Montant</Data>
						</Cell>
						<Cell ss:StyleID="s68">
							<Data ss:Type="String">nbArticle</Data>
						</Cell>
					</Row>
					<xsl:apply-templates select="//facture"/>
					<Row ss:Height="21.599999999999998">
						<Cell ss:Index="2" ss:StyleID="s77"/>
						<Cell ss:StyleID="s113"/>
						<Cell ss:MergeAcross="1" ss:StyleID="m456939296">
							<Data ss:Type="String">Total contenu :</Data>
						</Cell>
						<Cell ss:StyleID="s105" ss:Formula="=SUM(R[-1]C:R[-{count(//facture)}]C)">
							<Data ss:Type="Number"><xsl:value-of select="sum(//stotligne)"/></Data>
						</Cell>
						<Cell ss:StyleID="s76" ss:Formula="=SUM(R[-1]C:R[-{count(//facture)}]C)">
							<Data ss:Type="Number"><xsl:value-of select="count(//ligne)"/></Data>
						</Cell>
					</Row>
					<Row ss:Height="15"/>
				</Table>
				<WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
					<PageSetup>
						<Header x:Margin="0.3"/>
						<Footer x:Margin="0.3"/>
						<PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
					</PageSetup>
					<Print>
						<ValidPrinterInfo/>
						<PaperSizeIndex>9</PaperSizeIndex>
						<HorizontalResolution>600</HorizontalResolution>
						<VerticalResolution>600</VerticalResolution>
					</Print>
					<Selected/>
					<Panes>
						<Pane>
							<Number>3</Number>
							<RangeSelection>R1C1:R10C8</RangeSelection>
						</Pane>
					</Panes>
					<ProtectObjects>False</ProtectObjects>
					<ProtectScenarios>False</ProtectScenarios>
				</WorksheetOptions>
			</Worksheet>
		</Workbook>
	</xsl:template>
	<xsl:template match="facture">
		<Row ss:Height="15">
			<Cell ss:Index="2" ss:StyleID="s81">
				<Data ss:Type="Number"><xsl:value-of select="position()"/></Data>
			</Cell>
			<Cell ss:StyleID="s79">
				<Data ss:Type="DateTime"><xsl:value-of select="@datefacture"/>T00:00:00.000</Data>
			</Cell>
			<Cell ss:StyleID="s82">
				<Data ss:Type="Number"><xsl:value-of select="@idclient"/></Data>
			</Cell>
			<Cell ss:StyleID="s82">
				<Data ss:Type="String"><xsl:value-of select="translate(@type,'fd','FD')"/></Data>
			</Cell>
			<Cell ss:StyleID="s80">
				<Data ss:Type="Number"><xsl:value-of select="sum(.//stotligne)"/></Data>
			</Cell>
			<Cell ss:StyleID="s72">
				<Data ss:Type="Number"><xsl:value-of select="count(.//ligne)"/></Data>
			</Cell>
		</Row>
	</xsl:template>
</xsl:stylesheet>
