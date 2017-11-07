<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR01-ARMSMember/Member" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR01_ARMSMember/MemberToARMSBPEL" xmlns:inp2="http://kpei.co.id/MDwsReply.xsd" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/ARMS-Member" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:inp1="http://www.kpei.co.id/schema/Member.001" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns wsdl inp2 xsd inp1 plnk client ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <inp1:MemberToARMS>
         <inp1:header>
            <xsl:if test="/inp1:MemberToARMS/inp1:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/inp1:MemberToARMS/inp1:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <inp1:asAt>
               <xsl:value-of select="/inp1:MemberToARMS/inp1:header/inp1:asAt"/>
            </inp1:asAt>
            <inp1:source>
               <xsl:value-of select="/inp1:MemberToARMS/inp1:header/inp1:source"/>
            </inp1:source>
         </inp1:header>
         <inp1:body>
            <xsl:for-each select="/inp1:MemberToARMS/inp1:body/inp1:e-CLEARSMember">
               <inp1:e-CLEARSMember>
                  <inp1:CON_PERS_1>
                     <xsl:value-of select="inp1:CON_PERS_1"/>
                  </inp1:CON_PERS_1>
                  <inp1:CON_PERS_2>
                     <xsl:value-of select="inp1:CON_PERS_2"/>
                  </inp1:CON_PERS_2>
                  <inp1:CODE_ZIP>
                     <xsl:value-of select="inp1:CODE_ZIP"/>
                  </inp1:CODE_ZIP>
                  <inp1:CODE_COU>
                     <xsl:if test="inp1:CODE_COU/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:CODE_COU/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:CODE_COU"/>
                  </inp1:CODE_COU>
                  <inp1:CODE_MEM_CAT>
                     <xsl:if test="inp1:CODE_MEM_CAT/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:CODE_MEM_CAT/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:CODE_MEM_CAT"/>
                  </inp1:CODE_MEM_CAT>
                  <inp1:CODE_MRKT_RATE>
                     <xsl:if test="inp1:CODE_MRKT_RATE/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:CODE_MRKT_RATE/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:CODE_MRKT_RATE"/>
                  </inp1:CODE_MRKT_RATE>
                  <inp1:CODE_MEM_STA>
                     <xsl:if test="inp1:CODE_MEM_STA/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:CODE_MEM_STA/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:CODE_MEM_STA"/>
                  </inp1:CODE_MEM_STA>
                  <inp1:CITY_DSC>
                     <xsl:value-of select="inp1:CITY_DSC"/>
                  </inp1:CITY_DSC>
                  <inp1:DSC_MEM>
                     <xsl:value-of select="inp1:DSC_MEM"/>
                  </inp1:DSC_MEM>
                  <inp1:DSC_MEM_SHORT>
                     <xsl:value-of select="inp1:DSC_MEM_SHORT"/>
                  </inp1:DSC_MEM_SHORT>
                  <inp1:EXT_REF>
                     <xsl:value-of select="inp1:EXT_REF"/>
                  </inp1:EXT_REF>
                  <inp1:ID_MEM>
                     <xsl:value-of select="inp1:ID_MEM"/>
                  </inp1:ID_MEM>
                  <inp1:ID_MEM_CAPCO>
                     <xsl:value-of select="inp1:ID_MEM_CAPCO"/>
                  </inp1:ID_MEM_CAPCO>
                  <inp1:ID_MEM_INTE>
                     <xsl:value-of select="inp1:ID_MEM_INTE"/>
                  </inp1:ID_MEM_INTE>
                  <inp1:LST_UPD_TS>
                     <xsl:value-of select="inp1:LST_UPD_TS"/>
                  </inp1:LST_UPD_TS>
                  <inp1:MEM_ADR_1>
                     <xsl:value-of select="inp1:MEM_ADR_1"/>
                  </inp1:MEM_ADR_1>
                  <inp1:MEM_ADR_2>
                     <xsl:value-of select="inp1:MEM_ADR_2"/>
                  </inp1:MEM_ADR_2>
                  <inp1:TYP_MEM>
                     <xsl:if test="inp1:TYP_MEM/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:TYP_MEM/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:TYP_MEM"/>
                  </inp1:TYP_MEM>
                  <inp1:MEM_CLE_ID_MEM_CAPCO>
                     <xsl:value-of select="inp1:MEM_CLE_ID_MEM_CAPCO"/>
                  </inp1:MEM_CLE_ID_MEM_CAPCO>
                  <inp1:TAX_NUM>
                     <xsl:value-of select="inp1:TAX_NUM"/>
                  </inp1:TAX_NUM>
                  <inp1:FAX_NBR>
                     <xsl:value-of select="inp1:FAX_NBR"/>
                  </inp1:FAX_NBR>
                  <inp1:PHONE_NBR>
                     <xsl:value-of select="inp1:PHONE_NBR"/>
                  </inp1:PHONE_NBR>
                  <inp1:WEB_NM>
                     <xsl:value-of select="inp1:WEB_NM"/>
                  </inp1:WEB_NM>
                  <inp1:EMAIL_ADR>
                     <xsl:value-of select="inp1:EMAIL_ADR"/>
                  </inp1:EMAIL_ADR>
                  <inp1:CODE_BR>
                     <xsl:if test="inp1:CODE_BR/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:CODE_BR/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:CODE_BR"/>
                  </inp1:CODE_BR>
                  <inp1:parentID>
                     <xsl:value-of select="inp1:parentID"/>
                  </inp1:parentID>
                  <inp1:upliftFactor>
                     <xsl:if test="inp1:upliftFactor/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="inp1:upliftFactor/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="inp1:upliftFactor"/>
                  </inp1:upliftFactor>
               </inp1:e-CLEARSMember>
            </xsl:for-each>
         </inp1:body>
         <inp1:ext>
            <xsl:if test="/inp1:MemberToARMS/inp1:ext/inp1:value">
               <xsl:for-each select="/inp1:MemberToARMS/inp1:ext/inp1:value">
                  <inp1:value>
                     <xsl:if test="@id">
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </inp1:value>
               </xsl:for-each>
            </xsl:if>
         </inp1:ext>
      </inp1:MemberToARMS>
   </xsl:template>
</xsl:stylesheet>
