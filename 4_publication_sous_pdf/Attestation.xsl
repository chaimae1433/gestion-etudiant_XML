<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.stylusstudio.com/xquery">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page" page-height="6in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in" margin-top="0.79in" margin-bottom="0.79in">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:block text-align="center">
                            <fo:block>
                                <fo:inline font-size="20pt" color="#0000FF">
                                    <xsl:text>Attestation de réussite</xsl:text>
                                </fo:inline>
                            </fo:block>
                            <fo:block>
                                <fo:inline font-size="10pt">
                                    <fo:block text-align="right">
                                        <fo:block>
                                            <fo:inline font-size="10pt">
                                                <xsl:text>Ecole National De Sciences Sppliques tanger le 08/02/2022</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:block>
                                </fo:inline>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA0;</xsl:text>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA0;</xsl:text>
                            </fo:block>
                            <fo:block>
                                <fo:inline font-size="10pt">
                                    <fo:block text-align="left">
                                        <fo:block>
                                            <fo:inline font-size="12pt">
                                                <xsl:text>je,soussigné(e) , Elouahabi Hassan,conseiller(ère) pédagogique,atteste que l'étudiant(e):</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:block>
                                </fo:inline>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA0;</xsl:text>
                            </fo:block>
                            <fo:block>
                                <fo:inline font-size="10pt">
                                    <fo:block>
                                        <xsl:value-of select="/Filiere_Niveau/Student[1]/FirstName "/>
                                    
                                    <xsl:value-of select="/Filiere_Niveau/Student[1]/LastName"/> de CNE 
                                    <xsl:value-of select="/Filiere_Niveau/Student/@CNE"/></fo:block>
                                </fo:inline>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA0;</xsl:text>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA0;</xsl:text>
                            </fo:block>
                            <fo:block>
                                <fo:inline font-size="10pt">
                                    <fo:block text-align="left">
                                        <fo:block>
                                            <fo:inline font-size="12pt">
                                                <xsl:text>a suivi et terminé la formation :</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:block>
                                </fo:inline>
                            </fo:block>
                            <fo:block>
                                <xsl:text>&#xA0;</xsl:text>
                            </fo:block>
                            <fo:block>
                                <fo:inline font-size="10pt">
                                    <xsl:value-of select="/Filiere_Niveau/@nom_de_filiere"/>
                                </fo:inline>
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
                                <fo:inline font-size="10pt">
                                    <fo:block text-align="right">
                                        <fo:block>
                                            <xsl:text>Attestation en Date 08/02.2022</xsl:text>
                                        </fo:block>
                                    </fo:block>
                                </fo:inline>
                            </fo:block>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="attestation" userelativepaths="yes" externalpreview="no" url="Student_GINF2.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml=""
		          commandline="" additionalpath="" additionalclasspath="" postprocessortype="renderx" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
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