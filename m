Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64A010D368
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 10:45:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC36C88548;
	Fri, 29 Nov 2019 09:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ruhM5pIOOPJa; Fri, 29 Nov 2019 09:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F0A388534;
	Fri, 29 Nov 2019 09:45:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB9091BF48D
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 09:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8B8A884D6
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 09:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2AzJov-SvwwP for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 09:45:06 +0000 (UTC)
X-Greylist: delayed 00:05:14 by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E0BB3884D3
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 09:45:05 +0000 (UTC)
Received: from faui04d.informatik.uni-erlangen.de
 (faui04d.informatik.uni-erlangen.de [131.188.30.134])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 02D5A2417FD;
 Fri, 29 Nov 2019 10:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=stud.informatik.uni-erlangen.de; s=dkim2019; t=1575020389;
 bh=Q2Ho2ou8lqvsNoIkH7zozdhGwgkJMlLg7XQf21y6z4w=;
 h=From:To:Cc:Subject:Date:From;
 b=jH4DWmV7qMC8xWys1h9sRSWFvP/DNVmVxbp6HrPMKq6oJ3jjSCMwqep751Xag3Kqh
 RXC9LYl9RQO9Pth+4uWDXgzhJR61pXtThS+u6lV1UowjvH8QE861MdnIQ7pssZHodC
 ujYhUNDQ3z3EhLaVJs8vtxLT6atv/xl6l5qSFQkav5ZvZNKQGm9Dohq4HFcOs4Hydw
 xFJ211IaPbzeCuMot9L0+hW63Mx9FT7Sn3lcmSq50RXgo2YpzvJiv/2JyvrJqnQqT2
 gL5mKmnC+kZN1WqK+nVurdHJoZZd3PGgso/5W84z0rI1CCxe8+Z9o4N9de52xGAFWu
 z1B7Y0Jh8bQdA==
Received: by faui04d.informatik.uni-erlangen.de (Postfix, from userid 66711)
 id DC1CFAA5157; Fri, 29 Nov 2019 10:39:48 +0100 (CET)
From: Andreas Hellmich <dy26hofu@stud.informatik.uni-erlangen.de>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/2] rtl8723bs: Fix spelling errors
Date: Fri, 29 Nov 2019 10:39:39 +0100
Message-Id: <20191129093939.2782-1-dy26hofu@stud.informatik.uni-erlangen.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Andreas Hellmich <dy26hofu@stud.informatik.uni-erlangen.de>,
 Annika Knepper <av91obul@stud.informatik.uni-erlangen.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix spelling errors.

Co-developed-by: Annika Knepper <av91obul@stud.informatik.uni-erlangen.de>
Signed-off-by: Annika Knepper <av91obul@stud.informatik.uni-erlangen.de>
Signed-off-by: Andreas Hellmich <dy26hofu@stud.informatik.uni-erlangen.de>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 36 +++++++++----------
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  6 ++--
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 14 ++++----
 3 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 5e687f6d2c3e..81062ec3f086 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -207,7 +207,7 @@ static RT_CHANNEL_PLAN_MAP	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 	{0x02, 0x1F},	/* 0x57, RT_CHANNEL_DOMAIN_FCC1_FCC10 */
 };
 
-static RT_CHANNEL_PLAN_MAP	RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02}; /* use the conbination for max channel numbers */
+static RT_CHANNEL_PLAN_MAP	RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02}; /* use the combination for max channel numbers */
 
 /*
  * Search the @param ch in given @param ch_set
@@ -2265,7 +2265,7 @@ inline struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv)
 
 /****************************************************************************
 
-Following are some TX fuctions for WiFi MLME
+Following are some TX functions for WiFi MLME
 
 *****************************************************************************/
 
@@ -2956,7 +2956,7 @@ int issue_probereq_ex(struct adapter *padapter, struct ndis_802_11_ssid *pssid,
 	return ret;
 }
 
-/*  if psta == NULL, indiate we are station(client) now... */
+/*  if psta == NULL, indicate we are station(client) now... */
 void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short status)
 {
 	struct xmit_frame			*pmgntframe;
@@ -3358,7 +3358,7 @@ void issue_assocreq(struct adapter *padapter)
 				if ((!padapter->registrypriv.wifi_spec) && (!memcmp(pIE->data, WPS_OUI, 4))) {
 					/* Commented by Kurt 20110629 */
 					/* In some older APs, WPS handshake */
-					/* would be fail if we append vender extensions informations to AP */
+					/* would be fail if we append vender extensions information to AP */
 
 					vs_ie_length = 14;
 				}
@@ -3406,7 +3406,7 @@ void issue_assocreq(struct adapter *padapter)
 		rtw_buf_free(&pmlmepriv->assoc_req, &pmlmepriv->assoc_req_len);
 }
 
