<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>XML 문서의 내용을 테이블 형태로 보여주기</TITLE>
</HEAD>
<BODY> 
<BR/>
<P align="center"><font color="#FA4C79" size="6">핸드폰 리스트</font></P>
<BR/>
<TABLE align="center" BORDER="0" cellpadding="5" cellspacing="2">
<THEAD>
<TR>
<TH>모델명</TH>
<TH>통신사</TH>
<TH>구입형태</TH>
<TH>제조사</TH>
<TH>색상</TH>
<TH>판매량</TH>
<TH>가격</TH>
</TR>
</THEAD>
	<TBODY>
		<xsl:apply-templates select = "/제품/핸드폰">
			<xsl:sort order="ascending" select="통신사"/>
			<xsl:sort order="ascending" select="가격" data-type="number"/>
		</xsl:apply-templates>
	</TBODY>
</TABLE>
</BODY>
</HTML>
</xsl:template>
<xsl:template match = "/제품/핸드폰">
<TR>
<TD><xsl:number format="1"/></TD>
<TD><xsl:value-of select="모델명"/></TD>
<TD><xsl:value-of select="통신사"/></TD>
<TD><xsl:value-of select="구입형태"/></TD>
<TD><xsl:value-of select="제조사"/></TD>
<TD><xsl:value-of select="색상"/></TD>
<TD><xsl:value-of select="판매량"/></TD>
<TD><xsl:value-of select="가격"/></TD>
</TR>
</xsl:template>
</xsl:stylesheet>