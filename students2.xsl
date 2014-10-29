<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:output method="text" encoding="utf-8" />
	<xsl:param name="avgGrade" select="0" />
	<xsl:template match="TABLE">
	<xsl:text>Name: Average grade:</xsl:text>
	<xsl:text>&#xa;</xsl:text>
		<xsl:for-each select="STUDENT/GRADES">
		
		<xsl:variable name="countStudents" select="count(STUDENT)" />
		
		
			<xsl:variable name="averageGrade" select="(MATH + ENGLISH + ART + HISTORY) div 4" /> 
			<xsl:variable name="order" select="'descending'"/>
			<xsl:variable name="sort" select="$averageGrade" />
			
			<xsl:sort select="update" order="descending"/>
			<xsl:sort select="(MATH + ENGLISH + ART + HISTORY) div 4"/>
			<xsl:sort select="../NAME"/>
			<xsl:copy-of select="../NAME" />
			<xsl:copy-of select="$averageGrade" />
			<xsl:text>&#xa;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>