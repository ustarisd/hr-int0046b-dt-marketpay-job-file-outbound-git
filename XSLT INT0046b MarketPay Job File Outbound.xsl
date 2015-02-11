<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xtt="urn:com.workday/xtt"
    xmlns:jp="urn:com.workday/jobprofiles"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:etv="urn:com.workday/evt"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://exslt.org/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    version="2.0">
    
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 31, 2014</xd:p>
            <xd:p><xd:b>Author:</xd:b> Darren Ustaris</xd:p>
            <xd:p>INT0046b MarketPay Job File Outbound Document Transform XSLT</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xd:doc>
        <xd:desc>
            <xd:p> Set the output method to xml</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="jp:Job_Profile_Sync">
        
        
        
        <File xtt:separator="&#xA;" xtt:align="left" xtt:severity="warning">


        
            <xsl:for-each select="jp:Job_Profile">
        
       
             
                <!-- Job File Record -->
                <JobFile xtt:separator="," xtt:quotes="csv" xtt:align="left">  
                    
                    <xsl:choose>
                        <xsl:when test="jp:Additional_Information/jp:Test_Prod_Flag= 'T'">
                            <JobCode><xsl:value-of select="jp:Additional_Information/jp:XJobprofileID"/></JobCode>
                        </xsl:when>
                        <xsl:otherwise>
                            <JobCode><xsl:value-of select="jp:Job_Profile_ID"/></JobCode>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    
                    <JobCodeKey xtt:attribute='Job Code Key'></JobCodeKey>
                    <JobTitle><xsl:value-of select="jp:Job_Title"/></JobTitle>
                    <CareerLevel><xsl:value-of select="jp:Job_Level"/></CareerLevel>
                    
                    <GradeNumber><xsl:value-of select="jp:Compensation_Grade"/></GradeNumber>
                    <Exempt>
                        <xsl:choose>
                            <xsl:when test="jp:Exempt_Data/jp:Job_Exempt = 'true'">
                                <xsl:text>E</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>N</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </Exempt>
                    <JobFamily><xsl:value-of select="jp:Additional_Information/jp:Job_Family"/></JobFamily>
                    <Structure xtt:attribute='Structure'></Structure>
                    
                    <EEOJobGroup/>
                    <EEOJobCategory/>
                    <JobDescription><xsl:value-of select="jp:Additional_Information/jp:Description"/></JobDescription>
                    <UDFNum1/>
                    <UDFNum2/>
                    <UDFNum3/>
                    <UDFNum4/>
                    <UDFNum5/>
                    <UDFVarChar1Alpha3><xsl:value-of select="jp:Additional_Information/jp:UDF_Varchar_1"/></UDFVarChar1Alpha3>
                    <UDFVarChar2Active>
                        <xsl:choose>
                            <xsl:when test="jp:Inactive = 'false'">
                                <xsl:text>Active</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>Inactive</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </UDFVarChar2Active>
                    <UDFVarChar3/>
                    <UDFVarChar4/>
                    <UDFVarChar5/>
                    <UDFVarChar6/>
                    <UDFVarChar7/>
                    <UDFVarChar8/>
                    <UDFVarChar9/>
                    <UDFVarChar10/>
                    <UDFDate1/>
                    <UDFDate2/>
                    <UDFDate3/>
                    <UDFDate4/>
                    <UDFDate5/>
                    <Currency><xsl:value-of select="jp:Additional_Information/jp:Currency"/></Currency>
                    <UDFNum6/>
                    <UDFNum7/>
                    <UDFNum8/>
                    <UDFNum9/>
                    <UDFNum10/>
                    <UDFNum11/>
                    <UDFNum12/>
                    <UDFNum13/>
                    <UDFNum14/>
                    <UDFNum15/>
                    <UDFNum16/>
                    <UDFNum17/>
                    <UDFNum18/>
                    <UDFNum19/>
                    <UDFNum20/>
                    <UDFVarchar11/>
                    <UDFVarchar12/>
                    <UDFVarchar13/>
                    <UDFVarchar14/>
                    <UDFVarchar15/>
                    <UDFVarchar16/>
                    <UDFVarchar17/>
                    <UDFVarchar18/>
                    <UDFVarchar19/>
                    <UDFVarchar20/>
                    <UDFNum21/>
                    <UDFNum22/>
                    <UDFNum23/>
                    <UDFNum24/>
                    <UDFNum25/>
                    <UDFNum26/>
                    <UDFNum27/>
                    <UDFNum28/>
                    <UDFNum29/>
                    <UDFNum30/>
                    <UDFNum31/>
                    <UDFNum32/>
                    <UDFNum33/>
                    <UDFNum34/>
                    <UDFNum35/>
                    <UDFNum36/>
                    <UDFNum37/>
                    <UDFNum38/>
                    <UDFNum39/>
                    <UDFNum40/>
                    <UDFVarchar21/>
                    <UDFVarchar22/>
                    <UDFVarchar23/>
                    <UDFVarchar24/>
                    <UDFVarchar25/>
                    <UDFVarchar26/>
                    <UDFVarchar27/>
                    <UDFVarchar28/>
                    <UDFVarchar29/>
                    <UDFVarchar30/>
                    <UDFVarchar31/>
                    <UDFVarchar32/>
                    <UDFVarchar33/>
                    <UDFVarchar34/>
                    <UDFVarchar35/>
                    <UDFVarchar36/>
                    <UDFVarchar37/>
                    <UDFVarchar38/>
                    <UDFVarchar39/>
                    <UDFVarchar40/>
                    <UDFDate6/>
                    <UDFDate7/>
                    <UDFDate8/>
                    <UDFDate9/>
                    <UDFDate10/>
                    <UDFDate11/>
                    <UDFDate12/>
                    <UDFDate13/>
                    <UDFDate14/>
                    <UDFDate15/>
                    <UDFDate16/>
                    <UDFDate17/>
                    <UDFDate18/>
                    <UDFDate19/>
                    <UDFDate20/>
                    
                    
                </JobFile>
            
     
        </xsl:for-each>
            
      
        </File>
        
    </xsl:template>
    
</xsl:stylesheet>