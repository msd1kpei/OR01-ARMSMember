<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR01_ARMSMember/MemberUpdateBPEL" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR01-ARMSMember/OR01_ARMSMember" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns3="http://www.kpei.co.id/razor/Member_EOD" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://www.kpei.co.id/razor/Member_Intraday" xmlns:inp1="http://www.kpei.co.id/middleware" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns xsd wsdl inp1 out1 client ns3 plnk ns4 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <inp1:MemberUpdate>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/inp1:MemberUpdate/inp1:header/@id"/>
            </xsl:attribute>
            <inp1:asAt>
               <xsl:value-of select="/inp1:MemberUpdate/inp1:header/inp1:asAt"/>
            </inp1:asAt>
            <inp1:source>
               <xsl:value-of select="/inp1:MemberUpdate/inp1:header/inp1:source"/>
            </inp1:source>
         </inp1:header>
         <inp1:type>
            <xsl:value-of select="/inp1:MemberUpdate/inp1:type"/>
         </inp1:type>
         <inp1:body>
            <inp1:riskPointDomain>
               <xsl:for-each select="/inp1:MemberUpdate/inp1:body/inp1:riskPointDomain/inp1:record">
                  <inp1:record>
                     <xsl:attribute name="id">
                        <xsl:value-of select="@id"/>
                     </xsl:attribute>
                     <xsl:if test="inp1:parents">
                        <inp1:parents>
                           <inp1:parent>
                              <xsl:attribute name="id">
                                 <xsl:value-of select="inp1:parents/inp1:parent/@id"/>
                              </xsl:attribute>
                              <xsl:value-of select="inp1:parents/inp1:parent"/>
                           </inp1:parent>
                        </inp1:parents>
                     </xsl:if>
                     <inp1:fields>
                        <xsl:for-each select="inp1:fields/inp1:field">
                           <inp1:field>
                              <xsl:attribute name="id">
                                 <xsl:value-of select="@id"/>
                              </xsl:attribute>
                              <xsl:value-of select="."/>
                           </inp1:field>
                        </xsl:for-each>
                     </inp1:fields>
                  </inp1:record>
               </xsl:for-each>
            </inp1:riskPointDomain>
         </inp1:body>
         <inp1:ext>
            <xsl:for-each select="/inp1:MemberUpdate/inp1:ext/inp1:value">
               <inp1:value>
                  <xsl:attribute name="id">
                     <xsl:value-of select="@id"/>
                  </xsl:attribute>
                  <xsl:value-of select="."/>
               </inp1:value>
            </xsl:for-each>
         </inp1:ext>
      </inp1:MemberUpdate>
   </xsl:template>
</xsl:stylesheet>
