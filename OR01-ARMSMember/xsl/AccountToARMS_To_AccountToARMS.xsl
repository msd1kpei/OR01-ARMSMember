<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:client="http://xmlns.oracle.com/OR03_ARMSAccount_jws/OR03_ARMSAccount/AccountToARMS" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://oracle.com/sca/soapservice/OR03-ARMSAccount/OR03-ARMSAccount/OR03_ARMSAccount" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/OR03-ARMSAccount/OR03-ARMSAccount/AccountToARMS_JMS" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:imp1="http://www.kpei.co.id/schema/Member.001" xmlns:ns2="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 xsd wsdl imp1 ns2 client plt xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <imp1:AccountToARMS>
         <imp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/imp1:AccountToARMS/imp1:header/@id"/>
            </xsl:attribute>
            <imp1:asAt>
               <xsl:value-of select="/imp1:AccountToARMS/imp1:header/imp1:asAt"/>
            </imp1:asAt>
            <imp1:source>
               <xsl:value-of select="/imp1:AccountToARMS/imp1:header/imp1:source"/>
            </imp1:source>
         </imp1:header>
         <imp1:body>
            <xsl:for-each select="/imp1:AccountToARMS/imp1:body/imp1:e-CLEARSAccount">
               <imp1:e-CLEARSAccount>
                  <imp1:AccountID>
                     <xsl:value-of select="imp1:AccountID"/>
                  </imp1:AccountID>
                  <imp1:AccountType>
                     <xsl:value-of select="imp1:AccountType"/>
                  </imp1:AccountType>
                  <imp1:Description>
                     <xsl:value-of select="imp1:Description"/>
                  </imp1:Description>
                  <imp1:MemberID>
                     <xsl:value-of select="imp1:MemberID"/>
                  </imp1:MemberID>
               </imp1:e-CLEARSAccount>
            </xsl:for-each>
         </imp1:body>
         <imp1:ext>
            <xsl:for-each select="/imp1:AccountToARMS/imp1:ext/imp1:value">
               <imp1:value>
                  <xsl:attribute name="id">
                     <xsl:value-of select="@id"/>
                  </xsl:attribute>
                  <xsl:value-of select="."/>
               </imp1:value>
            </xsl:for-each>
         </imp1:ext>
      </imp1:AccountToARMS>
   </xsl:template>
</xsl:stylesheet>
