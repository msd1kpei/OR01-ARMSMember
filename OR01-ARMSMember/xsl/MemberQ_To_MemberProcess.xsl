<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/ARIS-KPEI-PROJECT/OR01-ARMSMember/Inbound_MemberQueue" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:imp1="http://www.kpei.co.id/schema/Member.001" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://www.kpei.co.id/ResponseMessage" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT/OR01_ARMSMember/PrepareMemberAck" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt wsdl tns imp1 jca xsd ns2 client xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <imp1:MemberToARMS>
         <imp1:header>
            <xsl:if test="/imp1:MemberToARMS/imp1:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/imp1:MemberToARMS/imp1:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <imp1:asAt>
               <xsl:value-of select="/imp1:MemberToARMS/imp1:header/imp1:asAt"/>
            </imp1:asAt>
            <imp1:source>
               <xsl:value-of select="/imp1:MemberToARMS/imp1:header/imp1:source"/>
            </imp1:source>
         </imp1:header>
         <imp1:body>
            <xsl:for-each select="/imp1:MemberToARMS/imp1:body/imp1:e-CLEARSMember">
               <imp1:e-CLEARSMember>
                  <imp1:CON_PERS_1>
                     <xsl:value-of select="imp1:CON_PERS_1"/>
                  </imp1:CON_PERS_1>
                  <imp1:CON_PERS_2>
                     <xsl:value-of select="imp1:CON_PERS_2"/>
                  </imp1:CON_PERS_2>
                  <imp1:CODE_ZIP>
                     <xsl:value-of select="imp1:CODE_ZIP"/>
                  </imp1:CODE_ZIP>
                  <imp1:CODE_COU>
                     <xsl:if test="imp1:CODE_COU/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:CODE_COU/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:CODE_COU"/>
                  </imp1:CODE_COU>
                  <imp1:CODE_MEM_CAT>
                     <xsl:if test="imp1:CODE_MEM_CAT/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:CODE_MEM_CAT/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:CODE_MEM_CAT"/>
                  </imp1:CODE_MEM_CAT>
                  <imp1:CODE_MRKT_RATE>
                     <xsl:if test="imp1:CODE_MRKT_RATE/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:CODE_MRKT_RATE/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:CODE_MRKT_RATE"/>
                  </imp1:CODE_MRKT_RATE>
                  <imp1:CODE_MEM_STA>
                     <xsl:if test="imp1:CODE_MEM_STA/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:CODE_MEM_STA/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:CODE_MEM_STA"/>
                  </imp1:CODE_MEM_STA>
                  <imp1:CITY_DSC>
                     <xsl:value-of select="imp1:CITY_DSC"/>
                  </imp1:CITY_DSC>
                  <imp1:DSC_MEM>
                     <xsl:value-of select="imp1:DSC_MEM"/>
                  </imp1:DSC_MEM>
                  <imp1:DSC_MEM_SHORT>
                     <xsl:value-of select="imp1:DSC_MEM_SHORT"/>
                  </imp1:DSC_MEM_SHORT>
                  <imp1:EXT_REF>
                     <xsl:value-of select="imp1:EXT_REF"/>
                  </imp1:EXT_REF>
                  <imp1:ID_MEM>
                     <xsl:value-of select="imp1:ID_MEM"/>
                  </imp1:ID_MEM>
                  <imp1:ID_MEM_CAPCO>
                     <xsl:value-of select="imp1:ID_MEM_CAPCO"/>
                  </imp1:ID_MEM_CAPCO>
                  <imp1:ID_MEM_INTE>
                     <xsl:value-of select="imp1:ID_MEM_INTE"/>
                  </imp1:ID_MEM_INTE>
                  <imp1:LST_UPD_TS>
                     <xsl:value-of select="imp1:LST_UPD_TS"/>
                  </imp1:LST_UPD_TS>
                  <imp1:MEM_ADR_1>
                     <xsl:value-of select="imp1:MEM_ADR_1"/>
                  </imp1:MEM_ADR_1>
                  <imp1:MEM_ADR_2>
                     <xsl:value-of select="imp1:MEM_ADR_2"/>
                  </imp1:MEM_ADR_2>
                  <imp1:TYP_MEM>
                     <xsl:if test="imp1:TYP_MEM/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:TYP_MEM/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:TYP_MEM"/>
                  </imp1:TYP_MEM>
                  <imp1:MEM_CLE_ID_MEM_CAPCO>
                     <xsl:value-of select="imp1:MEM_CLE_ID_MEM_CAPCO"/>
                  </imp1:MEM_CLE_ID_MEM_CAPCO>
                  <imp1:TAX_NUM>
                     <xsl:value-of select="imp1:TAX_NUM"/>
                  </imp1:TAX_NUM>
                  <imp1:FAX_NBR>
                     <xsl:value-of select="imp1:FAX_NBR"/>
                  </imp1:FAX_NBR>
                  <imp1:PHONE_NBR>
                     <xsl:value-of select="imp1:PHONE_NBR"/>
                  </imp1:PHONE_NBR>
                  <imp1:WEB_NM>
                     <xsl:value-of select="imp1:WEB_NM"/>
                  </imp1:WEB_NM>
                  <imp1:EMAIL_ADR>
                     <xsl:value-of select="imp1:EMAIL_ADR"/>
                  </imp1:EMAIL_ADR>
                  <imp1:CODE_BR>
                     <xsl:if test="imp1:CODE_BR/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:CODE_BR/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:CODE_BR"/>
                  </imp1:CODE_BR>
                  <imp1:parentID>
                     <xsl:value-of select="imp1:parentID"/>
                  </imp1:parentID>
                  <imp1:upliftFactor>
                     <xsl:if test="imp1:upliftFactor/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="imp1:upliftFactor/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="imp1:upliftFactor"/>
                  </imp1:upliftFactor>
               </imp1:e-CLEARSMember>
            </xsl:for-each>
         </imp1:body>
         <imp1:ext>
            <xsl:if test="/imp1:MemberToARMS/imp1:ext/imp1:value">
               <xsl:for-each select="/imp1:MemberToARMS/imp1:ext/imp1:value">
                  <imp1:value>
                     <xsl:if test="@id">
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </imp1:value>
               </xsl:for-each>
            </xsl:if>
         </imp1:ext>
      </imp1:MemberToARMS>
   </xsl:template>
</xsl:stylesheet>