-/* when wait_ack is ture, this function shoule be called at process context */
+/* when wait_ack is true, this function should be called at process context */
 static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
 			   unsigned int power_mode, bool wait_ack)
 {
@@ -3481,7 +3481,7 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
 /*
  * [IMPORTANT] Don't call this function in interrupt context
  *
- * When wait_ms > 0, this function shoule be called at process context
+ * When wait_ms > 0, this function should be called at process context
  * da == NULL for station mode
  */
 int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int try_cnt, int wait_ms)
@@ -3493,7 +3493,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 	struct sta_info *psta;
 
 
-	/* da == NULL, assum it's null data for sta to ap*/
+	/* da == NULL, assume it's null data for sta to ap*/
 	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
@@ -3558,14 +3558,14 @@ s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &pmlmeext->mlmext_info;
 
-	/* da == NULL, assum it's null data for sta to ap*/
+	/* da == NULL, assume it's null data for sta to ap*/
 	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
 	return _issue_nulldata(padapter, da, 0, false);
 }
 
-/* when wait_ack is ture, this function shoule be called at process context */
+/* when wait_ack is true, this function should be called at process context */
 static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
 			       u16 tid, bool wait_ack)
 {
@@ -3644,7 +3644,7 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
 	return ret;
 }
 
-/* when wait_ms >0 , this function shoule be called at process context */
+/* when wait_ms >0 , this function should be called at process context */
 /* da == NULL for station mode */
 int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int try_cnt, int wait_ms)
 {
@@ -3653,7 +3653,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	/* da == NULL, assum it's null data for sta to ap*/
+	/* da == NULL, assume it's null data for sta to ap*/
 	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
@@ -4264,7 +4264,7 @@ unsigned int send_beacon(struct adapter *padapter)
 
 /****************************************************************************
 
-Following are some utitity fuctions for WiFi MLME
+Following are some utility functions for WiFi MLME
 
 *****************************************************************************/
 
@@ -4568,7 +4568,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	}
 	#endif
 
-	/*  mark bss info receving from nearby channel as SignalQuality 101 */
+	/*  mark bss info receiving from nearby channel as SignalQuality 101 */
 	if (bssid->Configuration.DSConfig != rtw_get_oper_ch(padapter))
 		bssid->PhyInfo.SignalQuality = 101;
 
@@ -4589,7 +4589,7 @@ void start_create_ibss(struct adapter *padapter)
 	/* update wireless mode */
 	update_wireless_mode(padapter);
 
-	/* udpate capability */
+	/* update capability */
 	caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
 	update_capinfo(padapter, caps);
 	if (caps&cap_IBSS) {/* adhoc master */
@@ -4644,7 +4644,7 @@ void start_clnt_join(struct adapter *padapter)
 	/* update wireless mode */
 	update_wireless_mode(padapter);
 
-	/* udpate capability */
+	/* update capability */
 	caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
 	update_capinfo(padapter, caps);
 	if (caps&cap_ESS) {
@@ -5441,7 +5441,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
 	/* turn on dynamic functions */
 	Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
 
-	/*  update IOT-releated issue */
+	/*  update IOT-related issue */
 	update_IOT_info(padapter);
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, cur_network->SupportedRates);
@@ -5449,7 +5449,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
 	/* BCN interval */
 	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&pmlmeinfo->bcn_interval));
 
-	/* udpate capability */
+	/* update capability */
 	update_capinfo(padapter, pmlmeinfo->capability);
 
 	/* WMM, Update EDCA param */
@@ -6385,7 +6385,7 @@ u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 		Save_DM_Func_Flag(padapter);
 		Switch_DM_Func(padapter, DYNAMIC_FUNC_DISABLE, false);
 
-		/* config the initial gain under scaning, need to write the BB registers */
+		/* config the initial gain under scanning, need to write the BB registers */
 		initialgain = 0x1e;
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_INITIAL_GAIN, (u8 *)(&initialgain));
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 1ca9063a269f..106bfd670701 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -82,7 +82,7 @@ static void setIqkMatrix_8723B(
 		/* if (RFPath == ODM_RF_PATH_A) */
 		switch (RFPath) {
 		case ODM_RF_PATH_A:
-			/* wirte new elements A, C, D to regC80 and regC94, element B is always 0 */
+			/* write new elements A, C, D to regC80 and regC94, element B is always 0 */
 			value32 = (ele_D<<22)|((ele_C&0x3F)<<16)|ele_A;
 			PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_XATxIQImbalance, bMaskDWord, value32);
 
@@ -93,7 +93,7 @@ static void setIqkMatrix_8723B(
 			PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, BIT24, value32);
 			break;
 		case ODM_RF_PATH_B:
-			/* wirte new elements A, C, D to regC88 and regC9C, element B is always 0 */
+			/* write new elements A, C, D to regC88 and regC9C, element B is always 0 */
 			value32 = (ele_D<<22)|((ele_C&0x3F)<<16)|ele_A;
 			PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_XBTxIQImbalance, bMaskDWord, value32);
 
