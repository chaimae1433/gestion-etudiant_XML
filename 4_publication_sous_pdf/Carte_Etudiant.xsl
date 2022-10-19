<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.stylusstudio.com/xquery">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page" page-height="7.3in" page-width="7.5in" margin-left="0.6in" margin-right="0.6in" margin-top="0.79in" margin-bottom="0.79in">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:block>
                            <fo:block text-align="center">
                                <fo:block>
                                    <fo:inline font-size="12pt" font-weight="bold" color="#0000FF">
                                        <fo:block font-size="12pt" font-weight="bold" text-align="right" color="#0000FF">
                                            <fo:block>
                                                <fo:inline font-size="12pt" font-weight="bold" color="#0000FF">
                                                    <fo:block text-align="left">
                                                        <fo:block>
                                                            <fo:block text-align="right">
                                                                <fo:block>
                                                                    <fo:block text-align="right">
                                                                        <fo:block>
                                                                            <fo:block text-align="right">
                                                                                <fo:block>
                                                                                    <fo:external-graphic background="transparent" width="108pt" content-width="scale-to-fit" height="70pt" content-height="scale-to-fit" scaling="non-uniform" src="url(file:///c:/Users/Elitebook/Downloads/uae.jpeg)"/>
                                                                                </fo:block>
                                                                            </fo:block>
                                                                        </fo:block>
                                                                    </fo:block>
                                                                    <fo:block text-align="left">
                                                                        <fo:block>
                                                                            <fo:external-graphic background="transparent" width="140pt" content-width="scale-to-fit" height="70pt" content-height="scale-to-fit" scaling="non-uniform" src="url(file:///c:/Users/Elitebook/Documents/NetBeansProjects/exceltoxml/ENSA-TANGER-800x377.png)"/>
                                                                        </fo:block>
                                                                    </fo:block>
                                                                </fo:block>
                                                            </fo:block>
                                                        </fo:block>
                                                    </fo:block>
                                                    <fo:block text-align="left"/>
                                                    <fo:block text-align="center">
                                                        <fo:block>
                                                            <fo:inline font-size="12pt" font-weight="bold" color="#0000FF">
                                                                <xsl:text>Ecole Nationale des Sciences AppliquéesTanger</xsl:text>
                                                            </fo:inline>
                                                        </fo:block>
                                                    </fo:block>
                                                </fo:inline>
                                            </fo:block>
                                        </fo:block>
                                    </fo:inline>
                                </fo:block>
                                <fo:block>
                                    <fo:inline font-size="12pt" font-weight="bold" color="#0000FF">
                                        <fo:block font-size="12pt" font-weight="bold" text-align="center" color="#0000FF">
                                            <fo:block margin-top="20pt">
                                                <fo:inline font-size="12pt" font-weight="bold" color="#0000FF">
                                                    <xsl:text>CARTE D'ETUDIANT</xsl:text>
                                                </fo:inline>
                                            </fo:block>
                                        </fo:block>
                                    </fo:inline>
                                </fo:block>
                            </fo:block>
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA0;</xsl:text>
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA0;</xsl:text>
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA0;</xsl:text>
                        </fo:block>
                        <fo:block>
                            <fo:table width="100%" border-style="none" border-width="0pt" background-repeat="repeat">
                                <fo:table-column/>
                                <fo:table-column/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border-style="none" border-width="2pt" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block font-size="14pt" text-align="center">
                                                <fo:block>
                                                    <xsl:text>CNE</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="none" border-width="2pt" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="left">
                                                <fo:block> 
                                                    <xsl:value-of select="/Filiere_Niveau/Student[1]/@CNE"/>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="none" border-width="2pt" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block font-size="14pt" text-align="center">
                                                <fo:block>
                                                    <xsl:text>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; Nom Complet</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="none" border-width="2pt" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="left">
                                                <fo:block> 
                                                    <xsl:value-of select="/Filiere_Niveau/Student[1]/FirstName"/>
                                                    <xsl:value-of select="/Filiere_Niveau/Student[1]/LastName"/>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border-style="none" border-width="2pt" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block font-size="14pt" text-align="center">
                                                <fo:block>
                                                    <xsl:text>&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;Date de naissance</xsl:text>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-style="none" border-width="2pt" padding="2pt" background-repeat="repeat" display-align="center">
                                            <fo:block text-align="left">
                                                <fo:block> 
                                                    <xsl:value-of select="/Filiere_Niveau/Student[1]/BirthDate"/>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                        <fo:block>
                            <xsl:text>&#xA0;</xsl:text>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\1_conversion_de_docs_excel_en_xml_java\Student_GINF2.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0"
		          profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="renderx" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no"
		          validator="internal" customvalidator="">
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