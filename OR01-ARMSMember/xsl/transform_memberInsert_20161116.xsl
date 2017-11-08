<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.kpei.co.id/schema/Member.001" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/top/ARMSMemberDB" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns0 ns3 xsd ns1 ns4 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
   <xsl:template match="/">
      <ns4:MemberCollection>
         <xsl:for-each select="/ns0:MemberToARMS/ns0:body/ns0:e-CLEARSMember">
            <ns4:Member>
               <ns4:conPers1>
                  <xsl:value-of select="ns0:CON_PERS_1"/>
               </ns4:conPers1>
               <ns4:conPers2>
                  <xsl:value-of select="ns0:CON_PERS_2"/>
               </ns4:conPers2>
               <ns4:codeZip>
                  <xsl:value-of select="ns0:CODE_ZIP"/>
               </ns4:codeZip>
               <ns4:codeCou>
                  <xsl:if test="ns0:CODE_COU/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:CODE_COU/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:CODE_COU"/>
               </ns4:codeCou>
               <ns4:codeMemCat>
                  <xsl:if test="ns0:CODE_MEM_CAT/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:CODE_MEM_CAT/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:CODE_MEM_CAT"/>
               </ns4:codeMemCat>
               <ns4:codeMrktRate>
                  <xsl:if test="ns0:CODE_MRKT_RATE/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:CODE_MRKT_RATE/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:CODE_MRKT_RATE"/>
               </ns4:codeMrktRate>
               <ns4:codeMemSta>
                  <xsl:if test="ns0:CODE_MEM_STA/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:CODE_MEM_STA/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:CODE_MEM_STA"/>
               </ns4:codeMemSta>
               <ns4:cityDsc>
                  <xsl:value-of select="ns0:CITY_DSC"/>
               </ns4:cityDsc>
               <ns4:dscMem>
                  <xsl:value-of select="ns0:DSC_MEM"/>
               </ns4:dscMem>
               <ns4:dscMemShort>
                  <xsl:value-of select="ns0:DSC_MEM_SHORT"/>
               </ns4:dscMemShort>
               <ns4:extRef>
                  <xsl:value-of select="ns0:EXT_REF"/>
               </ns4:extRef>
               <ns4:idMem>
                  <xsl:value-of select="ns0:ID_MEM"/>
               </ns4:idMem>
               <ns4:idMemCapco>
                  <xsl:value-of select="ns0:ID_MEM_CAPCO"/>
               </ns4:idMemCapco>
               <ns4:idMemInte>
                  <xsl:value-of select="ns0:ID_MEM_INTE"/>
               </ns4:idMemInte>
               <ns4:lstUpdTs>
                  <xsl:value-of select="ns0:LST_UPD_TS"/>
               </ns4:lstUpdTs>
               <ns4:memAdr1>
                  <xsl:value-of select="ns0:MEM_ADR_1"/>
               </ns4:memAdr1>
               <ns4:memAdr2>
                  <xsl:value-of select="ns0:MEM_ADR_2"/>
               </ns4:memAdr2>
               <ns4:typMem>
                  <xsl:if test="ns0:TYP_MEM/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:TYP_MEM/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:TYP_MEM"/>
               </ns4:typMem>
               <ns4:memCleIdMemCapco>
                  <xsl:value-of select="ns0:MEM_CLE_ID_MEM_CAPCO"/>
               </ns4:memCleIdMemCapco>
               <ns4:taxNum>
                  <xsl:value-of select="ns0:TAX_NUM"/>
               </ns4:taxNum>
               <ns4:faxNbr>
                  <xsl:value-of select="ns0:FAX_NBR"/>
               </ns4:faxNbr>
               <ns4:phoneNbr>
                  <xsl:value-of select="ns0:PHONE_NBR"/>
               </ns4:phoneNbr>
               <ns4:webNm>
                  <xsl:value-of select="ns0:WEB_NM"/>
               </ns4:webNm>
               <ns4:emailAdr>
                  <xsl:value-of select="ns0:EMAIL_ADR"/>
               </ns4:emailAdr>
               <ns4:codeBr>
                  <xsl:if test="ns0:CODE_BR/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:CODE_BR/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:CODE_BR"/>
               </ns4:codeBr>
               <ns4:parentId>
                  <xsl:value-of select="ns0:parentID"/>
               </ns4:parentId>
               <ns4:upliftFactor>
                  <xsl:if test="ns0:upliftFactor/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:upliftFactor/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:upliftFactor"/>
               </ns4:upliftFactor>
            </ns4:Member>
         </xsl:for-each>
      </ns4:MemberCollection>
   </xsl:template>
</xsl:stylesheet>