@@ -166,7 +166,7 @@ void DoIQK_8723B(
 /*-----------------------------------------------------------------------------
  * Function:	odm_TxPwrTrackSetPwr88E()
  *
- * Overview:	88E change all channel tx power accordign to flag.
+ * Overview:	88E change all channel tx power according to flag.
  *			OFDM & CCK are all different.
  *
  * Input:		NONE
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 66127f6c8e4d..06c22ccfb2fd 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -750,7 +750,7 @@ static void Hal_BT_EfusePowerSwitch(
 		rtw_write8(padapter, 0x6B, tempval);
 
 		/*  Attention!! Between 0x6A[14] and 0x6A[15] setting need 100us delay */
-		/*  So don't wirte 0x6A[14]= 1 and 0x6A[15]= 0 together! */
+		/*  So don't write 0x6A[14]= 1 and 0x6A[15]= 0 together! */
 		msleep(1);
 		/*  disable BT output isolation */
 		/*  0x6A[15] = 0 */
@@ -765,7 +765,7 @@ static void Hal_BT_EfusePowerSwitch(
 		rtw_write8(padapter, 0x6B, tempval);
 
 		/*  Attention!! Between 0x6A[14] and 0x6A[15] setting need 100us delay */
-		/*  So don't wirte 0x6A[14]= 1 and 0x6A[15]= 0 together! */
+		/*  So don't write 0x6A[14]= 1 and 0x6A[15]= 0 together! */
 
 		/*  disable BT power cut */
 		/*  0x6A[14] = 1 */
@@ -1231,7 +1231,7 @@ static u16 hal_EfuseGetCurrentSize_WiFi(
 	goto exit;
 
 error:
-	/*  report max size to prevent wirte efuse */
+	/*  report max size to prevent write efuse */
 	EFUSE_GetEfuseDefinition(padapter, EFUSE_WIFI, TYPE_AVAILABLE_EFUSE_BYTES_TOTAL, &efuse_addr, bPseudoTest);
 
 exit:
@@ -2237,7 +2237,7 @@ void rtl8723b_InitAntenna_Selection(struct adapter *padapter)
 	u8 val;
 
 	val = rtw_read8(padapter, REG_LEDCFG2);
-	/*  Let 8051 take control antenna settting */
+	/*  Let 8051 take control antenna setting */
 	val |= BIT(7); /*  DPDT_SEL_EN, 0x4C[23] */
 	rtw_write8(padapter, REG_LEDCFG2, val);
 }
@@ -3193,7 +3193,7 @@ static void rtl8723b_fill_default_txdesc(
 
 	/*  2009.11.05. tynli_test. Suggested by SD4 Filen for FW LPS. */
 	/*  (1) The sequence number of each non-Qos frame / broadcast / multicast / */
-	/*  mgnt frame should be controled by Hw because Fw will also send null data */
+	/*  mgnt frame should be controlled by Hw because Fw will also send null data */
 	/*  which we cannot control when Fw LPS enable. */
 	/*  --> default enable non-Qos data sequense number. 2010.06.23. by tynli. */
 	/*  (2) Enable HW SEQ control for beacon packet, because we use Hw beacon. */
@@ -3543,7 +3543,7 @@ static void hw_var_set_mlme_sitesurvey(struct adapter *padapter, u8 variable, u8
 			rtw_write8(padapter, reg_bcn_ctl, val8);
 		}
 
-		/*  Save orignal RRSR setting. */
+		/*  Save original RRSR setting. */
 		pHalData->RegRRSR = rtw_read16(padapter, REG_RRSR);
 	} else {
 		/*  sitesurvey done */
@@ -3561,7 +3561,7 @@ static void hw_var_set_mlme_sitesurvey(struct adapter *padapter, u8 variable, u8
 		value_rcr |= rcr_clear_bit;
 		rtw_write32(padapter, REG_RCR, value_rcr);
 
-		/*  Restore orignal RRSR setting. */
+		/*  Restore original RRSR setting. */
 		rtw_write16(padapter, REG_RRSR, pHalData->RegRRSR);
 	}
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
