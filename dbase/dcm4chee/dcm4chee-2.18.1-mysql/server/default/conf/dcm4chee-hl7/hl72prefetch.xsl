<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="/hl7">
        <dataset>
            <attr tag="00080005" vr="CS">ISO_IR 100</attr>
            <attr tag="00080052" vr="CS">SERIES</attr>
            <!-- Patient ID -->
            <xsl:call-template name="cx2attrs">
              <xsl:with-param name="idtag" select="'00100020'"/>
              <xsl:with-param name="istag" select="'00100021'"/>
              <xsl:with-param name="cx" select="PID/field[3]"/>
            </xsl:call-template>
            <attr tag="0020000D" vr="UI"/>
            <attr tag="0020000E" vr="UI"/>
            <attr tag="00080020" vr="DA"/><!-- Study Date -->
            <attr tag="00080030" vr="TM"/><!-- Study Time -->
            <attr tag="00080021" vr="DA"/><!-- Series Date -->
            <attr tag="00080031" vr="TM"/><!-- Series Time -->
            <attr tag="00080060" vr="CS"/><!-- Modality -->
        </dataset>
    </xsl:template>
</xsl:stylesheet>
