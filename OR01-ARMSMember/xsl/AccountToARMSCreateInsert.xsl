<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/ARMS-Account" xmlns:ns0="http://www.kpei.co.id/schema/Member.001" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns3 xsd ns1 ns0 xml ns4 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns4:ARMS-AccountInput>
         <ns4:ACCOUNT_ID>
            <xsl:value-of select="/ns0:e-CLEARSAccount/ns0:AccountID"/>
         </ns4:ACCOUNT_ID>
         <ns4:ACCOUNT_TYPE>
            <xsl:value-of select="/ns0:e-CLEARSAccount/ns0:AccountType"/>
         </ns4:ACCOUNT_TYPE>
         <ns4:DESCRIPTION>
            <xsl:value-of select="/ns0:e-CLEARSAccount/ns0:Description"/>
         </ns4:DESCRIPTION>
         <ns4:MEMBER_ID>
            <xsl:value-of select="/ns0:e-CLEARSAccount/ns0:MemberID"/>
         </ns4:MEMBER_ID>
      </ns4:ARMS-AccountInput>
   </xsl:template>
</xsl:stylesheet>
