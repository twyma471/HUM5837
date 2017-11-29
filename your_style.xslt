<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://w3.org/1999/xhtml">
    
    <!-- your preliminary stylesheet should go here -->
<xsl:template match="/">
	<html>
		<head>
			<title>Page Title</title>
		</head>
		<body>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template match="tei:teiHeader"/> 

<xsl:template match="tei:text">
	<div>
		<xsl:apply-templates/>
	</div>
</xsl:template>
<xsl:template match="tei:p">
<p> <xsl:apply-templates/> </p>
</xsl:template>

<xsl:template match="tei:head">
<h2> <xsl:apply-templates/> </h2>
</xsl:template>

</xsl:stylesheet>