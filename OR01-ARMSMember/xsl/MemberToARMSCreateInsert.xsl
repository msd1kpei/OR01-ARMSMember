<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/ARMS-Member" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.kpei.co.id/schema/Member.001" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns3 xsd ns1 ns0 ns4 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <ARMS-MemberInput>
         <con_pers_1>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CON_PERS_1"/>
         </con_pers_1>
         <con_pers_2>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CON_PERS_2"/>
         </con_pers_2>
         <code_zip>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CODE_ZIP"/>
         </code_zip>
         <code_cou>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CODE_COU"/>
         </code_cou>
         <code_mem_cat>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CODE_MEM_CAT"/>
         </code_mem_cat>
         <code_mrkt_rate>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CODE_MRKT_RATE"/>
         </code_mrkt_rate>
         <code_mem_sta>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CODE_MEM_STA"/>
         </code_mem_sta>
         <city_dsc>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CITY_DSC"/>
         </city_dsc>
         <dsc_mem>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:DSC_MEM"/>
         </dsc_mem>
         <dsc_mem_short>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:DSC_MEM_SHORT"/>
         </dsc_mem_short>
         <ext_ref>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:EXT_REF"/>
         </ext_ref>
         <id_mem>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:ID_MEM"/>
         </id_mem>
         <id_mem_capco>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:ID_MEM_CAPCO"/>
         </id_mem_capco>
         <id_mem_inte>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:ID_MEM_INTE"/>
         </id_mem_inte>
         <lst_upd_ts>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:LST_UPD_TS"/>
         </lst_upd_ts>
         <mem_adr_1>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:MEM_ADR_1"/>
         </mem_adr_1>
         <mem_adr_2>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:MEM_ADR_2"/>
         </mem_adr_2>
         <type_mem>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:TYP_MEM"/>
         </type_mem>
         <mem_cle_id_mem_capco>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:MEM_CLE_ID_MEM_CAPCO"/>
         </mem_cle_id_mem_capco>
         <tax_num>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:TAX_NUM"/>
         </tax_num>
         <fax_nbr>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:FAX_NBR"/>
         </fax_nbr>
         <phone_nbr>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:PHONE_NBR"/>
         </phone_nbr>
         <web_nm>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:WEB_NM"/>
         </web_nm>
         <email_adr>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:EMAIL_ADR"/>
         </email_adr>
         <code_br>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:CODE_BR"/>
         </code_br>
         <parent_id>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:parentID"/>
         </parent_id>
         <uplift_factor>
            <xsl:value-of select="/ns0:e-CLEARSMember/ns0:upliftFactor"/>
         </uplift_factor>
      </ARMS-MemberInput>
   </xsl:template>
</xsl:stylesheet>
