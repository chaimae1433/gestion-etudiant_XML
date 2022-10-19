<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.stylusstudio.com/xquery">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page" page-height="7in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in" margin-top="0.79in" margin-bottom="0.79in">
                    <fo:region-body background-color="aliceblue"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page">
                <fo:flow flow-name="xsl-region-body">

                        <fo:block text-align="center">
                            <fo:block>
                                <fo:inline font-family="Arial" font-size="20pt" color="green" margin-bottom="5in">
                                    <xsl:text>releve de note pour l'etudiant </xsl:text>
									<xsl:value-of select="Notes/Student[1]/FirstName"/>
									<xsl:value-of select="Notes/Student[1]/LastName"/>
                                </fo:inline>
								</fo:block></fo:block>
                    <fo:block>
                        <fo:table width="100%" height="7in" border-style="outset" border-width="2pt" border-color="blue" background-repeat="repeat">
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-body>
							
                                <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat"  display-align="center">
                                        <fo:block color="blueviolet">
                                            <xsl:text>Code Module</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block color="blueviolet">
                                            <xsl:text >designation Module</xsl:text>
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
                                            <xsl:value-of select="/Notes/Student[1]/Module[1]/@code_Module"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[1]"/>
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
                                            <xsl:value-of select="/Notes/Student[1]/Note[1]"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[2]/@code_Module"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[2]"/>
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
                                            <xsl:value-of select="/Notes/Student[1]/Note[2]"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Studen[1]/Module[3]/@code_Module"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[3]"/>
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
                                            <xsl:value-of select="/Notes/Student[1]/Note[3]"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[4]/@code_Module"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[4]"/>
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
                                            <xsl:value-of select="/Notes/Student[1]/Note[4]"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[5]/@code_Module"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[5]"/>
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
                                            <xsl:value-of select="/Notes/Student[1]/Note[5]"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[6]/@code_Module"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block>
                                            <xsl:value-of select="/Notes/Student[1]/Module[6]"/>
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
                                            <xsl:value-of select="/Notes/Student[1]/Note[6]"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
								<fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[7]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[7]"/>
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
                                                <xsl:value-of select="/Notes/Student[1]/Note[7]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[8]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[8]"/>
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
                                                <xsl:value-of select="/Notes/Student[1]/Note[8]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[9]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[9]"/>
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
                                                <xsl:value-of select="/Notes/Student[1]/Note[9]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[10]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[10]"/>
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
                                                <xsl:value-of select="/Notes/Student[1]/Note[10]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[11]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[11]"/>
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
                                                <xsl:value-of select="/Notes/Student[1]/Note[11]"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[12]/@code_Module"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block>
                                                <xsl:value-of select="/Notes/Student[1]/Module[12]"/>
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
                                                <xsl:value-of select="/Notes/Student[1]/Note[12]"/>
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
                                             <xsl:value-of select="sum(/Notes/Student[1]/Note) div count(/Notes/Student[1]/Note)"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-style="inset" border-width="2pt" border-color="blue" padding="2pt" background-repeat="repeat" display-align="center">
                                        <fo:block text-align="center" color="green">
                                            <fo:block>
                                                <xsl:text>admit</xsl:text>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                </fo:table-row>
                                    </fo:table-body>
                        </fo:table>
                                
                            
                    
                </fo:flow>
            </fo:page-sequence>
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