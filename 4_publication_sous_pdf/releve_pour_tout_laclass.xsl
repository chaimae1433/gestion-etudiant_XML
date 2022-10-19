<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.stylusstudio.com/xquery">

    <xsl:template match="Notes">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page" margin-left="0cm" margin-right="0cm"
                    margin-bottom="1cm" margin-top="0cm" page-width="20cm" page-height="25cm">
                    <fo:region-body margin-bottom="2cm" margin-top="2cm" margin-left="3cm"
                        margin-right="3cm"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="A2">
                    <fo:repeatable-page-master-reference master-reference="default-page"
                        maximum-repeats="no-limit"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
			<xsl:for-each select="Student">
            <fo:page-sequence master-reference="default-page">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:block>
                           <fo:block text-align="center">
                            <fo:block>
                                <fo:inline font-family="Arial" font-size="20pt" color="green" margin-bottom="15pt">
                                    <xsl:text>releve de note pour l'etudiant </xsl:text>
									<xsl:value-of select="FirstName"/>
									<xsl:value-of select="LastName"/>
                                </fo:inline>
								</fo:block></fo:block>
                        </fo:block>
                        <fo:block>
                            <fo:table width="100%" border-style="outset" border-width="2pt" border-color="blue" background-repeat="repeat">
                                <fo:table-column/>
                                <fo:table-column/>
                                <fo:table-column/>
                                <fo:table-column/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block color="blueviolet">
                                                <xsl:text>Code Module</xsl:text>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block color="blueviolet">
                                                <xsl:text>designation Module</xsl:text>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block color="blueviolet">
                                                    <xsl:text>Session</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block color="blueviolet">
                                                <xsl:text>Note/20</xsl:text>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[1]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[1]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>1</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[1]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[2]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[2]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>1</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[2]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[3]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[3]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>1</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[3]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[4]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[4]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>1</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[4]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[5]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[5]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>1</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[5]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[6]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[6]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>1</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[6]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                  <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[7]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[7]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>2</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[7]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[8]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[8]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>2</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[8]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[9]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[9]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>2</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[9]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[10]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[10]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>2</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[10]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[11]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[11]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>2</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[11]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[12]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Module[12]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="center">
                                                <fo:block>
                                                    <xsl:text>2</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="Note[12]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                </fo:table-body>
                            </fo:table>
                        </fo:block>
						<fo:table width="100%" height="7in" border-style="outset" border-width="2pt" border-color="blue" background-repeat="repeat">
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-column/>
                            
                            <fo:table-body>
                                     <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                             <xsl:text>Note finale </xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                             <xsl:value-of select="sum(Note) div count(Note)"/>
                                        </fo:block>
                                    </fo:table-cell>
									</fo:table-row>
                                    </fo:table-body>
									</fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
			</xsl:for-each>
        </fo:root>
    </xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\..\Downloads\Prjt_xml\1.Conversion_des _fichs_Excel_au_format_XML\Notes_Ginf2.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes"
		          profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="renderx" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""
		          validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="schemaCache" value="||"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bGenerateByteCode" value="true"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="sInitialMode" value=""/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->