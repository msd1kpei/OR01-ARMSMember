<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR01_ARMSMember/MemberDeleteBPEL" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR01-ARMSMember/OR01_ARMSMember" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns3="http://www.kpei.co.id/razor/Member_EOD" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/middleware" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns xsd wsdl inp1 out1 client plnk ns3 ns4 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <inp1:MemberDelete>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/inp1:MemberDelete/inp1:header/@id"/>
            </xsl:attribute>
            <inp1:asAt>
               <xsl:value-of select="/inp1:MemberDelete/inp1:header/inp1:asAt"/>
            </inp1:asAt>
            <inp1:source>
               <xsl:value-of select="/inp1:MemberDelete/inp1:header/inp1:source"/>
            </inp1:source>
         </inp1:header>
         <inp1:body>
            <xsl:for-each select="/inp1:MemberDelete/inp1:body/inp1:idMember">
               <inp1:idMember>
                  <xsl:value-of select="."/>
               </inp1:idMember>
            </xsl:for-each>
         </inp1:body>
      </inp1:MemberDelete>
   </xsl:template>
</xsl:stylesheet>
