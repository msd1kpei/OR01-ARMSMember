<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:inp1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:tns="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://www.kpei.co.id/razor/Member_Intraday" xmlns:ns0="http://www.kpei.co.id/schema/Member.001" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 inp1 ns3 xsd ns1 wsdl tns ns0 ns4 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="reference_getXMLData_OutputVariable.reply"/>
   <xsl:template match="/">
      <kpeiInbound>
         <header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:MemberUpdate/ns0:header/@id"/>
            </xsl:attribute>
            <asAt>
               <xsl:value-of select="/ns0:MemberUpdate/ns0:header/ns0:asAt"/>
            </asAt>
            <sourceSystem>
               <xsl:value-of select="/ns0:MemberUpdate/ns0:header/ns0:source"/>
            </sourceSystem>
         </header>
         <body>
            <updateRiskPointDomainRecords>
               <riskPointDomain>
                  <xsl:attribute name="id">
                     <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/inp1:getXMLDataReply/inp1:xmlData[1.0]/inp1:Value"/>
                  </xsl:attribute>
                  <xsl:for-each select="/ns0:MemberUpdate/ns0:body/ns0:riskPointDomain/ns0:record">
                     <record>
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/>
                        </xsl:attribute>
                        <parents>
                           <parent>
                              <xsl:attribute name="id">
                                 <xsl:value-of select="ns0:parents/ns0:parent/@id"/>
                              </xsl:attribute>
                              <xsl:value-of select="ns0:parents/ns0:parent"/>
                           </parent>
                        </parents>
                        <fields>
                           <xsl:for-each select=".">
                              <xsl:for-each select="ns0:fields/ns0:field">
                                 <field>
                                    <xsl:attribute name="id">
                                       <xsl:value-of select="@id"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="."/>
                                 </field>
                              </xsl:for-each>
                           </xsl:for-each>
                        </fields>
                     </record>
                  </xsl:for-each>
               </riskPointDomain>
            </updateRiskPointDomainRecords>
         </body>
      </kpeiInbound>
   </xsl:template>
</xsl:stylesheet>
