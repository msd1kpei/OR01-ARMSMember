<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.kpei.co.id/schema/Member.001" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns3 xsd ns1 ns0 xml bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:AccountToARMS>
         <ns0:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:AccountToARMS/ns0:header/@id"/>
            </xsl:attribute>
            <ns0:asAt>
               <xsl:value-of select="/ns0:AccountToARMS/ns0:header/ns0:asAt"/>
            </ns0:asAt>
            <ns0:source>
               <xsl:value-of select="/ns0:AccountToARMS/ns0:header/ns0:source"/>
            </ns0:source>
         </ns0:header>
         <ns0:body>
            <xsl:for-each select="/ns0:AccountToARMS/ns0:body/ns0:e-CLEARSAccount">
               <ns0:e-CLEARSAccount>
                  <ns0:AccountID>
                     <xsl:value-of select="ns0:AccountID"/>
                  </ns0:AccountID>
                  <ns0:AccountType>
                     <xsl:value-of select="ns0:AccountType"/>
                  </ns0:AccountType>
                  <ns0:Description>
                     <xsl:value-of select="ns0:Description"/>
                  </ns0:Description>
                  <ns0:MemberID>
                     <xsl:value-of select="ns0:MemberID"/>
                  </ns0:MemberID>
               </ns0:e-CLEARSAccount>
            </xsl:for-each>
         </ns0:body>
         <ns0:ext>
            <xsl:for-each select="/ns0:AccountToARMS/ns0:ext/ns0:value">
               <ns0:value>
                  <xsl:attribute name="id">
                     <xsl:value-of select="@id"/>
                  </xsl:attribute>
                  <xsl:value-of select="."/>
               </ns0:value>
            </xsl:for-each>
         </ns0:ext>
      </ns0:AccountToARMS>
   </xsl:template>
</xsl:stylesheet>
