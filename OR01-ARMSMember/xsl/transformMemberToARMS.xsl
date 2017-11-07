<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.kpei.co.id/schema/Member.001" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns3 xsd ns1 ns0 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:MemberToARMS>
         <ns0:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:MemberToARMS/ns0:header/@id"/>
            </xsl:attribute>
            <ns0:asAt>
               <xsl:value-of select="/ns0:MemberToARMS/ns0:header/ns0:asAt"/>
            </ns0:asAt>
            <ns0:source>
               <xsl:value-of select="/ns0:MemberToARMS/ns0:header/ns0:source"/>
            </ns0:source>
         </ns0:header>
         <ns0:body>
            <xsl:for-each select="/ns0:MemberToARMS/ns0:body/ns0:e-CLEARSMember">
               <ns0:e-CLEARSMember>
                  <ns0:CON_PERS_1>
                     <xsl:value-of select="ns0:CON_PERS_1"/>
                  </ns0:CON_PERS_1>
                  <ns0:CON_PERS_2>
                     <xsl:value-of select="ns0:CON_PERS_2"/>
                  </ns0:CON_PERS_2>
                  <ns0:CODE_ZIP>
                     <xsl:value-of select="ns0:CODE_ZIP"/>
                  </ns0:CODE_ZIP>
                  <ns0:CODE_COU>
                     <xsl:value-of select="ns0:CODE_COU"/>
                  </ns0:CODE_COU>
                  <ns0:CODE_MEM_CAT>
                     <xsl:value-of select="ns0:CODE_MEM_CAT"/>
                  </ns0:CODE_MEM_CAT>
                  <ns0:CODE_MRKT_RATE>
                     <xsl:value-of select="ns0:CODE_MRKT_RATE"/>
                  </ns0:CODE_MRKT_RATE>
                  <ns0:CODE_MEM_STA>
                     <xsl:value-of select="ns0:CODE_MEM_STA"/>
                  </ns0:CODE_MEM_STA>
                  <ns0:CITY_DSC>
                     <xsl:value-of select="ns0:CITY_DSC"/>
                  </ns0:CITY_DSC>
                  <ns0:DSC_MEM>
                     <xsl:value-of select="ns0:DSC_MEM"/>
                  </ns0:DSC_MEM>
                  <ns0:DSC_MEM_SHORT>
                     <xsl:value-of select="ns0:DSC_MEM_SHORT"/>
                  </ns0:DSC_MEM_SHORT>
                  <ns0:EXT_REF>
                     <xsl:value-of select="ns0:EXT_REF"/>
                  </ns0:EXT_REF>
                  <ns0:ID_MEM>
                     <xsl:value-of select="ns0:ID_MEM"/>
                  </ns0:ID_MEM>
                  <ns0:ID_MEM_CAPCO>
                     <xsl:value-of select="ns0:ID_MEM_CAPCO"/>
                  </ns0:ID_MEM_CAPCO>
                  <ns0:ID_MEM_INTE>
                     <xsl:value-of select="ns0:ID_MEM_INTE"/>
                  </ns0:ID_MEM_INTE>
                  <ns0:LST_UPD_TS>
                     <xsl:value-of select="ns0:LST_UPD_TS"/>
                  </ns0:LST_UPD_TS>
                  <ns0:MEM_ADR_1>
                     <xsl:value-of select="ns0:MEM_ADR_1"/>
                  </ns0:MEM_ADR_1>
                  <ns0:MEM_ADR_2>
                     <xsl:value-of select="ns0:MEM_ADR_2"/>
                  </ns0:MEM_ADR_2>
                  <ns0:TYP_MEM>
                     <xsl:value-of select="ns0:TYP_MEM"/>
                  </ns0:TYP_MEM>
                  <ns0:MEM_CLE_ID_MEM_CAPCO>
                     <xsl:value-of select="ns0:MEM_CLE_ID_MEM_CAPCO"/>
                  </ns0:MEM_CLE_ID_MEM_CAPCO>
                  <ns0:TAX_NUM>
                     <xsl:value-of select="ns0:TAX_NUM"/>
                  </ns0:TAX_NUM>
                  <ns0:FAX_NBR>
                     <xsl:value-of select="ns0:FAX_NBR"/>
                  </ns0:FAX_NBR>
                  <ns0:PHONE_NBR>
                     <xsl:value-of select="ns0:PHONE_NBR"/>
                  </ns0:PHONE_NBR>
                  <ns0:WEB_NM>
                     <xsl:value-of select="ns0:WEB_NM"/>
                  </ns0:WEB_NM>
                  <ns0:EMAIL_ADR>
                     <xsl:value-of select="ns0:EMAIL_ADR"/>
                  </ns0:EMAIL_ADR>
                  <ns0:CODE_BR>
                     <xsl:value-of select="ns0:CODE_BR"/>
                  </ns0:CODE_BR>
                  <ns0:parentID>
                     <xsl:value-of select="ns0:parentID"/>
                  </ns0:parentID>
                  <ns0:upliftFactor>
                     <xsl:value-of select="ns0:upliftFactor"/>
                  </ns0:upliftFactor>
               </ns0:e-CLEARSMember>
            </xsl:for-each>
         </ns0:body>
         <ns0:ext>
            <xsl:for-each select="/ns0:MemberToARMS/ns0:ext/ns0:value">
               <ns0:value>
                  <xsl:attribute name="id">
                     <xsl:value-of select="@id"/>
                  </xsl:attribute>
                  <xsl:value-of select="."/>
               </ns0:value>
            </xsl:for-each>
         </ns0:ext>
      </ns0:MemberToARMS>
   </xsl:template>
</xsl:stylesheet>
