<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns5="http://www.kpei.co.id/schema/Header" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns4="http://www.kpei.co.id/schema/MemberUpdate" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns6="http://www.kpei.co.id/schema/Extension" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://www.kpei.co.id/middleware" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns1 ns3 xsd ns0 ns5 ns4 ns6 xp20 bpws bpel2 bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns4:MemberUpdate>
         <ns4:header>
            <xsl:if test="/ns0:MemberDelete/ns0:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/ns0:MemberDelete/ns0:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <ns5:asAt>
               <xsl:value-of select="/ns0:MemberDelete/ns0:header/ns0:asAt"/>
            </ns5:asAt>
            <ns5:source>
               <xsl:value-of select="/ns0:MemberDelete/ns0:header/ns0:source"/>
            </ns5:source>
         </ns4:header>
         <ns4:body>
            <xsl:for-each select="/ns0:MemberDelete/ns0:body/ns0:idMember">
               <ns4:memberUpdateItem>
                  <ns4:firmId>
                     <xsl:value-of select="."/>
                  </ns4:firmId>
                  <ns4:status>
                     <xsl:text disable-output-escaping="no">Delete</xsl:text>
                  </ns4:status>
               </ns4:memberUpdateItem>
            </xsl:for-each>
         </ns4:body>
      </ns4:MemberUpdate>
   </xsl:template>
</xsl:stylesheet>
