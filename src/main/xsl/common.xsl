<?xml version="1.0" encoding="UTF-8"?>
<!-- This needs to be imported into the customization *after* the custamizable is! -->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">

    <!-- TODO What is this for? -->
    <xsl:param name="local.l10n.xml" select="document('')"/>


    <!-- Font family and size -->
    <xsl:param name="body.font.family">sans-serif</xsl:param>
    <xsl:param name="body.font.master">14</xsl:param>


    <!-- Remove trailing period after honorific -->
    <xsl:param name="punct.honorific"/>
    
    <!-- Remove trailing period after run-in head (e.g., formal paragraph title) -->
    <xsl:param name="runinhead.default.title.end.punct"/>    


    <!-- Remove "Chapter" in chapter title -->
    <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
        <l:l10n language="en"> 
            <l:context name="title-numbered">
                <l:template name="chapter" text="%n.&#160;%t"/>
            </l:context>
        </l:l10n>
    </l:i18n>
    
    <!-- Number the chapters arabically -->
    <xsl:param name="chapter.autolabel">1</xsl:param>    

    <!-- Do not number the sections -->
    <xsl:param name="section.autolabel">0</xsl:param>    
</xsl:stylesheet>
