<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns="http://www.kpei.co.id/razor/RefData_Intraday_Delete" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:inp1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:tns="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.kpei.co.id/middleware" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 inp1 ns3 xsd wsdl ns1 tns ns0 ns4 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="inputVariable.payload"/>
   <xsl:template match="/">
      <kpeiInbound>
         <header>
            <xsl:attribute name="id">
               <xsl:value-of select="$inputVariable.payload/ns0:MemberDelete/ns0:header/@id"/>
            </xsl:attribute>
            <asAt>
               <xsl:value-of select="$inputVariable.payload/ns0:MemberDelete/ns0:header/ns0:asAt"/>
            </asAt>
            <sourceSystem>
               <xsl:value-of select="$inputVariable.payload/ns0:MemberDelete/ns0:header/ns0:source"/>
            </sourceSystem>
         </header>
         <body>
            <deleteRiskPointDomainRecords>
               <riskPointDomain>
                  <xsl:attribute name="id">
                     <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[1]/inp1:Value"/>
                  </xsl:attribute>
                  <xsl:for-each select="$inputVariable.payload/ns0:MemberDelete/ns0:body/ns0:idMember">
                     <record>
                        <xsl:attribute name="id">
                           <xsl:value-of select="."/>
                        </xsl:attribute>
                     </record>
                  </xsl:for-each>
               </riskPointDomain>
            </deleteRiskPointDomainRecords>
         </body>
      </kpeiInbound>
   </xsl:template>
</xsl:stylesheet>
