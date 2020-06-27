Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F0120BFE5
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 09:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D03086F55;
	Sat, 27 Jun 2020 07:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZPn-MGT1OjY; Sat, 27 Jun 2020 07:53:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFAB586B9E;
	Sat, 27 Jun 2020 07:53:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C259B1BF31D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B0F978697C
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Fd3rzfGS6Nj for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 07:53:13 +0000 (UTC)
X-Greylist: delayed 07:46:34 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB68186969
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:53:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id DB9D118024522
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:34:05 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id DBEAC837F24A;
 Sat, 27 Jun 2020 07:33:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:69:355:379:960:966:968:973:982:988:989:1042:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:2194:2196:2197:2198:2199:2200:2201:2202:2393:2559:2562:2693:2729:2828:2891:2894:2895:3138:3139:3140:3141:3142:3865:3866:3867:3868:3870:3871:3872:3874:4225:4250:4321:4384:4385:4395:4423:4605:5007:7875:7903:7904:8603:8660:8957:9010:9036:9121:9592:10004:10848:11026:11232:11657:11914:12043:12291:12294:12295:12296:12297:12438:12555:12679:12683:12760:12986:13138:13148:13161:13229:13230:13231:13439:13972:14110:14659:14877:21080:21220:21221:21324:21433:21451:21611:21627:21740:21772:21819:21939:21983:21987:21990:30003:30012:30020:30022:30029:30034:30045:30046:30054:30070:30075:30079:30083,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: shoe59_4f161b626e5c
X-Filterd-Recvd-Size: 165194
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Sat, 27 Jun 2020 07:33:57 +0000 (UTC)
Message-ID: <ddebd1bd14f5a8dd0b01a02e794662224894f46f.camel@perches.com>
Subject: RT_TRACE in drivers/staging/rtl8188eu
From: Joe Perches <joe@perches.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 27 Jun 2020 00:33:56 -0700
User-Agent: Evolution 3.36.2-0ubuntu1 
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
Cc: devel <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are 3 parts of the email.

1: A description and patch for a logging defect
2: A script to go along with the patch to do conversions
3: Current diff for this defect

------------------------------------------------------------------------
-

The macro below in drivers/staging/rtl8188eu/include/rtw_debug.h
is defective as it emits multiple pr_info calls for each use
so the logging in dmesg is discontinuous.

diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
index 9840e596feaa..fb562851bcc9 100644
--- a/drivers/staging/rtl8188eu/include/rtw_debug.h
+++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
@@ -77,14 +77,14 @@ extern u32 GlobalDebugLevel;
 			pr_info(DRIVER_PREFIX __VA_ARGS__);			\
 	} while (0)
 
-#define RT_TRACE(_comp, _level, fmt)					\
-	do {								\
-		if (_level <= GlobalDebugLevel) {			\
-			pr_info("%s [0x%08x,%d]", DRIVER_PREFIX,	\
-				 (unsigned int)_comp, _level);		\
-			pr_info fmt;					\
-		}							\
-	} while (0)
+#define RT_TRACE(_comp, _level, fmt, ...)				\
+do {									\
+	if (_level <= GlobalDebugLevel) {				\
+		pr_info("%s [0x%08x,%d]" fmt,				\
+			DRIVER_PREFIX, (unsigned int)_comp, _level,	\
+			##__VA_ARGS__);					\
+	}								\
+} while (0)
 
 #define RT_PRINT_DATA(_comp, _level, _titlestring, _hexdata, _hexdatalen)\
 	do {								\

-------------------------------------------------------------------------

2: The script to do the conversions:

$ git grep -w --name-only RT_TRACE drivers/staging/rtl8188eu/ | \
  xargs perl -i -e 'our $balanced_parens = qr/(\((?:[^\(\)]++|(?-1))*\))/; local $/; while (<>) { s/(RT_TRACE\s*\(\s*\w+\s*,\s*\w+\s*,\s*)($balanced_parens)/$1 . substr($2, 1, -1)/gexs; print;}'

-------------------------------------------------------------------------

3: That script (and the .h patch) currently produces this diff:
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c          |  38 ++---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c    |  66 ++++-----
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    |  78 +++++------
 drivers/staging/rtl8188eu/core/rtw_led.c          |  16 +--
 drivers/staging/rtl8188eu/core/rtw_mlme.c         | 106 +++++++-------
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     |  28 ++--
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  18 +--
 drivers/staging/rtl8188eu/core/rtw_recv.c         | 162 +++++++++++-----------
 drivers/staging/rtl8188eu/core/rtw_security.c     |  22 +--
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c      |  14 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c    |  18 +--
 drivers/staging/rtl8188eu/core/rtw_xmit.c         | 100 ++++++-------
 drivers/staging/rtl8188eu/hal/hal_intf.c          |   2 +-
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c         |  16 +--
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c |   8 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c    |   2 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c    |  10 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c       |  18 +--
 drivers/staging/rtl8188eu/include/rtw_debug.h     |  16 +--
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c    |  58 ++++----
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c     |   4 +-
 drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  48 +++----
 drivers/staging/rtl8188eu/os_dep/recv_linux.c     |   4 +-
 drivers/staging/rtl8188eu/os_dep/usb_intf.c       |  22 +--
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c  |  72 +++++-----
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c     |   8 +-
 26 files changed, 477 insertions(+), 477 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index f69e9453ad45..bf2ecc2266da 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -150,7 +150,7 @@ int rtw_cmd_thread(void *context)
 	complete(&pcmdpriv->terminate_cmdthread_comp);
 
 	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
-		 ("start r871x %s !!!!\n", __func__));
+		 "start r871x %s !!!!\n", __func__);
 
 	while (1) {
 		if (wait_for_completion_interruptible(&pcmdpriv->cmd_queue_comp))
@@ -195,14 +195,14 @@ int rtw_cmd_thread(void *context)
 		if (pcmd->cmdcode < ARRAY_SIZE(rtw_cmd_callback)) {
 			pcmd_callback = rtw_cmd_callback[pcmd->cmdcode].callback;
 			if (!pcmd_callback) {
-				RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("mlme_cmd_hdl(): pcmd_callback = 0x%p, cmdcode = 0x%x\n", pcmd_callback, pcmd->cmdcode));
+				RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, "mlme_cmd_hdl(): pcmd_callback = 0x%p, cmdcode = 0x%x\n", pcmd_callback, pcmd->cmdcode);
 				rtw_free_cmd_obj(pcmd);
 			} else {
 				/* todo: !!! fill rsp_buf to pcmd->rsp if (pcmd->rsp!= NULL) */
 				pcmd_callback(pcmd->padapter, pcmd);/* need consider that free cmd_obj in rtw_cmd_callback */
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("%s: cmdcode = 0x%x callback not defined!\n", __func__, pcmd->cmdcode));
+			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "%s: cmdcode = 0x%x callback not defined!\n", __func__, pcmd->cmdcode);
 			rtw_free_cmd_obj(pcmd);
 		}
 
@@ -252,7 +252,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 
 	rtw_free_network_queue(padapter, false);
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("%s: flush network queue\n", __func__));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, "%s: flush network queue\n", __func__);
 
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psurveyPara, _SiteSurvey_CMD_);
 
@@ -317,9 +317,9 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	led_control_8188eu(padapter, LED_CTL_START_TO_LINK);
 
 	if (pmlmepriv->assoc_ssid.ssid_length == 0)
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, " createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.ssid);
 	else
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, " createbss for SSid:%s\n", pmlmepriv->assoc_ssid.ssid);
 
 	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd) {
@@ -359,9 +359,9 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	led_control_8188eu(padapter, LED_CTL_START_TO_LINK);
 
 	if (pmlmepriv->assoc_ssid.ssid_length == 0)
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+Join cmd: Any SSid\n"));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, "+Join cmd: Any SSid\n");
 	else
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, "+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.ssid);
 
 	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd) {
@@ -394,7 +394,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		res = _FAIL;
 
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
-			 ("%s :psecnetwork == NULL!!!\n", __func__));
+			 "%s :psecnetwork == NULL!!!\n", __func__);
 
 		goto exit;
 	}
@@ -484,7 +484,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 	struct cmd_priv *cmdpriv = &padapter->cmdpriv;
 	u8 res = _SUCCESS;
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, "+%s\n", __func__);
 
 	/* prepare cmd parameter */
 	param = kzalloc(sizeof(*param), GFP_ATOMIC);
@@ -702,7 +702,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)
 
 	u8	res = _SUCCESS;
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, "+%s\n", __func__);
 
 	/* check input parameter */
 	if (!rtw_is_channel_plan_valid(chplan)) {
@@ -1127,7 +1127,7 @@ void rtw_survey_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 	} else if (pcmd->res != H2C_SUCCESS) {
 		mod_timer(&pmlmepriv->scan_to_timer,
 			  jiffies + msecs_to_jiffies(1));
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\n\n."));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\n ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\n\n.");
 	}
 
 	/*  free cmd */
@@ -1143,7 +1143,7 @@ void rtw_disassoc_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		set_fwstate(pmlmepriv, _FW_LINKED);
 		spin_unlock_bh(&pmlmepriv->lock);
 
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ***Error: disconnect_cmd_callback Fail ***\n."));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\n ***Error: disconnect_cmd_callback Fail ***\n.");
 		return;
 	}
 
@@ -1161,7 +1161,7 @@ void rtw_joinbss_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(1));
 	} else if (pcmd->res != H2C_SUCCESS) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("********Error:rtw_select_and_join_from_scanned_queue Wait Sema  Fail ************\n"));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "********Error:rtw_select_and_join_from_scanned_queue Wait Sema  Fail ************\n");
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(1));
 	}
@@ -1179,7 +1179,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 
 	if (pcmd->res != H2C_SUCCESS) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
-			 ("\n **** Error: %s  Fail ****\n\n.", __func__));
+			 "\n **** Error: %s  Fail ****\n\n.", __func__);
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(1));
 	}
@@ -1193,7 +1193,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		if (!psta) {
 			psta = rtw_alloc_stainfo(&padapter->stapriv, pnetwork->MacAddress);
 			if (!psta) {
-				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nCan't alloc sta_info when createbss_cmd_callback\n"));
+				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\nCan't alloc sta_info when createbss_cmd_callback\n");
 				goto createbss_cmd_fail;
 			}
 		}
@@ -1205,7 +1205,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		if (!pwlan) {
 			pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
 			if (!pwlan) {
-				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n Error:  can't get pwlan in rtw_joinbss_event_callback\n"));
+				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\n Error:  can't get pwlan in rtw_joinbss_event_callback\n");
 				spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 				goto createbss_cmd_fail;
 			}
@@ -1242,7 +1242,7 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
 
 	if (!psta) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: %s => can't get sta_info\n\n", __func__));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\nERROR: %s => can't get sta_info\n\n", __func__);
 		goto exit;
 	}
 exit:
@@ -1258,7 +1258,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);
 
 	if (!psta) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: %s => can't get sta_info\n\n", __func__));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\nERROR: %s => can't get sta_info\n\n", __func__);
 		goto exit;
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index caf600eba03b..d53fcdcd0a9c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -368,7 +368,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		pos += WPA_SELECTOR_LEN;
 		left -= WPA_SELECTOR_LEN;
 	} else if (left > 0) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie length mismatch, %u too much", __func__, left));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s: ie length mismatch, %u too much", __func__, left);
 		return _FAIL;
 	}
 
@@ -379,8 +379,8 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		left -= 2;
 
 		if (count == 0 || left < count * WPA_SELECTOR_LEN) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie count botch (pairwise), "
-						"count %u left %u", __func__, count, left));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s: ie count botch (pairwise), "
+						"count %u left %u", __func__, count, left);
 			return _FAIL;
 		}
 
@@ -391,7 +391,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 			left -= WPA_SELECTOR_LEN;
 		}
 	} else if (left == 1) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie too short (for key mgmt)",   __func__));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s: ie too short (for key mgmt)",   __func__);
 		return _FAIL;
 	}
 
@@ -399,7 +399,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		if (left >= 6) {
 			pos += 2;
 			if (!memcmp(pos, SUITE_1X, 4)) {
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s : there has 802.1x auth\n", __func__));
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s : there has 802.1x auth\n", __func__);
 				*is_8021x = 1;
 			}
 		}
@@ -435,7 +435,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		left -= RSN_SELECTOR_LEN;
 
 	} else if (left > 0) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie length mismatch, %u too much", __func__, left));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s: ie length mismatch, %u too much", __func__, left);
 		return _FAIL;
 	}
 
@@ -446,8 +446,8 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		left -= 2;
 
 		if (count == 0 || left < count * RSN_SELECTOR_LEN) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie count botch (pairwise), "
-						 "count %u left %u", __func__, count, left));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s: ie count botch (pairwise), "
+						 "count %u left %u", __func__, count, left);
 			return _FAIL;
 		}
 
@@ -459,7 +459,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		}
 
 	} else if (left == 1) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie too short (for key mgmt)",  __func__));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s: ie too short (for key mgmt)",  __func__);
 
 		return _FAIL;
 	}
@@ -468,7 +468,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		if (left >= 6) {
 			pos += 2;
 			if (!memcmp(pos, SUITE_1X, 4)) {
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s (): there has 802.1x auth\n", __func__));
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s (): there has 802.1x auth\n", __func__);
 				*is_8021x = 1;
 			}
 		}
@@ -493,17 +493,17 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 
 		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-					 ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
-					 sec_idx, in_ie[cnt + 1] + 2));
+					 "\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
+					 sec_idx, in_ie[cnt + 1] + 2);
 
 				if (wpa_ie) {
 					memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt + 1] + 2);
 
 					for (i = 0; i < (in_ie[cnt + 1] + 2); i += 8) {
 						RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-							 ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
+							 "\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
 							 wpa_ie[i], wpa_ie[i + 1], wpa_ie[i + 2], wpa_ie[i + 3], wpa_ie[i + 4],
-							 wpa_ie[i + 5], wpa_ie[i + 6], wpa_ie[i + 7]));
+							 wpa_ie[i + 5], wpa_ie[i + 6], wpa_ie[i + 7]);
 					}
 				}
 
@@ -512,17 +512,17 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 		} else {
 			if (authmode == _WPA2_IE_ID_) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-					 ("\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
-					 sec_idx, in_ie[cnt + 1] + 2));
+					 "\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n",
+					 sec_idx, in_ie[cnt + 1] + 2);
 
 				if (rsn_ie) {
 					memcpy(rsn_ie, &in_ie[cnt], in_ie[cnt + 1] + 2);
 
 					for (i = 0; i < (in_ie[cnt + 1] + 2); i += 8) {
 						RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-							 ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
+							 "\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
 							 rsn_ie[i], rsn_ie[i + 1], rsn_ie[i + 2], rsn_ie[i + 3], rsn_ie[i + 4],
-							 rsn_ie[i + 5], rsn_ie[i + 6], rsn_ie[i + 7]));
+							 rsn_ie[i + 5], rsn_ie[i + 6], rsn_ie[i + 7]);
 						}
 				}
 
@@ -916,28 +916,28 @@ static int rtw_get_cipher_info(struct wlan_network *pnetwork)
 	pbuf = rtw_get_wpa_ie(&pnetwork->network.ies[12], &wpa_ielen, pnetwork->network.ie_length - 12);
 
 	if (pbuf && (wpa_ielen > 0)) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: wpa_ielen: %d", __func__, wpa_ielen));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: wpa_ielen: %d", __func__, wpa_ielen);
 		if (rtw_parse_wpa_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_cipher, &is8021x) == _SUCCESS) {
 			pnetwork->BcnInfo.pairwise_cipher = pairwise_cipher;
 			pnetwork->BcnInfo.group_cipher = group_cipher;
 			pnetwork->BcnInfo.is_8021x = is8021x;
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->pairwise_cipher: %d, is_8021x is %d",
-				 __func__, pnetwork->BcnInfo.pairwise_cipher, pnetwork->BcnInfo.is_8021x));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: pnetwork->pairwise_cipher: %d, is_8021x is %d",
+				 __func__, pnetwork->BcnInfo.pairwise_cipher, pnetwork->BcnInfo.is_8021x);
 			ret = _SUCCESS;
 		}
 	} else {
 		pbuf = rtw_get_wpa2_ie(&pnetwork->network.ies[12], &wpa_ielen, pnetwork->network.ie_length - 12);
 
 		if (pbuf && (wpa_ielen > 0)) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("get RSN IE\n"));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "get RSN IE\n");
 			if (rtw_parse_wpa2_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_cipher, &is8021x) == _SUCCESS) {
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("get RSN IE  OK!!!\n"));
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "get RSN IE  OK!!!\n");
 				pnetwork->BcnInfo.pairwise_cipher = pairwise_cipher;
 				pnetwork->BcnInfo.group_cipher = group_cipher;
 				pnetwork->BcnInfo.is_8021x = is8021x;
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->pairwise_cipher: %d,"
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: pnetwork->pairwise_cipher: %d,"
 							"pnetwork->group_cipher is %d, is_8021x is %d",	__func__, pnetwork->BcnInfo.pairwise_cipher,
-							pnetwork->BcnInfo.group_cipher, pnetwork->BcnInfo.is_8021x));
+							pnetwork->BcnInfo.group_cipher, pnetwork->BcnInfo.is_8021x);
 				ret = _SUCCESS;
 			}
 		}
@@ -965,10 +965,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_OPENSYS;
 	}
 	rtw_get_sec_ie(pnetwork->network.ies, pnetwork->network.ie_length, NULL, &rsn_len, NULL, &wpa_len);
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: ssid =%s\n", __func__, pnetwork->network.ssid.ssid));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: wpa_len =%d rsn_len =%d\n", __func__, wpa_len, rsn_len));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: ssid =%s\n", __func__, pnetwork->network.ssid.ssid));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: wpa_len =%d rsn_len =%d\n", __func__, wpa_len, rsn_len));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: ssid =%s\n", __func__, pnetwork->network.ssid.ssid);
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: wpa_len =%d rsn_len =%d\n", __func__, wpa_len, rsn_len);
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: ssid =%s\n", __func__, pnetwork->network.ssid.ssid);
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s: wpa_len =%d rsn_len =%d\n", __func__, wpa_len, rsn_len);
 
 	if (rsn_len > 0) {
 		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WPA2;
@@ -978,10 +978,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 		if (bencrypt)
 			pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
 	}
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-		 pnetwork->BcnInfo.encryp_protocol));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
-		 pnetwork->BcnInfo.encryp_protocol));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
+		 pnetwork->BcnInfo.encryp_protocol);
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
+		 pnetwork->BcnInfo.encryp_protocol);
 	rtw_get_cipher_info(pnetwork);
 
 	/* get bwmode and ch_offset */
diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 7d56767cdff6..8436a794cb6f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -25,7 +25,7 @@ u8 rtw_do_join(struct adapter *padapter)
 	phead = get_list_head(queue);
 	plist = phead->next;
 
-	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n rtw_do_join: phead = %p; plist = %p\n\n\n", phead, plist));
+	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "\n rtw_do_join: phead = %p; plist = %p\n\n\n", phead, plist);
 
 	pmlmepriv->cur_network.join_res = -2;
 
@@ -44,12 +44,12 @@ u8 rtw_do_join(struct adapter *padapter)
 
 		if (!pmlmepriv->LinkDetectInfo.bBusyTraffic ||
 		    pmlmepriv->to_roaming > 0) {
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("rtw_do_join(): site survey if scanned_queue is empty\n."));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "rtw_do_join(): site survey if scanned_queue is empty\n.");
 			/*  submit site_survey_cmd */
 			ret = rtw_sitesurvey_cmd(padapter, &pmlmepriv->assoc_ssid, 1, NULL, 0);
 			if (ret != _SUCCESS) {
 				pmlmepriv->to_join = false;
-				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("rtw_do_join(): site survey return error\n."));
+				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "rtw_do_join(): site survey return error\n.");
 			}
 		} else {
 			pmlmepriv->to_join = false;
@@ -84,14 +84,14 @@ u8 rtw_do_join(struct adapter *padapter)
 				rtw_generate_random_ibss(pibss);
 
 				if (rtw_createbss_cmd(padapter) != _SUCCESS) {
-					RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("***Error =>do_goin: rtw_createbss_cmd status FAIL***\n "));
+					RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "***Error =>do_goin: rtw_createbss_cmd status FAIL***\n ");
 					ret =  false;
 					goto exit;
 				}
 				pmlmepriv->to_join = false;
 
 				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-					 ("***Error => rtw_select_and_join_from_scanned_queue FAIL under STA_Mode***\n "));
+					 "***Error => rtw_select_and_join_from_scanned_queue FAIL under STA_Mode***\n ");
 			} else {
 				/*  can't associate ; reset under-linking */
 				_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
@@ -103,7 +103,7 @@ u8 rtw_do_join(struct adapter *padapter)
 					ret = rtw_sitesurvey_cmd(padapter, &pmlmepriv->assoc_ssid, 1, NULL, 0);
 					if (ret != _SUCCESS) {
 						pmlmepriv->to_join = false;
-						RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("do_join(): site survey return error\n."));
+						RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "do_join(): site survey return error\n.");
 					}
 				} else {
 					ret = _FAIL;
@@ -142,15 +142,15 @@ u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid)
 		goto release_mlme_lock;
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_bssid: _FW_LINKED||WIFI_ADHOC_MASTER_STATE\n"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "set_bssid: _FW_LINKED||WIFI_ADHOC_MASTER_STATE\n");
 
 		if (!memcmp(&pmlmepriv->cur_network.network.MacAddress, bssid, ETH_ALEN)) {
 			if (!check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 				goto release_mlme_lock;/* it means driver is in WIFI_ADHOC_MASTER_STATE, we needn't create bss again. */
 		} else {
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("Set BSSID not the same bssid\n"));
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_bssid =%pM\n", (bssid)));
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("cur_bssid =%pM\n", (pmlmepriv->cur_network.network.MacAddress)));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "Set BSSID not the same bssid\n");
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "set_bssid =%pM\n", (bssid));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "cur_bssid =%pM\n", (pmlmepriv->cur_network.network.MacAddress));
 
 			rtw_disassoc_cmd(padapter, 0, true);
 
@@ -194,7 +194,7 @@ u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid)
 
 exit:
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_,
-		 ("%s: status=%d\n", __func__, status));
+		 "%s: status=%d\n", __func__, status);
 
 	return status;
 }
@@ -212,7 +212,7 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 
 	if (!padapter->hw_init_completed) {
 		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_,
-			 ("set_ssid: hw_init_completed == false =>exit!!!\n"));
+			 "set_ssid: hw_init_completed == false =>exit!!!\n");
 		status = _FAIL;
 		goto exit;
 	}
@@ -227,14 +227,14 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
 		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-			 ("set_ssid: _FW_LINKED||WIFI_ADHOC_MASTER_STATE\n"));
+			 "set_ssid: _FW_LINKED||WIFI_ADHOC_MASTER_STATE\n");
 
 		if (pmlmepriv->assoc_ssid.ssid_length == ssid->ssid_length &&
 		    !memcmp(&pmlmepriv->assoc_ssid.ssid, ssid->ssid, ssid->ssid_length)) {
 			if (!check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_,
-					 ("Set SSID is the same ssid, fw_state = 0x%08x\n",
-					  get_fwstate(pmlmepriv)));
+					 "Set SSID is the same ssid, fw_state = 0x%08x\n",
+					  get_fwstate(pmlmepriv));
 
 				if (!rtw_is_same_ibss(padapter, pnetwork)) {
 					/* if in WIFI_ADHOC_MASTER_STATE | WIFI_ADHOC_STATE, create bss or rejoin again */
@@ -256,9 +256,9 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 				rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_JOINBSS, 1);
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("Set SSID not the same ssid\n"));
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_ssid =[%s] len = 0x%x\n", ssid->ssid, (unsigned int)ssid->ssid_length));
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("assoc_ssid =[%s] len = 0x%x\n", pmlmepriv->assoc_ssid.ssid, (unsigned int)pmlmepriv->assoc_ssid.ssid_length));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "Set SSID not the same ssid\n");
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "set_ssid =[%s] len = 0x%x\n", ssid->ssid, (unsigned int)ssid->ssid_length);
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "assoc_ssid =[%s] len = 0x%x\n", pmlmepriv->assoc_ssid.ssid, (unsigned int)pmlmepriv->assoc_ssid.ssid_length);
 
 			rtw_disassoc_cmd(padapter, 0, true);
 
@@ -301,7 +301,7 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 
 exit:
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_,
-		 ("-%s: status =%d\n", __func__, status));
+		 "-%s: status =%d\n", __func__, status);
 	return status;
 }
 
@@ -313,13 +313,13 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 	enum ndis_802_11_network_infra *pold_state = &cur_network->network.InfrastructureMode;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_notice_,
-		 ("+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\n",
-		  *pold_state, networktype, get_fwstate(pmlmepriv)));
+		 "+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\n",
+		  *pold_state, networktype, get_fwstate(pmlmepriv));
 
 	if (*pold_state != networktype) {
 		spin_lock_bh(&pmlmepriv->lock);
 
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, (" change mode!"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, " change mode!");
 		/* DBG_88E("change mode, old_mode =%d, new_mode =%d, fw_state = 0x%x\n", *pold_state, networktype, get_fwstate(pmlmepriv)); */
 
 		if (*pold_state == Ndis802_11APMode) {
@@ -380,7 +380,7 @@ u8 rtw_set_802_11_disassociate(struct adapter *padapter)
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-			 ("MgntActrtw_set_802_11_disassociate: rtw_indicate_disconnect\n"));
+			 "MgntActrtw_set_802_11_disassociate: rtw_indicate_disconnect\n");
 
 		rtw_disassoc_cmd(padapter, 0, true);
 		rtw_indicate_disconnect(padapter);
@@ -398,7 +398,7 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 res = true;
 
-	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("+%s(), fw_state =%x\n", __func__, get_fwstate(pmlmepriv)));
+	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "+%s(), fw_state =%x\n", __func__, get_fwstate(pmlmepriv));
 
 	if (!padapter) {
 		res = false;
@@ -406,21 +406,21 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 	}
 	if (!padapter->hw_init_completed) {
 		res = false;
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n === %s:hw_init_completed == false ===\n", __func__));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "\n === %s:hw_init_completed == false ===\n", __func__);
 		goto exit;
 	}
 
 	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING) ||
 	    pmlmepriv->LinkDetectInfo.bBusyTraffic) {
 		/*  Scan or linking is in progress, do nothing. */
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("%s fail since fw_state = %x\n", __func__, get_fwstate(pmlmepriv)));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "%s fail since fw_state = %x\n", __func__, get_fwstate(pmlmepriv));
 		res = true;
 
 		if (check_fwstate(pmlmepriv,
 				  _FW_UNDER_SURVEY | _FW_UNDER_LINKING))
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n###_FW_UNDER_SURVEY|_FW_UNDER_LINKING\n\n"));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "\n###_FW_UNDER_SURVEY|_FW_UNDER_LINKING\n\n");
 		else
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n###pmlmepriv->sitesurveyctrl.traffic_busy == true\n\n"));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "\n###pmlmepriv->sitesurveyctrl.traffic_busy == true\n\n");
 
 	} else {
 		if (rtw_is_scan_deny(padapter)) {
@@ -446,13 +446,13 @@ u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum ndis_802_11
 	u8 ret;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("set_802_11_auth.mode(): mode =%x\n", authmode));
+		 "set_802_11_auth.mode(): mode =%x\n", authmode);
 
 	psecuritypriv->ndisauthtype = authmode;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("%s:psecuritypriv->ndisauthtype=%d", __func__,
-		 psecuritypriv->ndisauthtype));
+		 "%s:psecuritypriv->ndisauthtype=%d", __func__,
+		 psecuritypriv->ndisauthtype);
 
 	if (psecuritypriv->ndisauthtype > 3)
 		psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
@@ -476,7 +476,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 	keyid = wep->KeyIndex & 0x3fffffff;
 
 	if (keyid >= 4) {
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("MgntActrtw_set_802_11_add_wep:keyid>4 =>fail\n"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "MgntActrtw_set_802_11_add_wep:keyid>4 =>fail\n");
 		ret = false;
 		goto exit;
 	}
@@ -484,20 +484,20 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 	switch (wep->KeyLength) {
 	case 5:
 		psecuritypriv->dot11PrivacyAlgrthm = _WEP40_;
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("MgntActrtw_set_802_11_add_wep:wep->KeyLength = 5\n"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "MgntActrtw_set_802_11_add_wep:wep->KeyLength = 5\n");
 		break;
 	case 13:
 		psecuritypriv->dot11PrivacyAlgrthm = _WEP104_;
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("MgntActrtw_set_802_11_add_wep:wep->KeyLength = 13\n"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "MgntActrtw_set_802_11_add_wep:wep->KeyLength = 13\n");
 		break;
 	default:
 		psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("MgntActrtw_set_802_11_add_wep:wep->KeyLength!= 5 or 13\n"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, "MgntActrtw_set_802_11_add_wep:wep->KeyLength!= 5 or 13\n");
 		break;
 	}
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("rtw_set_802_11_add_wep:before memcpy, wep->KeyLength = 0x%x wep->KeyIndex = 0x%x  keyid =%x\n",
-		 wep->KeyLength, wep->KeyIndex, keyid));
+		 "rtw_set_802_11_add_wep:before memcpy, wep->KeyLength = 0x%x wep->KeyIndex = 0x%x  keyid =%x\n",
+		 wep->KeyLength, wep->KeyIndex, keyid);
 
 	memcpy(&psecuritypriv->dot11DefKey[keyid].skey[0],
 	       &wep->KeyMaterial, wep->KeyLength);
@@ -507,7 +507,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 	psecuritypriv->dot11PrivacyKeyIndex = keyid;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("rtw_set_802_11_add_wep:security key material : %x %x %x %x %x %x %x %x %x %x %x %x %x\n",
+		 "rtw_set_802_11_add_wep:security key material : %x %x %x %x %x %x %x %x %x %x %x %x %x\n",
 		 psecuritypriv->dot11DefKey[keyid].skey[0],
 		 psecuritypriv->dot11DefKey[keyid].skey[1],
 		 psecuritypriv->dot11DefKey[keyid].skey[2],
@@ -520,7 +520,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 		 psecuritypriv->dot11DefKey[keyid].skey[9],
 		 psecuritypriv->dot11DefKey[keyid].skey[10],
 		 psecuritypriv->dot11DefKey[keyid].skey[11],
-		 psecuritypriv->dot11DefKey[keyid].skey[12]));
+		 psecuritypriv->dot11DefKey[keyid].skey[12]);
 
 	res = rtw_set_key(padapter, psecuritypriv, keyid, 1);
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 32dccae186ca..b8ab315fe00c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -95,11 +95,11 @@ static void SwLedBlink1(struct LED_871x *pLed)
 	if (pLed->BlinkingLedState == RTW_LED_ON) {
 		sw_led_on(padapter, pLed);
 		RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
-			 ("Blinktimes (%d): turn on\n", pLed->BlinkTimes));
+			 "Blinktimes (%d): turn on\n", pLed->BlinkTimes);
 	} else {
 		sw_led_off(padapter, pLed);
 		RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
-			 ("Blinktimes (%d): turn off\n", pLed->BlinkTimes));
+			 "Blinktimes (%d): turn off\n", pLed->BlinkTimes);
 	}
 
 	if (padapter->pwrctrlpriv.rf_pwrstate != rf_on) {
@@ -137,7 +137,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_ON;
 				mod_timer(&pLed->BlinkTimer, jiffies +
 					  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
-				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
+				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, "CurrLedState %d\n", pLed->CurrLedState);
 			} else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedNoLinkBlinkInProgress = true;
 				pLed->CurrLedState = LED_BLINK_SLOWLY;
@@ -147,7 +147,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_ON;
 				mod_timer(&pLed->BlinkTimer, jiffies +
 					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
-				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
+				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, "CurrLedState %d\n", pLed->CurrLedState);
 			}
 			pLed->bLedScanBlinkInProgress = false;
 		} else {
@@ -171,7 +171,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_ON;
 				mod_timer(&pLed->BlinkTimer, jiffies +
 					  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
-				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
+				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, "CurrLedState %d\n", pLed->CurrLedState);
 			} else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedNoLinkBlinkInProgress = true;
 				pLed->CurrLedState = LED_BLINK_SLOWLY;
@@ -181,7 +181,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					pLed->BlinkingLedState = RTW_LED_ON;
 				mod_timer(&pLed->BlinkTimer, jiffies +
 					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
-				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
+				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, "CurrLedState %d\n", pLed->CurrLedState);
 			}
 			pLed->bLedBlinkInProgress = false;
 		} else {
@@ -211,7 +211,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 				pLed->BlinkingLedState = RTW_LED_ON;
 			mod_timer(&pLed->BlinkTimer, jiffies +
 				  msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
-			RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
+			RT_TRACE(_module_rtl8712_led_c_, _drv_info_, "CurrLedState %d\n", pLed->CurrLedState);
 
 			pLed->bLedWPSBlinkInProgress = false;
 		} else {
@@ -441,7 +441,7 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
 	}
 
 	RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
-		 ("Led %d\n", pLed->CurrLedState));
+		 "Led %d\n", pLed->CurrLedState);
 }
 
 void blink_handler(struct LED_871x *pLed)
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9de2d421f6b1..7164f828b198 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -119,7 +119,7 @@ struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv)
 	list_del_init(&pnetwork->list);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("rtw_alloc_network: ptr=%p\n", &pnetwork->list));
+		 "rtw_alloc_network: ptr=%p\n", &pnetwork->list);
 	pnetwork->network_type = 0;
 	pnetwork->fixed = false;
 	pnetwork->last_scanned = jiffies;
@@ -231,9 +231,9 @@ int rtw_if_up(struct adapter *padapter)
 	if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
 	    !check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-			 ("%s:bDriverStopped(%d) OR bSurpriseRemoved(%d)",
+			 "%s:bDriverStopped(%d) OR bSurpriseRemoved(%d)",
 			  __func__, padapter->bDriverStopped,
-			  padapter->bSurpriseRemoved));
+			  padapter->bSurpriseRemoved);
 		res = false;
 	} else {
 		res =  true;
@@ -442,7 +442,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 			if (!pnetwork) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-					 ("\n\n\nsomething wrong here\n\n\n"));
+					 "\n\n\nsomething wrong here\n\n\n");
 				goto exit;
 			}
 
@@ -536,7 +536,7 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
 /* TODO: Perry: For Power Management */
 void rtw_atimdone_event_callback(struct adapter *adapter, u8 *pbuf)
 {
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("receive atimdone_event\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "receive atimdone_event\n");
 }
 
 void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
@@ -548,12 +548,12 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 	pnetwork = (struct wlan_bssid_ex *)pbuf;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("%s, ssid=%s\n", __func__, pnetwork->ssid.ssid));
+		 "%s, ssid=%s\n", __func__, pnetwork->ssid.ssid);
 
 	len = get_wlan_bssid_ex_sz(pnetwork);
 	if (len > (sizeof(struct wlan_bssid_ex))) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("\n****%s: return a wrong bss ***\n", __func__));
+			 "\n****%s: return a wrong bss ***\n", __func__);
 		return;
 	}
 	spin_lock_bh(&pmlmepriv->lock);
@@ -599,13 +599,13 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 	}
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("%s: fw_state:%x\n\n", __func__, get_fwstate(pmlmepriv)));
+		 "%s: fw_state:%x\n\n", __func__, get_fwstate(pmlmepriv));
 
 	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY)) {
 		del_timer_sync(&pmlmepriv->scan_to_timer);
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 	} else {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("nic status=%x, survey done event comes too late!\n", get_fwstate(pmlmepriv)));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "nic status=%x, survey done event comes too late!\n", get_fwstate(pmlmepriv));
 	}
 
 	rtw_set_signal_stat_timer(&adapter->recvpriv);
@@ -624,7 +624,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 					_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 
-					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("switching to adhoc master\n"));
+					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "switching to adhoc master\n");
 
 					memcpy(&pdev_network->ssid, &pmlmepriv->assoc_ssid, sizeof(struct ndis_802_11_ssid));
 
@@ -634,7 +634,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 					pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;
 
 					if (rtw_createbss_cmd(adapter) != _SUCCESS)
-						RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error=>rtw_createbss_cmd status FAIL\n"));
+						RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "Error=>rtw_createbss_cmd status FAIL\n");
 					pmlmepriv->to_join = false;
 				}
 			}
@@ -688,7 +688,7 @@ static void free_scanqueue(struct	mlme_priv *pmlmepriv)
 	struct __queue *scan_queue = &pmlmepriv->scanned_queue;
 	struct list_head *plist, *phead, *ptemp;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, "+%s\n", __func__);
 	spin_lock_bh(&scan_queue->lock);
 	spin_lock_bh(&free_queue->lock);
 
@@ -728,10 +728,10 @@ void rtw_free_assoc_resources_locked(struct adapter *adapter)
 	struct sta_priv *pstapriv = &adapter->stapriv;
 	struct wlan_network *tgt_network = &pmlmepriv->cur_network;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+rtw_free_assoc_resources\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, "+rtw_free_assoc_resources\n");
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("tgt_network->network.MacAddress=%pM ssid=%s\n",
-		 tgt_network->network.MacAddress, tgt_network->network.ssid.ssid));
+		 "tgt_network->network.MacAddress=%pM ssid=%s\n",
+		 tgt_network->network.MacAddress, tgt_network->network.ssid.ssid);
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE)) {
 		struct sta_info *psta;
@@ -760,7 +760,7 @@ void rtw_free_assoc_resources_locked(struct adapter *adapter)
 	if (pwlan)
 		pwlan->fixed = false;
 	else
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_assoc_resources:pwlan==NULL\n\n"));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "rtw_free_assoc_resources:pwlan==NULL\n\n");
 
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) && (adapter->stapriv.asoc_sta_count == 1)))
 		rtw_free_network_nolock(pmlmepriv, pwlan);
@@ -775,7 +775,7 @@ void rtw_indicate_connect(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "+%s\n", __func__);
 
 	pmlmepriv->to_join = false;
 
@@ -791,7 +791,7 @@ void rtw_indicate_connect(struct adapter *padapter)
 
 	rtw_set_scan_deny(padapter, 3000);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("-%s: fw_state=0x%08x\n", __func__, get_fwstate(pmlmepriv)));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "-%s: fw_state=0x%08x\n", __func__, get_fwstate(pmlmepriv));
 }
 
 /*
@@ -801,7 +801,7 @@ void rtw_indicate_disconnect(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "+%s\n", __func__);
 
 	_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING | WIFI_UNDER_WPS);
 
@@ -903,8 +903,8 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	DBG_88E("%s\n", __func__);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("\nfw_state:%x, BSSID:%pM\n",
-		 get_fwstate(pmlmepriv), pnetwork->network.MacAddress));
+		 "\nfw_state:%x, BSSID:%pM\n",
+		 get_fwstate(pmlmepriv), pnetwork->network.MacAddress);
 
 	/*  why not use ptarget_wlan?? */
 	memcpy(&cur_network->network, &pnetwork->network, pnetwork->network.Length);
@@ -934,7 +934,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 		break;
 	default:
 		pmlmepriv->fw_state = WIFI_NULL_STATE;
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Invalid network_mode\n"));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "Invalid network_mode\n");
 		break;
 	}
 
@@ -961,26 +961,26 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 	struct wlan_network *pcur_wlan = NULL, *ptarget_wlan = NULL;
 	unsigned int the_same_macaddr = false;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("joinbss event call back received with res=%d\n", pnetwork->join_res));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "joinbss event call back received with res=%d\n", pnetwork->join_res);
 
 	rtw_get_encrypt_decrypt_from_registrypriv(adapter);
 
 	if (pmlmepriv->assoc_ssid.ssid_length == 0)
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "@@@@@   joinbss event call back  for Any SSid\n");
 	else
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   rtw_joinbss_event_callback for SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "@@@@@   rtw_joinbss_event_callback for SSid:%s\n", pmlmepriv->assoc_ssid.ssid);
 
 	the_same_macaddr = !memcmp(pnetwork->network.MacAddress, cur_network->network.MacAddress, ETH_ALEN);
 
 	pnetwork->network.Length = get_wlan_bssid_ex_sz(&pnetwork->network);
 	if (pnetwork->network.Length > sizeof(struct wlan_bssid_ex)) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n ***joinbss_evt_callback return a wrong bss ***\n\n"));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "\n\n ***joinbss_evt_callback return a wrong bss ***\n\n");
 		return;
 	}
 
 	spin_lock_bh(&pmlmepriv->lock);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\nrtw_joinbss_event_callback!! _enter_critical\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "\nrtw_joinbss_event_callback!! _enter_critical\n");
 
 	if (pnetwork->join_res > 0) {
 		spin_lock_bh(&pmlmepriv->scanned_queue.lock);
@@ -1019,7 +1019,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			if (ptarget_wlan) {
 				rtw_joinbss_update_network(adapter, ptarget_wlan, pnetwork);
 			} else {
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't find ptarget_wlan when joinbss_event callback\n"));
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "Can't find ptarget_wlan when joinbss_event callback\n");
 				spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 				goto ignore_joinbss_callback;
 			}
@@ -1028,7 +1028,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
 				if (!ptarget_sta) {
-					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't update stainfo when joinbss_event callback\n"));
+					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "Can't update stainfo when joinbss_event callback\n");
 					spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 					goto ignore_joinbss_callback;
 				}
@@ -1039,16 +1039,16 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 				rtw_indicate_connect(adapter);
 			} else {
 				/* adhoc mode will rtw_indicate_connect when rtw_stassoc_event_callback */
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("adhoc mode, fw_state:%x", get_fwstate(pmlmepriv)));
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "adhoc mode, fw_state:%x", get_fwstate(pmlmepriv));
 			}
 
 			/* s5. Cancel assoc_timer */
 			del_timer_sync(&pmlmepriv->assoc_timer);
 
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("Cancel assoc_timer\n"));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "Cancel assoc_timer\n");
 
 		} else {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_joinbss_event_callback err: fw_state:%x", get_fwstate(pmlmepriv)));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "rtw_joinbss_event_callback err: fw_state:%x", get_fwstate(pmlmepriv));
 			spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 			goto ignore_joinbss_callback;
 		}
@@ -1061,7 +1061,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			  jiffies + msecs_to_jiffies(1));
 
 		if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("fail! clear _FW_UNDER_LINKING ^^^fw_state=%x\n", get_fwstate(pmlmepriv)));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "fail! clear _FW_UNDER_LINKING ^^^fw_state=%x\n", get_fwstate(pmlmepriv));
 			_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 		}
 	} else { /* if join_res < 0 (join fails), then try again */
@@ -1153,14 +1153,14 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 	if (psta) {
 		/* the sta have been in sta_info_queue => do nothing */
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("Error: %s: sta has been in sta_hash_queue\n",
-			  __func__));
+			 "Error: %s: sta has been in sta_hash_queue\n",
+			  __func__);
 		return; /* between drv has received this event before and  fw have not yet to set key to CAM_ENTRY) */
 	}
 	psta = rtw_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
 	if (!psta) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("Can't alloc sta_info when %s\n", __func__));
+			 "Can't alloc sta_info when %s\n", __func__);
 		return;
 	}
 	/* to do: init sta_info variable */
@@ -1281,7 +1281,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 			}
 
 			if (rtw_createbss_cmd(adapter) != _SUCCESS)
-				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("***Error=>stadel_event_callback: rtw_createbss_cmd status FAIL***\n "));
+				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, "***Error=>stadel_event_callback: rtw_createbss_cmd status FAIL***\n ");
 		}
 	}
 	spin_unlock_bh(&pmlmepriv->lock);
@@ -1289,7 +1289,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 
 void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
 {
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+%s !!!\n", __func__));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "+%s !!!\n", __func__);
 }
 
 /*
@@ -1469,7 +1469,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 	while (phead != pmlmepriv->pscanned) {
 		pnetwork = container_of(pmlmepriv->pscanned, struct wlan_network, list);
 		if (!pnetwork) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork==NULL)\n", __func__));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "%s return _FAIL:(pnetwork==NULL)\n", __func__);
 			ret = _FAIL;
 			goto exit;
 		}
@@ -1540,8 +1540,8 @@ int rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-		 ("after enqueue set_auth_cmd, auth_mode=%x\n",
-		 psecuritypriv->dot11AuthAlgrthm));
+		 "after enqueue set_auth_cmd, auth_mode=%x\n",
+		 psecuritypriv->dot11AuthAlgrthm);
 	res = rtw_enqueue_cmd(pcmdpriv, pcmd);
 exit:
 	return res;
@@ -1569,13 +1569,13 @@ int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, in
 	if (psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) {
 		psetkeyparm->algorithm = (unsigned char)psecuritypriv->dot118021XGrpPrivacy;
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("\n %s: psetkeyparm->algorithm=(unsigned char)psecuritypriv->dot118021XGrpPrivacy=%d\n",
-			  __func__, psetkeyparm->algorithm));
+			 "\n %s: psetkeyparm->algorithm=(unsigned char)psecuritypriv->dot118021XGrpPrivacy=%d\n",
+			  __func__, psetkeyparm->algorithm);
 	} else {
 		psetkeyparm->algorithm = (u8)psecuritypriv->dot11PrivacyAlgrthm;
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("\n %s: psetkeyparm->algorithm=(u8)psecuritypriv->dot11PrivacyAlgrthm=%d\n",
-			  __func__, psetkeyparm->algorithm));
+			 "\n %s: psetkeyparm->algorithm=(u8)psecuritypriv->dot11PrivacyAlgrthm=%d\n",
+			  __func__, psetkeyparm->algorithm);
 	}
 	psetkeyparm->keyid = (u8)keyid;/* 0~3 */
 	psetkeyparm->set_tx = set_tx;
@@ -1584,8 +1584,8 @@ int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, in
 		__func__, psetkeyparm->algorithm, psetkeyparm->keyid,
 		pmlmepriv->key_mask);
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-		 ("\n %s: psetkeyparm->algorithm=%d psetkeyparm->keyid=(u8)keyid=%d\n",
-		  __func__, psetkeyparm->algorithm, keyid));
+		 "\n %s: psetkeyparm->algorithm=%d psetkeyparm->keyid=(u8)keyid=%d\n",
+		  __func__, psetkeyparm->algorithm, keyid);
 
 	switch (psetkeyparm->algorithm) {
 	case _WEP40_:
@@ -1610,8 +1610,8 @@ int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, in
 		break;
 	default:
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("\n %s:psecuritypriv->dot11PrivacyAlgrthm=%x (must be 1 or 2 or 4 or 5)\n",
-			  __func__, psecuritypriv->dot11PrivacyAlgrthm));
+			 "\n %s:psecuritypriv->dot11PrivacyAlgrthm=%x (must be 1 or 2 or 4 or 5)\n",
+			  __func__, psecuritypriv->dot11PrivacyAlgrthm);
 		res = _FAIL;
 		goto err_free_parm;
 	}
@@ -1720,8 +1720,8 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	uint ndissecuritytype = psecuritypriv->ndisencryptstatus;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_,
-		 ("+%s: ndisauthmode=%d ndissecuritytype=%d\n", __func__,
-		  ndisauthmode, ndissecuritytype));
+		 "+%s: ndisauthmode=%d ndissecuritytype=%d\n", __func__,
+		  ndisauthmode, ndissecuritytype);
 
 	/* copy fixed ie only */
 	memcpy(out_ie, in_ie, 12);
@@ -1800,8 +1800,8 @@ void rtw_update_registrypriv_dev_network(struct adapter *adapter)
 
 	pdev_network->Configuration.DSConfig = pregistrypriv->channel;
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("pregistrypriv->channel=%d, pdev_network->Configuration.DSConfig=0x%x\n",
-		 pregistrypriv->channel, pdev_network->Configuration.DSConfig));
+		 "pregistrypriv->channel=%d, pdev_network->Configuration.DSConfig=0x%x\n",
+		 pregistrypriv->channel, pdev_network->Configuration.DSConfig);
 
 	if (cur_network->network.InfrastructureMode == Ndis802_11IBSS)
 		pdev_network->Configuration.ATIMWindow = 0;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8d035f67ef61..d3bb40328d15 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -612,7 +612,7 @@ static int issue_probereq(struct adapter *padapter,
 	int bssrate_len = 0;
 	u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, "+%s\n", __func__);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
 	if (!pmgntframe)
@@ -675,7 +675,7 @@ static int issue_probereq(struct adapter *padapter,
 	pattrib->last_txcmdsz = pattrib->pktlen;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_,
-		 ("issuing probe_req, tx_len=%d\n", pattrib->last_txcmdsz));
+		 "issuing probe_req, tx_len=%d\n", pattrib->last_txcmdsz);
 
 	if (wait_ack) {
 		ret = dump_mgntframe_and_wait_ack(padapter, pmgntframe);
@@ -2210,7 +2210,7 @@ static void start_create_ibss(struct adapter *padapter)
 
 		/* issue beacon */
 		if (send_beacon(padapter) == _FAIL) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("issuing beacon frame fail....\n"));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "issuing beacon frame fail....\n");
 
 			report_join_res(padapter, -1);
 			pmlmeinfo->state = WIFI_FW_NULL_STATE;
@@ -2389,7 +2389,7 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 		memcpy(country, p, 3);
 		p += 3;
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_,
-			 ("%s: 802.11d country =%s\n", __func__, country));
+			 "%s: 802.11d country =%s\n", __func__, country);
 
 		i = 0;
 		while ((ie - p) >= 3) {
@@ -2487,8 +2487,8 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 			if (chplan_new[i].ScanType == SCAN_PASSIVE) {
 				chplan_new[i].ScanType = SCAN_ACTIVE;
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_,
-					 ("%s: change channel %d scan type from passive to active\n",
-					 __func__, channel));
+					 "%s: change channel %d scan type from passive to active\n",
+					 __func__, channel);
 			}
 			break;
 		}
@@ -4087,14 +4087,14 @@ void mgt_dispatcher(struct adapter *padapter, struct recv_frame *precv_frame)
 	struct sta_info *psta = rtw_get_stainfo(&padapter->stapriv, GetAddr2Ptr(pframe));
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("+%s: type(0x%x) subtype(0x%x)\n", __func__,
+		 "+%s: type(0x%x) subtype(0x%x)\n", __func__,
 		  (unsigned int)GetFrameType(pframe),
-		  (unsigned int)GetFrameSubType(pframe)));
+		  (unsigned int)GetFrameSubType(pframe));
 
 	if (GetFrameType(pframe) != WIFI_MGT_TYPE) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("%s: type(0x%x) error!\n", __func__,
-			  (unsigned int)GetFrameType(pframe)));
+			 "%s: type(0x%x) error!\n", __func__,
+			  (unsigned int)GetFrameType(pframe));
 		return;
 	}
 
@@ -4108,7 +4108,7 @@ void mgt_dispatcher(struct adapter *padapter, struct recv_frame *precv_frame)
 	index = GetFrameSubType(pframe) >> 4;
 
 	if (index > 13) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Currently we do not support reserved sub-fr-type=%d\n", index));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, "Currently we do not support reserved sub-fr-type=%d\n", index);
 		return;
 	}
 	ptable += index;
@@ -5363,7 +5363,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	/*  checking if event code is valid */
 	if (evt_code >= MAX_C2HEVT) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nEvent Code(%d) mismatch!\n", evt_code));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, "\nEvent Code(%d) mismatch!\n", evt_code);
 		goto _abort_event_;
 	}
 
@@ -5371,8 +5371,8 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 	if ((wlanevents[evt_code].parmsize != 0) &&
 	    (wlanevents[evt_code].parmsize != evt_sz)) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
-			 ("\nEvent(%d) Parm Size mismatch (%d vs %d)!\n",
-			 evt_code, wlanevents[evt_code].parmsize, evt_sz));
+			 "\nEvent(%d) Parm Size mismatch (%d vs %d)!\n",
+			 evt_code, wlanevents[evt_code].parmsize, evt_sz);
 		goto _abort_event_;
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index c000382c96d9..e10cc46b7145 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -290,15 +290,15 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 
 	if (pwrpriv->rpwm == pslv) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
-			 ("%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv));
+			 "%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv);
 		return;
 	}
 
 	if ((padapter->bSurpriseRemoved) ||
 	    (!padapter->hw_init_completed)) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
-			 ("%s: SurpriseRemoved(%d) hw_init_completed(%d)\n",
-			 __func__, padapter->bSurpriseRemoved, padapter->hw_init_completed));
+			 "%s: SurpriseRemoved(%d) hw_init_completed(%d)\n",
+			 __func__, padapter->bSurpriseRemoved, padapter->hw_init_completed);
 
 		pwrpriv->cpwm = PS_STATE_S4;
 
@@ -307,18 +307,18 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 
 	if (padapter->bDriverStopped) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
-			 ("%s: change power state(0x%02X) when DriverStopped\n", __func__, pslv));
+			 "%s: change power state(0x%02X) when DriverStopped\n", __func__, pslv);
 
 		if (pslv < PS_STATE_S2) {
 			RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
-				 ("%s: Reject to enter PS_STATE(0x%02X) lower than S2 when DriverStopped!!\n", __func__, pslv));
+				 "%s: Reject to enter PS_STATE(0x%02X) lower than S2 when DriverStopped!!\n", __func__, pslv);
 			return;
 		}
 	}
 
 	rpwm = pslv | pwrpriv->tog;
 	RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
-		 ("%s: rpwm=0x%02x cpwm=0x%02x\n", __func__, rpwm, pwrpriv->cpwm));
+		 "%s: rpwm=0x%02x cpwm=0x%02x\n", __func__, rpwm, pwrpriv->cpwm);
 
 	pwrpriv->rpwm = pslv;
 
@@ -361,11 +361,11 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
-		 ("%s: PowerMode=%d Smart_PS=%d\n",
-		  __func__, ps_mode, smart_ps));
+		 "%s: PowerMode=%d Smart_PS=%d\n",
+		  __func__, ps_mode, smart_ps);
 
 	if (ps_mode > PM_Card_Disable) {
-		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_, ("ps_mode:%d error\n", ps_mode));
+		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_, "ps_mode:%d error\n", ps_mode);
 		return;
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index a036ef104198..339dcbd2b8f7 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -225,11 +225,11 @@ static int recvframe_chkmic(struct adapter *adapter,
 
 	if (prxattrib->encrypt == _TKIP_) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-			 ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
+			 "\n %s: prxattrib->encrypt==_TKIP_\n", __func__);
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-			 ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
+			 "\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
 			  __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2],
-			  prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
+			  prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]);
 
 		/* calculate mic code */
 		if (stainfo) {
@@ -237,18 +237,18 @@ static int recvframe_chkmic(struct adapter *adapter,
 				if (!psecuritypriv) {
 					res = _FAIL;
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-						 ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
+						 "\n %s: didn't install group key!!!!!!!!!!\n", __func__);
 					DBG_88E("\n %s: didn't install group key!!!!!!!!!!\n", __func__);
 					goto exit;
 				}
 				mickey = &psecuritypriv->dot118021XGrprxmickey[prxattrib->key_index].skey[0];
 
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-					 ("\n %s: bcmc key\n", __func__));
+					 "\n %s: bcmc key\n", __func__);
 			} else {
 				mickey = &stainfo->dot11tkiprxmickey.skey[0];
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-					 ("\n %s: unicast key\n", __func__));
+					 "\n %s: unicast key\n", __func__);
 			}
 
 			/* icv_len included the mic code */
@@ -257,7 +257,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 			pframe = precvframe->pkt->data;
 			payload = pframe+prxattrib->hdrlen+prxattrib->iv_len;
 
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n prxattrib->iv_len=%d prxattrib->icv_len=%d\n", prxattrib->iv_len, prxattrib->icv_len));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "\n prxattrib->iv_len=%d prxattrib->icv_len=%d\n", prxattrib->iv_len, prxattrib->icv_len);
 			rtw_seccalctkipmic(mickey, pframe, payload, datalen, &miccode[0],
 					   (unsigned char)prxattrib->priority); /* care the length of the data */
 
@@ -268,33 +268,33 @@ static int recvframe_chkmic(struct adapter *adapter,
 			for (i = 0; i < 8; i++) {
 				if (miccode[i] != *(pframemic+i)) {
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
-						  __func__, i, miccode[i], i, *(pframemic + i)));
+						 "%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
+						  __func__, i, miccode[i], i, *(pframemic + i));
 					bmic_err = true;
 				}
 			}
 
 			if (bmic_err) {
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-					 ("\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
+					 "\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
 					 *(pframemic-8), *(pframemic-7), *(pframemic-6),
 					 *(pframemic-5), *(pframemic-4), *(pframemic-3),
-					 *(pframemic-2), *(pframemic-1)));
+					 *(pframemic-2), *(pframemic-1));
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-					 ("\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
+					 "\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
 					 *(pframemic-16), *(pframemic-15), *(pframemic-14),
 					 *(pframemic-13), *(pframemic-12), *(pframemic-11),
-					 *(pframemic-10), *(pframemic-9)));
+					 *(pframemic-10), *(pframemic-9));
 				{
 					uint i;
 
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-						 ("\n ======demp packet (len=%d)======\n",
-						 precvframe->pkt->len));
+						 "\n ======demp packet (len=%d)======\n",
+						 precvframe->pkt->len);
 					for (i = 0; i < precvframe->pkt->len; i += 8) {
 						RT_TRACE(_module_rtl871x_recv_c_,
 							 _drv_err_,
-							 ("0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x",
+							 "0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x",
 							 *(precvframe->pkt->data+i),
 							 *(precvframe->pkt->data+i+1),
 							 *(precvframe->pkt->data+i+2),
@@ -302,22 +302,22 @@ static int recvframe_chkmic(struct adapter *adapter,
 							 *(precvframe->pkt->data+i+4),
 							 *(precvframe->pkt->data+i+5),
 							 *(precvframe->pkt->data+i+6),
-							 *(precvframe->pkt->data+i+7)));
+							 *(precvframe->pkt->data+i+7));
 					}
 					RT_TRACE(_module_rtl871x_recv_c_,
 						 _drv_err_,
-						 ("\n ====== demp packet end [len=%d]======\n",
-						 precvframe->pkt->len));
+						 "\n ====== demp packet end [len=%d]======\n",
+						 precvframe->pkt->len);
 					RT_TRACE(_module_rtl871x_recv_c_,
 						 _drv_err_,
-						 ("\n hrdlen=%d,\n",
-						 prxattrib->hdrlen));
+						 "\n hrdlen=%d,\n",
+						 prxattrib->hdrlen);
 				}
 
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-					 ("ra=0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x psecuritypriv->binstallGrpkey=%d ",
+					 "ra=0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x psecuritypriv->binstallGrpkey=%d ",
 					 prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2],
-					 prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5], psecuritypriv->binstallGrpkey));
+					 prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5], psecuritypriv->binstallGrpkey);
 
 				/*  double check key_index for some timing issue , */
 				/*  cannot compare with psecuritypriv->dot118021XGrpKeyid also cause timing issue */
@@ -326,10 +326,10 @@ static int recvframe_chkmic(struct adapter *adapter,
 
 				if ((prxattrib->bdecrypted) && (brpt_micerror)) {
 					rtw_handle_tkip_mic_err(adapter, (u8)is_multicast_ether_addr(prxattrib->ra));
-					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" mic error :prxattrib->bdecrypted=%d ", prxattrib->bdecrypted));
+					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, " mic error :prxattrib->bdecrypted=%d ", prxattrib->bdecrypted);
 					DBG_88E(" mic error :prxattrib->bdecrypted=%d\n", prxattrib->bdecrypted);
 				} else {
-					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" mic error :prxattrib->bdecrypted=%d ", prxattrib->bdecrypted));
+					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, " mic error :prxattrib->bdecrypted=%d ", prxattrib->bdecrypted);
 					DBG_88E(" mic error :prxattrib->bdecrypted=%d\n", prxattrib->bdecrypted);
 				}
 				res = _FAIL;
@@ -337,12 +337,12 @@ static int recvframe_chkmic(struct adapter *adapter,
 				/* mic checked ok */
 				if (!psecuritypriv->bcheck_grpkey && is_multicast_ether_addr(prxattrib->ra)) {
 					psecuritypriv->bcheck_grpkey = true;
-					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("psecuritypriv->bcheck_grpkey = true"));
+					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "psecuritypriv->bcheck_grpkey = true");
 				}
 			}
 		} else {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-				 ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
+				 "%s: rtw_get_stainfo==NULL!!!\n", __func__);
 		}
 
 		skb_trim(precvframe->pkt, precvframe->pkt->len - 8);
@@ -362,7 +362,7 @@ static struct recv_frame *decryptor(struct adapter *padapter,
 	struct recv_frame *return_packet = precv_frame;
 	u32	 res = _SUCCESS;
 
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("prxstat->decrypted=%x prxattrib->encrypt=0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt));
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "prxstat->decrypted=%x prxattrib->encrypt=0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt);
 
 	if (prxattrib->encrypt > 0) {
 		u8 *iv = precv_frame->pkt->data + prxattrib->hdrlen;
@@ -442,7 +442,7 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 
 	prtnframe = NULL;
 
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:adapter->securitypriv.dot11AuthAlgrthm=%d\n", __func__, adapter->securitypriv.dot11AuthAlgrthm));
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "########%s:adapter->securitypriv.dot11AuthAlgrthm=%d\n", __func__, adapter->securitypriv.dot11AuthAlgrthm);
 
 	if (auth_alg == 2) {
 		/* get ether_type */
@@ -453,7 +453,7 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 		if (psta && (psta->ieee8021x_blocked)) {
 			/* blocked */
 			/* only accept EAPOL frame */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:psta->ieee8021x_blocked==1\n", __func__));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "########%s:psta->ieee8021x_blocked==1\n", __func__);
 
 			if (ether_type == eapol_type) {
 				prtnframe = precv_frame;
@@ -465,23 +465,23 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 		} else {
 			/* allowed */
 			/* check decryption status, and decrypt the frame if needed */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:psta->ieee8021x_blocked==0\n", __func__));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "########%s:psta->ieee8021x_blocked==0\n", __func__);
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 ("%s:precv_frame->hdr.attrib.privacy=%x\n",
-				  __func__, precv_frame->attrib.privacy));
+				 "%s:precv_frame->hdr.attrib.privacy=%x\n",
+				  __func__, precv_frame->attrib.privacy);
 
 			if (pattrib->bdecrypted == 0)
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("%s:prxstat->decrypted=%x\n", __func__, pattrib->bdecrypted));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "%s:prxstat->decrypted=%x\n", __func__, pattrib->bdecrypted);
 
 			prtnframe = precv_frame;
 			/* check is the EAPOL frame or not (Rekey) */
 			if (ether_type == eapol_type) {
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("########%s:ether_type==0x888e\n", __func__));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "########%s:ether_type==0x888e\n", __func__);
 				/* check Rekey */
 
 				prtnframe = precv_frame;
 			} else {
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:ether_type=0x%04x\n", __func__, ether_type));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "########%s:ether_type=0x%04x\n", __func__, ether_type);
 			}
 		}
 	} else {
@@ -500,14 +500,14 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
 		(precv_frame->attrib.frag_num & 0xf);
 
 	if (tid > 15) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("%s, (tid>15)! seq_ctrl=0x%x, tid=0x%x\n", __func__, seq_ctrl, tid));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "%s, (tid>15)! seq_ctrl=0x%x, tid=0x%x\n", __func__, seq_ctrl, tid);
 
 		return _FAIL;
 	}
 
 	if (1) {/* if (bretry) */
 		if (seq_ctrl == prxcache->tid_rxseq[tid]) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("%s, seq_ctrl=0x%x, tid=0x%x, tid_rxseq=0x%x\n", __func__, seq_ctrl, tid, prxcache->tid_rxseq[tid]));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "%s, seq_ctrl=0x%x, tid=0x%x, tid_rxseq=0x%x\n", __func__, seq_ctrl, tid, prxcache->tid_rxseq[tid]);
 
 			return _FAIL;
 		}
@@ -649,7 +649,7 @@ static int sta2sta_data_frame(struct adapter *adapter,
 	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
 		/*  filter packets that SA is myself or multicast or broadcast */
 		if (!memcmp(myhwaddr, pattrib->src, ETH_ALEN)) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" SA==myself\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, " SA==myself\n");
 			ret = _FAIL;
 			goto exit;
 		}
@@ -670,7 +670,7 @@ static int sta2sta_data_frame(struct adapter *adapter,
 	} else if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 		/*  For Station mode, sa and bssid should always be BSSID, and DA is my mac-address */
 		if (memcmp(pattrib->bssid, pattrib->src, ETH_ALEN)) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("bssid!=TA under STATION_MODE; drop pkt\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "bssid!=TA under STATION_MODE; drop pkt\n");
 			ret = _FAIL;
 			goto exit;
 		}
@@ -701,7 +701,7 @@ static int sta2sta_data_frame(struct adapter *adapter,
 		*psta = rtw_get_stainfo(pstapriv, sta_addr); /*  get ap_info */
 
 	if (!*psta) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under %s ; drop pkt\n", __func__));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "can't get psta under %s ; drop pkt\n", __func__);
 		ret = _FAIL;
 		goto exit;
 	}
@@ -729,7 +729,7 @@ static int ap2sta_data_frame(
 	     check_fwstate(pmlmepriv, _FW_UNDER_LINKING))) {
 		/*  filter packets that SA is myself or multicast or broadcast */
 		if (!memcmp(myhwaddr, pattrib->src, ETH_ALEN)) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" SA==myself\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, " SA==myself\n");
 			ret = _FAIL;
 			goto exit;
 		}
@@ -737,7 +737,7 @@ static int ap2sta_data_frame(
 		/*  da should be for me */
 		if (memcmp(myhwaddr, pattrib->dst, ETH_ALEN) && !mcast) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 (" %s:  compare DA fail; DA=%pM\n", __func__, (pattrib->dst)));
+				 " %s:  compare DA fail; DA=%pM\n", __func__, (pattrib->dst));
 			ret = _FAIL;
 			goto exit;
 		}
@@ -747,8 +747,8 @@ static int ap2sta_data_frame(
 		    !memcmp(mybssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
 		     (memcmp(pattrib->bssid, mybssid, ETH_ALEN))) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 (" %s:  compare BSSID fail ; BSSID=%pM\n", __func__, (pattrib->bssid)));
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("mybssid=%pM\n", (mybssid)));
+				 " %s:  compare BSSID fail ; BSSID=%pM\n", __func__, (pattrib->bssid));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "mybssid=%pM\n", (mybssid));
 
 			if (!mcast) {
 				DBG_88E("issue_deauth to the nonassociated ap=%pM for the reason(7)\n", (pattrib->bssid));
@@ -765,7 +765,7 @@ static int ap2sta_data_frame(
 			*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get ap_info */
 
 		if (!*psta) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("ap2sta: can't get psta under STATION_MODE ; drop pkt\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "ap2sta: can't get psta under STATION_MODE ; drop pkt\n");
 			ret = _FAIL;
 			goto exit;
 		}
@@ -821,7 +821,7 @@ static int sta2ap_data_frame(struct adapter *adapter,
 
 		*psta = rtw_get_stainfo(pstapriv, pattrib->src);
 		if (!*psta) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under AP_MODE; drop pkt\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "can't get psta under AP_MODE; drop pkt\n");
 			DBG_88E("issue_deauth to sta=%pM for the reason(7)\n", (pattrib->src));
 
 			issue_deauth(adapter, pattrib->src, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
@@ -992,12 +992,12 @@ static int validate_recv_mgnt_frame(struct adapter *padapter,
 {
 	struct sta_info *psta;
 
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("+%s\n", __func__));
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "+%s\n", __func__);
 
 	precv_frame = recvframe_chk_defrag(padapter, precv_frame);
 	if (!precv_frame) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
-			 ("%s: fragment packet\n", __func__));
+			 "%s: fragment packet\n", __func__);
 		return _SUCCESS;
 	}
 
@@ -1072,7 +1072,7 @@ static int validate_recv_data_frame(struct adapter *adapter,
 		memcpy(pattrib->ra, GetAddr1Ptr(ptr), ETH_ALEN);
 		memcpy(pattrib->ta, GetAddr2Ptr(ptr), ETH_ALEN);
 		ret = _FAIL;
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" case 3\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, " case 3\n");
 		break;
 	default:
 		ret = _FAIL;
@@ -1085,7 +1085,7 @@ static int validate_recv_data_frame(struct adapter *adapter,
 		goto exit;
 
 	if (!psta) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" after to_fr_ds_chk; psta==NULL\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, " after to_fr_ds_chk; psta==NULL\n");
 		ret = _FAIL;
 		goto exit;
 	}
@@ -1117,18 +1117,18 @@ static int validate_recv_data_frame(struct adapter *adapter,
 
 	/*  decache, drop duplicate recv packets */
 	if (recv_decache(precv_frame, bretry, &psta->sta_recvpriv.rxcache) == _FAIL) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("decache : drop pkt\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "decache : drop pkt\n");
 		ret = _FAIL;
 		goto exit;
 	}
 
 	if (pattrib->privacy) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("%s:pattrib->privacy=%x\n", __func__, pattrib->privacy));
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n ^^^^^^^^^^^is_multicast_ether_addr(pattrib->ra(0x%02x))=%d^^^^^^^^^^^^^^^6\n", pattrib->ra[0], is_multicast_ether_addr(pattrib->ra)));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "%s:pattrib->privacy=%x\n", __func__, pattrib->privacy);
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "\n ^^^^^^^^^^^is_multicast_ether_addr(pattrib->ra(0x%02x))=%d^^^^^^^^^^^^^^^6\n", pattrib->ra[0], is_multicast_ether_addr(pattrib->ra));
 
 		GET_ENCRY_ALGO(psecuritypriv, psta, pattrib->encrypt, is_multicast_ether_addr(pattrib->ra));
 
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n pattrib->encrypt=%d\n", pattrib->encrypt));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "\n pattrib->encrypt=%d\n", pattrib->encrypt);
 
 		SET_ICE_IV_LEN(pattrib->iv_len, pattrib->icv_len, pattrib->encrypt);
 	} else {
@@ -1167,7 +1167,7 @@ static int validate_recv_frame(struct adapter *adapter,
 
 	/* add version chk */
 	if (ver != 0) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail! (ver!=0)\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "validate_recv_data_frame fail! (ver!=0)\n");
 		retval = _FAIL;
 		goto exit;
 	}
@@ -1214,13 +1214,13 @@ static int validate_recv_frame(struct adapter *adapter,
 	case WIFI_MGT_TYPE: /* mgnt */
 		retval = validate_recv_mgnt_frame(adapter, precv_frame);
 		if (retval == _FAIL)
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_mgnt_frame fail\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "validate_recv_mgnt_frame fail\n");
 		retval = _FAIL; /*  only data frame return _SUCCESS */
 		break;
 	case WIFI_CTRL_TYPE: /* ctrl */
 		retval = validate_recv_ctrl_frame(adapter, precv_frame);
 		if (retval == _FAIL)
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_ctrl_frame fail\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "validate_recv_ctrl_frame fail\n");
 		retval = _FAIL; /*  only data frame return _SUCCESS */
 		break;
 	case WIFI_DATA_TYPE: /* data */
@@ -1234,7 +1234,7 @@ static int validate_recv_frame(struct adapter *adapter,
 		}
 		break;
 	default:
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail! type= 0x%x\n", type));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "validate_recv_data_frame fail! type= 0x%x\n", type);
 		retval = _FAIL;
 		break;
 	}
@@ -1292,7 +1292,7 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 	len = precvframe->pkt->len - rmv_len;
 
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-		 ("\n===pattrib->hdrlen: %x,  pattrib->iv_len:%x===\n\n", pattrib->hdrlen,  pattrib->iv_len));
+		 "\n===pattrib->hdrlen: %x,  pattrib->iv_len:%x===\n\n", pattrib->hdrlen,  pattrib->iv_len);
 
 	memcpy(&be_tmp, ptr+rmv_len, 2);
 	eth_type = ntohs(be_tmp); /* pattrib->ether_type */
@@ -1382,7 +1382,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 	/* free the defrag_q queue and return the prframe */
 	rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
 
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Performance defrag!!!!!\n"));
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "Performance defrag!!!!!\n");
 
 	return prframe;
 }
@@ -1445,14 +1445,14 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 			phead = get_list_head(pdefrag_q);
 			list_add_tail(&pfhdr->list, phead);
 
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Enqueuq: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "Enqueuq: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum);
 
 			prtnframe = NULL;
 		} else {
 			/* can't find this ta's defrag_queue, so free this recv_frame */
 			rtw_free_recvframe(precv_frame, pfree_recv_queue);
 			prtnframe = NULL;
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q==NULL: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "Free because pdefrag_q==NULL: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum);
 		}
 	}
 
@@ -1464,21 +1464,21 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 			list_add_tail(&pfhdr->list, phead);
 
 			/* call recvframe_defrag to defrag */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("defrag: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "defrag: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum);
 			precv_frame = recvframe_defrag(padapter, pdefrag_q);
 			prtnframe = precv_frame;
 		} else {
 			/* can't find this ta's defrag_queue, so free this recv_frame */
 			rtw_free_recvframe(precv_frame, pfree_recv_queue);
 			prtnframe = NULL;
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q==NULL: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "Free because pdefrag_q==NULL: ismfrag=%d, fragnum=%d\n", ismfrag, fragnum);
 		}
 	}
 
 	if (prtnframe && (prtnframe->attrib.privacy)) {
 		/* after defrag we must check tkip mic code */
 		if (recvframe_chkmic(padapter,  prtnframe) == _FAIL) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe)==_FAIL\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "recvframe_chkmic(padapter,  prtnframe)==_FAIL\n");
 			rtw_free_recvframe(prtnframe, pfree_recv_queue);
 			prtnframe = NULL;
 		}
@@ -1684,8 +1684,8 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 
 		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
-				 ("%s: indicate=%d seq=%d amsdu=%d\n",
-				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
+				 "%s: indicate=%d seq=%d amsdu=%d\n",
+				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu);
 			plist = plist->next;
 			list_del_init(&prframe->list);
 
@@ -1732,7 +1732,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 		    (pattrib->ack_policy != 0)) {
 			if ((!padapter->bDriverStopped) &&
 			    (!padapter->bSurpriseRemoved)) {
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@  %s -recv_func recv_indicatepkt\n", __func__));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "@@@@  %s -recv_func recv_indicatepkt\n", __func__);
 
 				rtw_recv_indicatepkt(padapter, prframe);
 				return _SUCCESS;
@@ -1764,8 +1764,8 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 	spin_lock_bh(&ppending_recvframe_queue->lock);
 
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
-		 ("%s: indicate=%d seq=%d\n", __func__,
-		  preorder_ctrl->indicate_seq, pattrib->seq_num));
+		 "%s: indicate=%d seq=%d\n", __func__,
+		  preorder_ctrl->indicate_seq, pattrib->seq_num);
 
 	/* s2. check if winstart_b(indicate_seq) needs to been updated */
 	if (!check_indicate_seq(preorder_ctrl, pattrib->seq_num)) {
@@ -1848,19 +1848,19 @@ static int process_recv_indicatepkts(struct adapter *padapter,
 	} else { /* B/G mode */
 		retval = wlanhdr_to_ethhdr(prframe);
 		if (retval != _SUCCESS) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("wlanhdr_to_ethhdr: drop pkt\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "wlanhdr_to_ethhdr: drop pkt\n");
 			return retval;
 		}
 
 		if ((!padapter->bDriverStopped) &&
 		    (!padapter->bSurpriseRemoved)) {
 			/* indicate this recv_frame */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func recv_indicatepkt\n", __func__));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "@@@@ %s- recv_func recv_indicatepkt\n", __func__);
 			rtw_recv_indicatepkt(padapter, prframe);
 		} else {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "@@@@ %s- recv_func free_indicatepkt\n", __func__);
 
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, "recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved);
 			return _FAIL;
 		}
 	}
@@ -1877,7 +1877,7 @@ static int recv_func_prehandle(struct adapter *padapter,
 	/* check the frame crtl field and decache */
 	ret = validate_recv_frame(padapter, rframe);
 	if (ret != _SUCCESS) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("recv_func: validate_recv_frame fail! drop pkt\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "recv_func: validate_recv_frame fail! drop pkt\n");
 		rtw_free_recvframe(rframe, pfree_recv_queue);/* free this recv_frame */
 		goto exit;
 	}
@@ -1899,20 +1899,20 @@ static int recv_func_posthandle(struct adapter *padapter,
 
 	prframe = decryptor(padapter, prframe);
 	if (!prframe) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("decryptor: drop pkt\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "decryptor: drop pkt\n");
 		ret = _FAIL;
 		goto _recv_data_drop;
 	}
 
 	prframe = recvframe_chk_defrag(padapter, prframe);
 	if (!prframe) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chk_defrag: drop pkt\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "recvframe_chk_defrag: drop pkt\n");
 		goto _recv_data_drop;
 	}
 
 	prframe = portctrl(padapter, prframe);
 	if (!prframe) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("portctrl: drop pkt\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "portctrl: drop pkt\n");
 		ret = _FAIL;
 		goto _recv_data_drop;
 	}
@@ -1921,7 +1921,7 @@ static int recv_func_posthandle(struct adapter *padapter,
 
 	ret = process_recv_indicatepkts(padapter, prframe);
 	if (ret != _SUCCESS) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recv_func: process_recv_indicatepkts fail!\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, "recv_func: process_recv_indicatepkts fail!\n");
 		rtw_free_recvframe(orig_prframe, pfree_recv_queue);/* free this recv_frame */
 		goto _recv_data_drop;
 	}
@@ -1983,7 +1983,7 @@ s32 rtw_recv_entry(struct recv_frame *precvframe)
 
 	ret = recv_func(padapter, precvframe);
 	if (ret == _FAIL) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("%s: recv_func return fail!!!\n", __func__));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, "%s: recv_func return fail!!!\n", __func__);
 		goto _recv_entry_drop;
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 435c0fbec54a..5fb4274afbb5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -605,7 +605,7 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
 
 		if (stainfo != NULL) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "%s: stainfo!= NULL!!!\n", __func__);
 
 			if (is_multicast_ether_addr(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
@@ -626,8 +626,8 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				if ((curfragnum+1) == pattrib->nr_frags) {	/* 4 the last fragment */
 					length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
 					RT_TRACE(_module_rtl871x_security_c_, _drv_info_,
-						 ("pattrib->iv_len=%x, pattrib->icv_len=%x\n",
-						 pattrib->iv_len, pattrib->icv_len));
+						 "pattrib->iv_len=%x, pattrib->icv_len=%x\n",
+						 pattrib->iv_len, pattrib->icv_len);
 					*((__le32 *)crc) = getcrc32(payload, length);/* modified by Amy*/
 
 					arcfour_init(&mycontext, rc4key, 16);
@@ -645,7 +645,7 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "%s: stainfo==NULL!!!\n", __func__);
 			res = _FAIL;
 		}
 	}
@@ -685,7 +685,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				}
 				prwskey = psecuritypriv->dot118021XGrpKey[prxattrib->key_index].skey;
 			} else {
-				RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+				RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "%s: stainfo!= NULL!!!\n", __func__);
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 			}
 
@@ -713,12 +713,12 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 			    crc[1] != payload[length-3] ||
 			    crc[0] != payload[length-4]) {
 				RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
-					 ("rtw_wep_decrypt:icv error crc (%4ph)!=payload (%4ph)\n",
-					 &crc, &payload[length-4]));
+					 "rtw_wep_decrypt:icv error crc (%4ph)!=payload (%4ph)\n",
+					 &crc, &payload[length-4]);
 				res = _FAIL;
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_decrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "rtw_tkip_decrypt: stainfo==NULL!!!\n");
 			res = _FAIL;
 		}
 	}
@@ -1247,7 +1247,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
 
 		if (stainfo) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "%s: stainfo!= NULL!!!\n", __func__);
 
 			if (is_multicast_ether_addr(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
@@ -1267,7 +1267,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "%s: stainfo==NULL!!!\n", __func__);
 			res = _FAIL;
 		}
 	}
@@ -1341,7 +1341,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 			if (crypto_ops && crypto_private)
 				crypto_ops->deinit(crypto_private);
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, "rtw_aes_encrypt: stainfo==NULL!!!\n");
 			res = _FAIL;
 		}
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 73f2cb5ebaa6..33fab4ae83af 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -189,10 +189,10 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	memcpy(psta->hwaddr, hwaddr, ETH_ALEN);
 	index = wifi_mac_hash(hwaddr);
 	RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
-		 ("%s: index=%x", __func__, index));
+		 "%s: index=%x", __func__, index);
 	if (index >= NUM_STA) {
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
-			 ("ERROR => %s: index >= NUM_STA", __func__));
+			 "ERROR => %s: index >= NUM_STA", __func__);
 		return NULL;
 	}
 	phash_list = &pstapriv->sta_hash[index];
@@ -215,8 +215,8 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 		       &wRxSeqInitialValue, 2);
 
 	RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
-		 ("alloc number_%d stainfo  with hwaddr = %pM\n",
-		  pstapriv->asoc_sta_count, hwaddr));
+		 "alloc number_%d stainfo  with hwaddr = %pM\n",
+		  pstapriv->asoc_sta_count, hwaddr);
 
 	init_addba_retry_timer(pstapriv->padapter, psta);
 
@@ -289,10 +289,10 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 
 	list_del_init(&psta->hash_list);
 	RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
-		 ("\n free number_%d stainfo with hwaddr=0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n",
+		 "\n free number_%d stainfo with hwaddr=0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n",
 		 pstapriv->asoc_sta_count, psta->hwaddr[0], psta->hwaddr[1],
 		 psta->hwaddr[2], psta->hwaddr[3], psta->hwaddr[4],
-		 psta->hwaddr[5]));
+		 psta->hwaddr[5]);
 	pstapriv->asoc_sta_count--;
 
 	/*  re-init sta_info; 20061114 */
@@ -458,7 +458,7 @@ u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 
 	if (!psta) {
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
-			 ("rtw_alloc_stainfo fail"));
+			 "rtw_alloc_stainfo fail");
 		return _FAIL;
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 6df873e4c2ed..4896b9612869 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -918,10 +918,10 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 	memcpy(bssid->ssid.ssid, (p + 2), ssid_len);
 	bssid->ssid.ssid_length = ssid_len;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s bssid.ssid.ssid:%s bssid.ssid.ssid_length:%d "
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "%s bssid.ssid.ssid:%s bssid.ssid.ssid_length:%d "
 				"cur_network->network.ssid.ssid:%s len:%d\n", __func__, bssid->ssid.ssid,
 				bssid->ssid.ssid_length, cur_network->network.ssid.ssid,
-				cur_network->network.ssid.ssid_length));
+				cur_network->network.ssid.ssid_length);
 
 	if (memcmp(bssid->ssid.ssid, cur_network->network.ssid.ssid, 32) ||
 	    bssid->ssid.ssid_length != cur_network->network.ssid.ssid_length) {
@@ -940,8 +940,8 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 		bssid->Privacy = 0;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("%s(): cur_network->network.Privacy is %d, bssid.Privacy is %d\n",
-		 __func__, cur_network->network.Privacy, bssid->Privacy));
+		 "%s(): cur_network->network.Privacy is %d, bssid.Privacy is %d\n",
+		 __func__, cur_network->network.Privacy, bssid->Privacy);
 	if (cur_network->network.Privacy != bssid->Privacy) {
 		DBG_88E("%s(), privacy is not match return FAIL\n", __func__);
 		goto _mismatch;
@@ -969,8 +969,8 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 		if (pbuf && (wpa_ielen > 0)) {
 			if (_SUCCESS == rtw_parse_wpa_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_cipher, &is_8021x)) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-					 ("%s pnetwork->pairwise_cipher: %d, group_cipher is %d, is_8021x is %d\n", __func__,
-					 pairwise_cipher, group_cipher, is_8021x));
+					 "%s pnetwork->pairwise_cipher: %d, group_cipher is %d, is_8021x is %d\n", __func__,
+					 pairwise_cipher, group_cipher, is_8021x);
 			}
 		} else {
 			pbuf = rtw_get_wpa2_ie(&bssid->ies[12], &wpa_ielen,
@@ -979,14 +979,14 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 			if (pbuf && (wpa_ielen > 0)) {
 				if (_SUCCESS == rtw_parse_wpa2_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_cipher, &is_8021x)) {
 					RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-						 ("%s pnetwork->pairwise_cipher: %d, pnetwork->group_cipher is %d, is_802x is %d\n",
-						  __func__, pairwise_cipher, group_cipher, is_8021x));
+						 "%s pnetwork->pairwise_cipher: %d, pnetwork->group_cipher is %d, is_802x is %d\n",
+						  __func__, pairwise_cipher, group_cipher, is_8021x);
 				}
 			}
 		}
 
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("%s cur_network->group_cipher is %d: %d\n", __func__, cur_network->BcnInfo.group_cipher, group_cipher));
+			 "%s cur_network->group_cipher is %d: %d\n", __func__, cur_network->BcnInfo.group_cipher, group_cipher);
 		if (pairwise_cipher != cur_network->BcnInfo.pairwise_cipher || group_cipher != cur_network->BcnInfo.group_cipher) {
 			DBG_88E("%s pairwise_cipher(%x:%x) or group_cipher(%x:%x) is not match , return FAIL\n", __func__,
 				pairwise_cipher, cur_network->BcnInfo.pairwise_cipher,
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 258531bc1408..8ddfa15e8a28 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -72,7 +72,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_frame fail!\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "alloc xmit_frame fail!\n");
 		res = _FAIL;
 		goto exit;
 	}
@@ -107,7 +107,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	pxmitpriv->pallocated_xmitbuf = vzalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4);
 
 	if (!pxmitpriv->pallocated_xmitbuf) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_buf fail!\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "alloc xmit_buf fail!\n");
 		res = _FAIL;
 		goto exit;
 	}
@@ -146,7 +146,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	pxmitpriv->pallocated_xmit_extbuf = vzalloc(num_xmit_extbuf * sizeof(struct xmit_buf) + 4);
 
 	if (!pxmitpriv->pallocated_xmit_extbuf) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_extbuf fail!\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "alloc xmit_extbuf fail!\n");
 		res = _FAIL;
 		goto exit;
 	}
@@ -441,7 +441,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 				    ((tmp[21] == 67) && (tmp[23] == 68))) {
 					/*  68 : UDP BOOTP client */
 					/*  67 : UDP BOOTP server */
-					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====================== %s: get DHCP Packet\n", __func__));
+					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "====================== %s: get DHCP Packet\n", __func__);
 					/*  Use low rate to send DHCP packet. */
 					pattrib->dhcp_pkt = 1;
 				}
@@ -466,7 +466,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 	} else {
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
 		if (!psta) { /*  if we cannot get psta => drrp the pkt */
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra: %pM\n", (pattrib->ra)));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, "\nupdate_attrib => get sta_info fail, ra: %pM\n", (pattrib->ra));
 			res = _FAIL;
 			goto exit;
 		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE) &&
@@ -482,7 +482,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 		pattrib->psta = psta;
 	} else {
 		/*  if we cannot get psta => drop the pkt */
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", (pattrib->ra)));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, "\nupdate_attrib => get sta_info fail, ra:%pM\n", (pattrib->ra));
 		res = _FAIL;
 		goto exit;
 	}
@@ -507,12 +507,12 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 	}
 
 	if (psta->ieee8021x_blocked) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\n psta->ieee8021x_blocked == true\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "\n psta->ieee8021x_blocked == true\n");
 
 		pattrib->encrypt = 0;
 
 		if (pattrib->ether_type != ETH_P_PAE) {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != ETH_P_PAE\n", pattrib->ether_type));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != ETH_P_PAE\n", pattrib->ether_type);
 			res = _FAIL;
 			goto exit;
 		}
@@ -549,14 +549,14 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 
 		if (padapter->securitypriv.busetkipkey == _FAIL) {
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-				 ("\npadapter->securitypriv.busetkipkey(%d) == _FAIL drop packet\n",
-				 padapter->securitypriv.busetkipkey));
+				 "\npadapter->securitypriv.busetkipkey(%d) == _FAIL drop packet\n",
+				 padapter->securitypriv.busetkipkey);
 			res = _FAIL;
 			goto exit;
 		}
 		break;
 	case _AES_:
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("pattrib->encrypt=%d (_AES_)\n", pattrib->encrypt));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, "pattrib->encrypt=%d (_AES_)\n", pattrib->encrypt);
 		pattrib->iv_len = 8;
 		pattrib->icv_len = 8;
 		break;
@@ -567,16 +567,16 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 	}
 
 	RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-		 ("%s: encrypt=%d\n", __func__, pattrib->encrypt));
+		 "%s: encrypt=%d\n", __func__, pattrib->encrypt);
 
 	if (pattrib->encrypt && !psecuritypriv->hw_decrypted) {
 		pattrib->bswenc = true;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-			 ("%s: encrypt=%d bswenc = true\n", __func__,
-			  pattrib->encrypt));
+			 "%s: encrypt=%d bswenc = true\n", __func__,
+			  pattrib->encrypt);
 	} else {
 		pattrib->bswenc = false;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s: bswenc = false\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, "%s: bswenc = false\n", __func__);
 	}
 
 	update_attrib_phy_info(pattrib, psta);
@@ -647,16 +647,16 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
 				payload = (u8 *)round_up((size_t)(payload), 4);
 				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-					 ("=== curfragnum=%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\n",
+					 "=== curfragnum=%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\n",
 					 curfragnum, *payload, *(payload + 1),
 					 *(payload + 2), *(payload + 3),
 					 *(payload + 4), *(payload + 5),
-					 *(payload + 6), *(payload + 7)));
+					 *(payload + 6), *(payload + 7));
 
 				payload += pattrib->hdrlen + pattrib->iv_len;
 				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-					 ("curfragnum=%d pattrib->hdrlen=%d pattrib->iv_len=%d",
-					 curfragnum, pattrib->hdrlen, pattrib->iv_len));
+					 "curfragnum=%d pattrib->hdrlen=%d pattrib->iv_len=%d",
+					 curfragnum, pattrib->hdrlen, pattrib->iv_len);
 				if (curfragnum + 1 == pattrib->nr_frags) {
 					length = pattrib->last_txcmdsz -
 						 pattrib->hdrlen -
@@ -673,31 +673,31 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 						  pattrib->icv_len : 0);
 					rtw_secmicappend(&micdata, payload, length);
 					payload += length + pattrib->icv_len;
-					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("curfragnum=%d length=%d pattrib->icv_len=%d", curfragnum, length, pattrib->icv_len));
+					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "curfragnum=%d length=%d pattrib->icv_len=%d", curfragnum, length, pattrib->icv_len);
 				}
 			}
 			rtw_secgetmic(&micdata, &mic[0]);
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: before add mic code!!!\n", __func__));
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: pattrib->last_txcmdsz=%d!!!\n", __func__, pattrib->last_txcmdsz));
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: mic[0]=0x%.2x , mic[1]=0x%.2x , mic[2]= 0x%.2x, mic[3]=0x%.2x\n\
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: before add mic code!!!\n", __func__);
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: pattrib->last_txcmdsz=%d!!!\n", __func__, pattrib->last_txcmdsz);
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: mic[0]=0x%.2x , mic[1]=0x%.2x , mic[2]= 0x%.2x, mic[3]=0x%.2x\n\
   mic[4]= 0x%.2x , mic[5]= 0x%.2x , mic[6]= 0x%.2x , mic[7]= 0x%.2x !!!!\n",
-				__func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]));
+				__func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]);
 			/* add mic code  and add the mic code length in last_txcmdsz */
 
 			memcpy(payload, &mic[0], 8);
 			pattrib->last_txcmdsz += 8;
 
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("\n ======== last pkt ========\n"));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, "\n ======== last pkt ========\n");
 			payload -= pattrib->last_txcmdsz + 8;
 			for (curfragnum = 0; curfragnum < pattrib->last_txcmdsz; curfragnum += 8)
 				RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-					 (" %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x ",
+					 " %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x ",
 					 *(payload + curfragnum), *(payload + curfragnum + 1),
 					 *(payload + curfragnum + 2), *(payload + curfragnum + 3),
 					 *(payload + curfragnum + 4), *(payload + curfragnum + 5),
-					 *(payload + curfragnum + 6), *(payload + curfragnum + 7)));
+					 *(payload + curfragnum + 6), *(payload + curfragnum + 7));
 			} else {
-				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
+				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: rtw_get_stainfo==NULL!!!\n", __func__);
 			}
 	}
 
@@ -709,7 +709,7 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 	struct	pkt_attrib	 *pattrib = &pxmitframe->attrib;
 
 	if (pattrib->bswenc) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("### %s\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, "### %s\n", __func__);
 		switch (pattrib->encrypt) {
 		case _WEP40_:
 		case _WEP104_:
@@ -725,7 +725,7 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 			break;
 		}
 	} else {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, "### xmitframe_hwencrypt\n");
 	}
 
 	return _SUCCESS;
@@ -787,7 +787,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 			if (psta && psta->qos_option)
 				qos_option = true;
 		} else {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv));
 			res = _FAIL;
 			goto exit;
 		}
@@ -935,7 +935,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 	mem_start = pbuf_start +	hw_hdr_offset;
 
 	if (rtw_make_wlanhdr(padapter, mem_start, pattrib) == _FAIL) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: rtw_make_wlanhdr fail; drop pkt\n", __func__);
 		DBG_88E("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__);
 		res = _FAIL;
 		goto exit;
@@ -980,11 +980,11 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 			memcpy(pframe, pattrib->iv, pattrib->iv_len);
 
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_,
-				 ("%s: keyid=%d pattrib->iv[3]=%.2x pframe=%.2x %.2x %.2x %.2x\n",
+				 "%s: keyid=%d pattrib->iv[3]=%.2x pframe=%.2x %.2x %.2x %.2x\n",
 				  __func__,
 				  padapter->securitypriv.dot11PrivacyKeyIndex,
 				  pattrib->iv[3], *pframe, *(pframe + 1),
-				  *(pframe + 2), *(pframe + 3)));
+				  *(pframe + 2), *(pframe + 3));
 
 			pframe += pattrib->iv_len;
 
@@ -1024,7 +1024,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 			break;
 		}
 
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: There're still something in packet!\n", __func__);
 
 		addr = (size_t)(pframe);
 
@@ -1036,7 +1036,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 	rtl88eu_mon_xmit_hook(padapter->pmondev, pxmitframe, frg_len);
 
 	if (xmitframe_addmic(padapter, pxmitframe) == _FAIL) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "xmitframe_addmic(padapter, pxmitframe) == _FAIL\n");
 		DBG_88E("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n");
 		res = _FAIL;
 		goto exit;
@@ -1260,8 +1260,8 @@ struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)
 					   struct xmit_frame, list);
 	if (!pxframe) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-			 ("rtw_alloc_xmitframe:%d\n",
-			 pxmitpriv->free_xmitframe_cnt));
+			 "rtw_alloc_xmitframe:%d\n",
+			 pxmitpriv->free_xmitframe_cnt);
 	} else {
 		list_del_init(&pxframe->list);
 
@@ -1269,8 +1269,8 @@ struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)
 		pxmitpriv->free_xmitframe_cnt--;
 
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-			 ("rtw_alloc_xmitframe():free_xmitframe_cnt=%d\n",
-			 pxmitpriv->free_xmitframe_cnt));
+			 "rtw_alloc_xmitframe():free_xmitframe_cnt=%d\n",
+			 pxmitpriv->free_xmitframe_cnt);
 
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
@@ -1297,7 +1297,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	struct sk_buff *pndis_pkt = NULL;
 
 	if (!pxmitframe) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__);
 		goto exit;
 	}
 
@@ -1313,7 +1313,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	list_add_tail(&pxmitframe->list, get_list_head(pfree_xmit_queue));
 
 	pxmitpriv->free_xmitframe_cnt++;
-	RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_, ("%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt));
+	RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_, "%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt);
 
 	spin_unlock_bh(&pfree_xmit_queue->lock);
 
@@ -1348,7 +1348,7 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
 {
 	if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-			 ("%s: drop xmit pkt for classifier fail\n", __func__));
+			 "%s: drop xmit pkt for classifier fail\n", __func__);
 		return _FAIL;
 	}
 
@@ -1438,21 +1438,21 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter,
 		ptxservq = &psta->sta_xmitpriv.bk_q;
 		*(ac) = 3;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-			 ("%s : BK\n", __func__));
+			 "%s : BK\n", __func__);
 		break;
 	case 4:
 	case 5:
 		ptxservq = &psta->sta_xmitpriv.vi_q;
 		*(ac) = 1;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-			 ("%s : VI\n", __func__));
+			 "%s : VI\n", __func__);
 		break;
 	case 6:
 	case 7:
 		ptxservq = &psta->sta_xmitpriv.vo_q;
 		*(ac) = 0;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-			 ("%s : VO\n", __func__));
+			 "%s : VO\n", __func__);
 		break;
 	case 0:
 	case 3:
@@ -1460,7 +1460,7 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter,
 		ptxservq = &psta->sta_xmitpriv.be_q;
 		*(ac) = 2;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-			 ("%s : BE\n", __func__));
+			 "%s : BE\n", __func__);
 	break;
 	}
 
@@ -1489,7 +1489,7 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	if (!psta) {
 		res = _FAIL;
 		DBG_88E("%s: psta == NULL\n", __func__);
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: psta == NULL\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "%s: psta == NULL\n", __func__);
 		goto exit;
 	}
 
@@ -1596,7 +1596,7 @@ s32 rtw_xmit(struct adapter *padapter, struct sk_buff **ppkt)
 
 	pxmitframe = rtw_alloc_xmitframe(pxmitpriv);
 	if (!pxmitframe) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, "%s: no more pxmitframe\n", __func__);
 		DBG_88E("DBG_TX_DROP_FRAME %s no more pxmitframe\n", __func__);
 		return -1;
 	}
@@ -1604,7 +1604,7 @@ s32 rtw_xmit(struct adapter *padapter, struct sk_buff **ppkt)
 	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
 
 	if (res == _FAIL) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, "%s: update attrib fail\n", __func__);
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
 		return -1;
 	}
diff --git a/drivers/staging/rtl8188eu/hal/hal_intf.c b/drivers/staging/rtl8188eu/hal/hal_intf.c
index b8fecc952cfc..6501a577230c 100644
--- a/drivers/staging/rtl8188eu/hal/hal_intf.c
+++ b/drivers/staging/rtl8188eu/hal/hal_intf.c
@@ -27,7 +27,7 @@ uint rtw_hal_init(struct adapter *adapt)
 	}
 
 	RT_TRACE(_module_hal_init_c_, _drv_err_,
-		 ("-rtl871x_hal_init:status=0x%x\n", status));
+		 "-rtl871x_hal_init:status=0x%x\n", status);
 
 	return status;
 }
diff --git a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
index 77edd7ad19a1..5b74add0468e 100644
--- a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
+++ b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
@@ -26,25 +26,25 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 		pwrcfgcmd = pwrseqcmd[aryidx];
 
 		RT_TRACE(_module_hal_init_c_, _drv_info_,
-			 ("rtl88eu_pwrseqcmdparsing: offset(%#x) cut_msk(%#x)"
+			 "rtl88eu_pwrseqcmdparsing: offset(%#x) cut_msk(%#x)"
 			  " cmd(%#x)"
 			  "msk(%#x) value(%#x)\n",
 			 GET_PWR_CFG_OFFSET(pwrcfgcmd),
 			 GET_PWR_CFG_CUT_MASK(pwrcfgcmd),
 			 GET_PWR_CFG_CMD(pwrcfgcmd),
 			 GET_PWR_CFG_MASK(pwrcfgcmd),
-			 GET_PWR_CFG_VALUE(pwrcfgcmd)));
+			 GET_PWR_CFG_VALUE(pwrcfgcmd));
 
 		/* Only Handle the command whose CUT is matched */
 		if (GET_PWR_CFG_CUT_MASK(pwrcfgcmd) & cut_vers) {
 			switch (GET_PWR_CFG_CMD(pwrcfgcmd)) {
 			case PWR_CMD_READ:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_READ\n"));
+					 "rtl88eu_pwrseqcmdparsing: PWR_CMD_READ\n");
 				break;
 			case PWR_CMD_WRITE:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_WRITE\n"));
+					 "rtl88eu_pwrseqcmdparsing: PWR_CMD_WRITE\n");
 				offset = GET_PWR_CFG_OFFSET(pwrcfgcmd);
 
 				/*  Read the value from system register */
@@ -59,7 +59,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				break;
 			case PWR_CMD_POLLING:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_POLLING\n"));
+					 "rtl88eu_pwrseqcmdparsing: PWR_CMD_POLLING\n");
 
 				poll_bit = false;
 				offset = GET_PWR_CFG_OFFSET(pwrcfgcmd);
@@ -81,7 +81,7 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 				break;
 			case PWR_CMD_DELAY:
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_DELAY\n"));
+					 "rtl88eu_pwrseqcmdparsing: PWR_CMD_DELAY\n");
 				if (GET_PWR_CFG_VALUE(pwrcfgcmd) == PWRSEQ_DELAY_US)
 					udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd));
 				else
@@ -90,11 +90,11 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
 			case PWR_CMD_END:
 				/* When this command is parsed, end the process */
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
-					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_END\n"));
+					 "rtl88eu_pwrseqcmdparsing: PWR_CMD_END\n");
 				return true;
 			default:
 				RT_TRACE(_module_hal_init_c_, _drv_err_,
-					 ("rtl88eu_pwrseqcmdparsing: Unknown CMD!!\n"));
+					 "rtl88eu_pwrseqcmdparsing: Unknown CMD!!\n");
 				break;
 			}
 		}
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 740004d71a15..dc3f4550e229 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -191,7 +191,7 @@ static s32 _LLTWrite(struct adapter *padapter, u32 address, u32 data)
 			break;
 
 		if (count > POLLING_LLT_THRESHOLD) {
-			RT_TRACE(_module_hal_init_c_, _drv_err_, ("Failed to polling write LLT done at address %d!\n", address));
+			RT_TRACE(_module_hal_init_c_, _drv_err_, "Failed to polling write LLT done at address %d!\n", address);
 			status = _FAIL;
 			break;
 		}
@@ -249,7 +249,7 @@ void Hal_InitPGData88E(struct adapter *padapter)
 			EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI);
 		}
 	} else {/* autoload fail */
-		RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, "AutoLoad Fail reported from CR9346!!\n");
 		/* update to default value 0xFF */
 		if (!is_boot_from_eeprom(padapter))
 			EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI);
@@ -497,8 +497,8 @@ void Hal_EfuseParseEEPROMVer88E(struct adapter *padapter, u8 *hwinfo, bool AutoL
 		pHalData->EEPROMVersion = 1;
 	}
 	RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
-		 ("Hal_EfuseParseEEPROMVer(), EEVer = %d\n",
-		 pHalData->EEPROMVersion));
+		 "Hal_EfuseParseEEPROMVer(), EEVer = %d\n",
+		 pHalData->EEPROMVersion);
 }
 
 void rtl8188e_EfuseParseChnlPlan(struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail)
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
index 1cf8cff9a2a4..3b201ef3d814 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
@@ -33,7 +33,7 @@ int	rtw_hal_init_recv_priv(struct adapter *padapter)
 	if (!precvpriv->precv_buf) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-				("alloc recv_buf fail!\n"));
+				"alloc recv_buf fail!\n");
 		goto exit;
 	}
 	precvbuf = precvpriv->precv_buf;
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index 7d315bd438d4..b52acbe3dcba 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -347,14 +347,14 @@ static s32 rtw_dump_xframe(struct adapter *adapt, struct xmit_frame *pxmitframe)
 		rtw_issue_addbareq_cmd(adapt, pxmitframe);
 	mem_addr = pxmitframe->buf_addr;
 
-	RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_dump_xframe()\n"));
+	RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, "rtw_dump_xframe()\n");
 
 	for (t = 0; t < pattrib->nr_frags; t++) {
 		if (inner_ret != _SUCCESS && ret == _SUCCESS)
 			ret = _FAIL;
 
 		if (t != (pattrib->nr_frags - 1)) {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("pattrib->nr_frags=%d\n", pattrib->nr_frags));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, "pattrib->nr_frags=%d\n", pattrib->nr_frags);
 
 			sz = pxmitpriv->frag_len;
 			sz = sz - 4 - pattrib->icv_len;
@@ -378,7 +378,7 @@ static s32 rtw_dump_xframe(struct adapter *adapt, struct xmit_frame *pxmitframe)
 
 		rtw_count_tx_stats(adapt, pxmitframe, sz);
 
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_write_port, w_sz=%d\n", w_sz));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, "rtw_write_port, w_sz=%d\n", w_sz);
 
 		mem_addr += w_sz;
 
@@ -436,7 +436,7 @@ bool rtl8188eu_xmitframe_complete(struct adapter *adapt,
 	/*  dump frame variable */
 	u32 ff_hwaddr;
 
-	RT_TRACE(_module_rtl8192c_xmit_c_, _drv_info_, ("+xmitframe_complete\n"));
+	RT_TRACE(_module_rtl8192c_xmit_c_, _drv_info_, "+xmitframe_complete\n");
 
 	pxmitbuf = rtw_alloc_xmitbuf(pxmitpriv);
 	if (!pxmitbuf)
@@ -640,7 +640,7 @@ bool rtw_hal_xmit(struct adapter *adapt, struct xmit_frame *pxmitframe)
 	spin_unlock_bh(&pxmitpriv->lock);
 
 	if (res != _SUCCESS) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("pre_xmitframe: enqueue xmitframe fail\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, "pre_xmitframe: enqueue xmitframe fail\n");
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
 
 		/*  Trick, make the statistics correct */
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 16a57b31a439..a535aa54e4a5 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -673,7 +673,7 @@ u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_PW_ON);
 	status = rtw_hal_power_on(Adapter);
 	if (status == _FAIL) {
-		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("Failed to init power on!\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, "Failed to init power on!\n");
 		goto exit;
 	}
 
@@ -714,7 +714,7 @@ u32 rtl8188eu_hal_init(struct adapter *Adapter)
 			Adapter->bFWReady = false;
 			return status;
 		}
-		RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("Initializeadapt8192CSdio(): Download Firmware Success!!\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_info_, "Initializeadapt8192CSdio(): Download Firmware Success!!\n");
 		Adapter->bFWReady = true;
 	}
 	rtl8188e_InitializeFirmwareVars(Adapter);
@@ -737,7 +737,7 @@ u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_LLTT);
 	status =  InitLLTTable(Adapter, txpktbuf_bndy);
 	if (status == _FAIL) {
-		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("Failed to init LLT table\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, "Failed to init LLT table\n");
 		goto exit;
 	}
 
@@ -876,7 +876,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 {
 	u8 val8;
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("CardDisableRTL8188EU\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, "CardDisableRTL8188EU\n");
 
 	/* Stop Tx Report Timer. 0x4EC[Bit1]=b'0 */
 	val8 = usb_read8(Adapter, REG_TX_RPT_CTRL);
@@ -973,13 +973,13 @@ u32 rtw_hal_inirp_init(struct adapter *Adapter)
 	status = _SUCCESS;
 
 	RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
-		 ("===> usb_inirp_init\n"));
+		 "===> usb_inirp_init\n");
 
 	/* issue Rx irp to receive data */
 	precvbuf = precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
 		if (!usb_read_port(Adapter, RECV_BULK_IN_ADDR, precvbuf)) {
-			RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("usb_rx_init: usb_read_port error\n"));
+			RT_TRACE(_module_hci_hal_init_c_, _drv_err_, "usb_rx_init: usb_read_port error\n");
 			status = _FAIL;
 			goto exit;
 		}
@@ -989,7 +989,7 @@ u32 rtw_hal_inirp_init(struct adapter *Adapter)
 
 exit:
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<=== usb_inirp_init\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, "<=== usb_inirp_init\n");
 
 	return status;
 }
@@ -1038,8 +1038,8 @@ static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt, u8 *hwinfo, bool
 		memcpy(eeprom->mac_addr, &hwinfo[EEPROM_MAC_ADDR_88EU], ETH_ALEN);
 	}
 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_,
-		 ("Hal_EfuseParseMACAddr_8188EU: Permanent Address = %pM\n",
-		 eeprom->mac_addr));
+		 "Hal_EfuseParseMACAddr_8188EU: Permanent Address = %pM\n",
+		 eeprom->mac_addr);
 }
 
 static void readAdapterInfo_8188EU(struct adapter *adapt)
diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
index 9840e596feaa..fb562851bcc9 100644
--- a/drivers/staging/rtl8188eu/include/rtw_debug.h
+++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
@@ -77,14 +77,14 @@ extern u32 GlobalDebugLevel;
 			pr_info(DRIVER_PREFIX __VA_ARGS__);			\
 	} while (0)
 
-#define RT_TRACE(_comp, _level, fmt)					\
-	do {								\
-		if (_level <= GlobalDebugLevel) {			\
-			pr_info("%s [0x%08x,%d]", DRIVER_PREFIX,	\
-				 (unsigned int)_comp, _level);		\
-			pr_info fmt;					\
-		}							\
-	} while (0)
+#define RT_TRACE(_comp, _level, fmt, ...)				\
+do {									\
+	if (_level <= GlobalDebugLevel) {				\
+		pr_info("%s [0x%08x,%d]" fmt,				\
+			DRIVER_PREFIX, (unsigned int)_comp, _level,	\
+			##__VA_ARGS__);					\
+	}								\
+} while (0)
 
 #define RT_PRINT_DATA(_comp, _level, _titlestring, _hexdata, _hexdatalen)\
 	do {								\
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index d5968ef9f43d..7bf2e6e6d0f6 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -232,8 +232,8 @@ static char *translate_scan(struct adapter *padapter,
 			return start;
 
 		rtw_get_sec_ie(pnetwork->network.ies, pnetwork->network.ie_length, rsn_ie, &rsn_len, wpa_ie, &wpa_len);
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: ssid =%s\n", pnetwork->network.ssid.ssid));
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_get_scan: ssid =%s\n", pnetwork->network.ssid.ssid);
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_get_scan: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len);
 
 		if (wpa_len > 0) {
 			p = buf;
@@ -367,7 +367,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	}
 
 	if (strcmp(param->u.crypt.alg, "WEP") == 0) {
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("wpa_set_encryption, crypt.alg = WEP\n"));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, "wpa_set_encryption, crypt.alg = WEP\n");
 		DBG_88E("wpa_set_encryption, crypt.alg = WEP\n");
 
 		padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
@@ -377,20 +377,20 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		wep_key_idx = param->u.crypt.idx;
 		wep_key_len = param->u.crypt.key_len;
 
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("(1)wep_key_idx =%d\n", wep_key_idx));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, "(1)wep_key_idx =%d\n", wep_key_idx);
 		DBG_88E("(1)wep_key_idx =%d\n", wep_key_idx);
 
 		if (wep_key_idx > WEP_KEYS)
 			return -EINVAL;
 
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("(2)wep_key_idx =%d\n", wep_key_idx));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, "(2)wep_key_idx =%d\n", wep_key_idx);
 
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + offsetof(struct ndis_802_11_wep, KeyMaterial);
 			pwep = (struct ndis_802_11_wep *)rtw_malloc(wep_total_len);
 			if (!pwep) {
-				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
+				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, " wpa_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
 			memset(pwep, 0, wep_total_len);
@@ -516,7 +516,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 		}
 
 		if (ielen < RSN_HEADER_LEN) {
-			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("Ie len too short %d\n", ielen));
+			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, "Ie len too short %d\n", ielen);
 			ret  = -1;
 			goto exit;
 		}
@@ -603,8 +603,8 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 	}
 
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-		 ("rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\n",
-		 pairwise_cipher, padapter->securitypriv.ndisencryptstatus, padapter->securitypriv.ndisauthtype));
+		 "rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\n",
+		 pairwise_cipher, padapter->securitypriv.ndisencryptstatus, padapter->securitypriv.ndisauthtype);
 exit:
 	kfree(buf);
 	return ret;
@@ -624,7 +624,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 	NDIS_802_11_RATES_EX *prates = NULL;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("cmd_code =%x\n", info->cmd));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "cmd_code =%x\n", info->cmd);
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
 		/* parsing HT_CAP_IE */
@@ -660,7 +660,7 @@ static int rtw_wx_set_freq(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+rtw_wx_set_freq\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, "+rtw_wx_set_freq\n");
 	return 0;
 }
 
@@ -722,7 +722,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 		break;
 	default:
 		ret = -EINVAL;
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("\n Mode: %s is not supported\n", iw_operation_mode[wrqu->mode]));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, "\n Mode: %s is not supported\n", iw_operation_mode[wrqu->mode]);
 		goto exit;
 	}
 	if (!rtw_set_802_11_infrastructure_mode(padapter, networkType)) {
@@ -740,7 +740,7 @@ static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_get_mode\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, " rtw_wx_get_mode\n");
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 		wrqu->mode = IW_MODE_INFRA;
@@ -842,7 +842,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 	u16 val;
 	int i;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_range. cmd_code =%x\n", info->cmd));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_get_range. cmd_code =%x\n", info->cmd);
 
 	wrqu->data.length = sizeof(*range);
 	memset(range, 0, sizeof(*range));
@@ -1009,7 +1009,7 @@ static int rtw_wx_get_wap(struct net_device *dev,
 
 	eth_zero_addr(wrqu->ap_addr.sa_data);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_wap\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_get_wap\n");
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED) ||
 	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
@@ -1062,7 +1062,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ndis_802_11_ssid ssid[RTW_SSID_SCAN_AMOUNT];
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_set_scan\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_set_scan\n");
 
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
 		ret = -1;
@@ -1198,8 +1198,8 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 	u32 wait_for_surveydone;
 	int wait_status;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan\n"));
-	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, (" Start of Query SIOCGIWSCAN .\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_get_scan\n");
+	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, " Start of Query SIOCGIWSCAN .\n");
 
 	if (padapter->pwrctrlpriv.brfoffbyhw && padapter->bDriverStopped) {
 		ret = -EINVAL;
@@ -1267,7 +1267,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 	uint ret = 0, len;
 
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-		 ("+rtw_wx_set_essid: fw_state = 0x%08x\n", get_fwstate(pmlmepriv)));
+		 "+rtw_wx_set_essid: fw_state = 0x%08x\n", get_fwstate(pmlmepriv));
 	if (_FAIL == rtw_pwr_wakeup(padapter)) {
 		ret = -1;
 		goto exit;
@@ -1301,7 +1301,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 		memcpy(ndis_ssid.ssid, extra, len);
 		src_ssid = ndis_ssid.ssid;
 
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("rtw_wx_set_essid: ssid =[%s]\n", src_ssid));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, "rtw_wx_set_essid: ssid =[%s]\n", src_ssid);
 		spin_lock_bh(&queue->lock);
 		phead = get_list_head(queue);
 		pmlmepriv->pscanned = phead->next;
@@ -1314,13 +1314,13 @@ static int rtw_wx_set_essid(struct net_device *dev,
 			dst_ssid = pnetwork->network.ssid.ssid;
 
 			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-				 ("rtw_wx_set_essid: dst_ssid =%s\n",
-				  pnetwork->network.ssid.ssid));
+				 "rtw_wx_set_essid: dst_ssid =%s\n",
+				  pnetwork->network.ssid.ssid);
 
 			if ((!memcmp(dst_ssid, src_ssid, ndis_ssid.ssid_length)) &&
 			    (pnetwork->network.ssid.ssid_length == ndis_ssid.ssid_length)) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-					 ("rtw_wx_set_essid: find match, set infra mode\n"));
+					 "rtw_wx_set_essid: find match, set infra mode\n");
 
 				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
 					if (pnetwork->network.InfrastructureMode != pmlmepriv->cur_network.network.InfrastructureMode)
@@ -1338,7 +1338,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 		}
 		spin_unlock_bh(&queue->lock);
 		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-			 ("set ssid: set_802_11_auth. mode =%d\n", authmode));
+			 "set ssid: set_802_11_auth. mode =%d\n", authmode);
 		rtw_set_802_11_authentication_mode(padapter, authmode);
 		if (!rtw_set_802_11_ssid(padapter, &ndis_ssid)) {
 			ret = -1;
@@ -1361,7 +1361,7 @@ static int rtw_wx_get_essid(struct net_device *dev,
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_essid\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "rtw_wx_get_essid\n");
 
 	if ((check_fwstate(pmlmepriv, _FW_LINKED)) ||
 	    (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))) {
@@ -1388,8 +1388,8 @@ static int rtw_wx_set_rate(struct net_device *dev,
 	u32	ratevalue = 0;
 	u8 mpdatarate[NumRates] = {11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0xff};
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_set_rate\n"));
-	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("target_rate = %d, fixed = %d\n", target_rate, fixed));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, " rtw_wx_set_rate\n");
+	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, "target_rate = %d, fixed = %d\n", target_rate, fixed);
 
 	if (target_rate == -1) {
 		ratevalue = 11;
@@ -1450,7 +1450,7 @@ static int rtw_wx_set_rate(struct net_device *dev,
 			datarates[i] = 0xff;
 		}
 
-		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, ("datarate_inx =%d\n", datarates[i]));
+		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, "datarate_inx =%d\n", datarates[i]);
 	}
 
 	return 0;
@@ -1946,7 +1946,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 			break;
 		}
 		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
-			 ("wpa_set_param:padapter->securitypriv.ndisauthtype =%d\n", padapter->securitypriv.ndisauthtype));
+			 "wpa_set_param:padapter->securitypriv.ndisauthtype =%d\n", padapter->securitypriv.ndisauthtype);
 		break;
 	case IEEE_PARAM_TKIP_COUNTERMEASURES:
 		break;
diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 321b2c46479c..20d0863e03c8 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -88,11 +88,11 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	union iwreq_data wrqu;
 
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
-		 ("+%s, authmode=%d\n", __func__, authmode));
+		 "+%s, authmode=%d\n", __func__, authmode);
 	buff = NULL;
 	if (authmode == _WPA_IE_ID_) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
-			 ("%s, authmode=%d\n", __func__, authmode));
+			 "%s, authmode=%d\n", __func__, authmode);
 		buff = rtw_malloc(IW_CUSTOM_MAX);
 		if (!buff)
 			return;
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 8907bf6bb7ff..6e4d4556733d 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -295,7 +295,7 @@ static const struct net_device_ops rtw_netdev_ops = {
 int rtw_init_netdev_name(struct net_device *pnetdev, const char *ifname)
 {
 	if (dev_alloc_name(pnetdev, ifname) < 0)
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("dev_alloc_name, fail!\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, "dev_alloc_name, fail!\n");
 
 	netif_carrier_off(pnetdev);
 	return 0;
@@ -310,7 +310,7 @@ struct net_device *rtw_init_netdev(struct adapter *old_padapter)
 	struct adapter *padapter;
 	struct net_device *pnetdev = NULL;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+init_net_dev\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+init_net_dev\n");
 
 	if (old_padapter)
 		pnetdev = rtw_alloc_etherdev_with_old_priv((void *)old_padapter);
@@ -335,7 +335,7 @@ static int rtw_start_drv_threads(struct adapter *padapter)
 {
 	int err = 0;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_start_drv_threads\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+rtw_start_drv_threads\n");
 
 	padapter->cmdThread = kthread_run(rtw_cmd_thread, padapter,
 					  "RTW_CMD_THREAD");
@@ -350,7 +350,7 @@ static int rtw_start_drv_threads(struct adapter *padapter)
 
 void rtw_stop_drv_threads(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+rtw_stop_drv_threads\n");
 
 	/* Below is to terminate rtw_cmd_thread & event_thread... */
 	complete(&padapter->cmdpriv.cmd_queue_comp);
@@ -433,10 +433,10 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 {
 	u8 ret8 = _SUCCESS;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+rtw_init_drv_sw\n");
 
 	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, "\n Can't init cmd_priv\n");
 		ret8 = _FAIL;
 		goto exit;
 	}
@@ -444,13 +444,13 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 	padapter->cmdpriv.padapter = padapter;
 
 	if (rtw_init_mlme_priv(padapter) == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_priv\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, "\n Can't init mlme_priv\n");
 		ret8 = _FAIL;
 		goto exit;
 	}
 
 	if (init_mlme_ext_priv(padapter) == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, "\n Can't init mlme_ext_priv\n");
 		ret8 = _FAIL;
 		goto exit;
 	}
@@ -487,27 +487,27 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 	rtw_hal_sreset_init(padapter);
 
 exit:
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_init_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "-rtw_init_drv_sw\n");
 
 	return ret8;
 }
 
 void rtw_cancel_all_timer(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_cancel_all_timer\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+rtw_cancel_all_timer\n");
 
 	del_timer_sync(&padapter->mlmepriv.assoc_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel association timer complete!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "rtw_cancel_all_timer:cancel association timer complete!\n");
 
 	del_timer_sync(&padapter->mlmepriv.scan_to_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel scan_to_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "rtw_cancel_all_timer:cancel scan_to_timer!\n");
 
 	del_timer_sync(&padapter->mlmepriv.dynamic_chk_timer);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel dynamic_chk_timer!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "rtw_cancel_all_timer:cancel dynamic_chk_timer!\n");
 
 	/*  cancel sw led timer */
 	rtw_hal_sw_led_deinit(padapter);
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel DeInitSwLeds!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "rtw_cancel_all_timer:cancel DeInitSwLeds!\n");
 
 	del_timer_sync(&padapter->pwrctrlpriv.pwr_state_check_timer);
 
@@ -516,7 +516,7 @@ void rtw_cancel_all_timer(struct adapter *padapter)
 
 u8 rtw_free_drv_sw(struct adapter *padapter)
 {
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "==>rtw_free_drv_sw");
 
 	free_mlme_ext_priv(&padapter->mlmeextpriv);
 
@@ -530,11 +530,11 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
 
 	rtw_hal_free_data(padapter);
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<== rtw_free_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "<== rtw_free_drv_sw\n");
 
 	mutex_destroy(&padapter->hw_init_mutex);
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "-rtw_free_drv_sw\n");
 
 	return _SUCCESS;
 }
@@ -546,7 +546,7 @@ static int _netdev_open(struct net_device *pnetdev)
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 	struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - dev_open\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+88eu_drv - dev_open\n");
 	DBG_88E("+88eu_drv - drv_open, bup =%d\n", padapter->bup);
 
 	if (pwrctrlpriv->ps_flag) {
@@ -560,7 +560,7 @@ static int _netdev_open(struct net_device *pnetdev)
 
 		status = rtw_hal_init(padapter);
 		if (status == _FAIL) {
-			RT_TRACE(_module_os_intfs_c_, _drv_err_, ("rtl88eu_hal_init(): Can't init h/w!\n"));
+			RT_TRACE(_module_os_intfs_c_, _drv_err_, "rtl88eu_hal_init(): Can't init h/w!\n");
 			goto netdev_open_error;
 		}
 
@@ -596,7 +596,7 @@ static int _netdev_open(struct net_device *pnetdev)
 		netif_tx_wake_all_queues(pnetdev);
 
 netdev_open_normal_process:
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-88eu_drv - dev_open\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "-88eu_drv - dev_open\n");
 	DBG_88E("-88eu_drv - drv_open, bup =%d\n", padapter->bup);
 	return 0;
 
@@ -604,7 +604,7 @@ static int _netdev_open(struct net_device *pnetdev)
 	padapter->bup = false;
 	netif_carrier_off(pnetdev);
 	netif_tx_stop_all_queues(pnetdev);
-	RT_TRACE(_module_os_intfs_c_, _drv_err_, ("-88eu_drv - dev_open, fail!\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_err_, "-88eu_drv - dev_open, fail!\n");
 	DBG_88E("-88eu_drv - drv_open fail, bup =%d\n", padapter->bup);
 	return -1;
 }
@@ -633,7 +633,7 @@ int  ips_netdrv_open(struct adapter *padapter)
 
 	status = rtw_hal_init(padapter);
 	if (status == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("ips_netdrv_open(): Can't init h/w!\n"));
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, "ips_netdrv_open(): Can't init h/w!\n");
 		goto netdev_open_error;
 	}
 
@@ -700,7 +700,7 @@ static int netdev_close(struct net_device *pnetdev)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - drv_close\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "+88eu_drv - drv_close\n");
 
 	if (padapter->pwrctrlpriv.bInternalAutoSuspend) {
 		if (padapter->pwrctrlpriv.rf_pwrstate == rf_off)
@@ -731,7 +731,7 @@ static int netdev_close(struct net_device *pnetdev)
 		led_control_8188eu(padapter, LED_CTL_POWER_OFF);
 	}
 
-	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-88eu_drv - drv_close\n"));
+	RT_TRACE(_module_os_intfs_c_, _drv_info_, "-88eu_drv - drv_close\n");
 	DBG_88E("-88eu_drv - drv_close, bup =%d\n", padapter->bup);
 	return 0;
 }
diff --git a/drivers/staging/rtl8188eu/os_dep/recv_linux.c b/drivers/staging/rtl8188eu/os_dep/recv_linux.c
index 9c9339863a4a..660dd0c433ed 100644
--- a/drivers/staging/rtl8188eu/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/recv_linux.c
@@ -75,7 +75,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter,
 	skb = precv_frame->pkt;
 	if (!skb) {
 		RT_TRACE(_module_recv_osdep_c_, _drv_err_,
-			 ("%s():skb == NULL something wrong!!!!\n", __func__));
+			 "%s():skb == NULL something wrong!!!!\n", __func__);
 		goto _recv_indicatepkt_drop;
 	}
 
@@ -126,7 +126,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter,
 	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
 	RT_TRACE(_module_recv_osdep_c_, _drv_info_,
-		 ("\n %s :after netif_rx!!!!\n", __func__));
+		 "\n %s :after netif_rx!!!!\n", __func__);
 
 	return _SUCCESS;
 
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index f7f09c0d273f..854fd5dc9ddf 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -141,14 +141,14 @@ static void usb_dvobj_deinit(struct usb_interface *usb_intf)
 
 void usb_intf_stop(struct adapter *padapter)
 {
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+usb_intf_stop\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, "+usb_intf_stop\n");
 
 	/* disable_hw_interrupt */
 	if (!padapter->bSurpriseRemoved) {
 		/* device still exists, so driver can do i/o operation */
 		/* TODO: */
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_,
-			 ("SurpriseRemoved == false\n"));
+			 "SurpriseRemoved == false\n");
 	}
 
 	/* cancel in irp */
@@ -159,12 +159,12 @@ void usb_intf_stop(struct adapter *padapter)
 
 	/* todo:cancel other irps */
 
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-usb_intf_stop\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, "-usb_intf_stop\n");
 }
 
 static void rtw_dev_unload(struct adapter *padapter)
 {
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+rtw_dev_unload\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, "+rtw_dev_unload\n");
 
 	if (padapter->bup) {
 		pr_debug("===> rtw_dev_unload\n");
@@ -186,12 +186,12 @@ static void rtw_dev_unload(struct adapter *padapter)
 		padapter->bup = false;
 	} else {
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_,
-			 ("r871x_dev_unload():padapter->bup == false\n"));
+			 "r871x_dev_unload():padapter->bup == false\n");
 	}
 
 	pr_debug("<=== rtw_dev_unload\n");
 
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-rtw_dev_unload\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, "-rtw_dev_unload\n");
 }
 
 static int rtw_suspend(struct usb_interface *pusb_intf, pm_message_t message)
@@ -368,7 +368,7 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 	/* step 5. */
 	if (rtw_init_drv_sw(padapter) == _FAIL) {
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_,
-			 ("Initialize driver software resource Failed!\n"));
+			 "Initialize driver software resource Failed!\n");
 		goto free_hal_data;
 	}
 
@@ -397,7 +397,7 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 
 	/* step 6. Tell the network stack we exist */
 	if (register_netdev(pnetdev) != 0) {
-		RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("register_netdev() failed\n"));
+		RT_TRACE(_module_hci_intfs_c_, _drv_err_, "register_netdev() failed\n");
 		goto free_hal_data;
 	}
 
@@ -459,7 +459,7 @@ static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device
 	dvobj = usb_dvobj_init(pusb_intf);
 	if (!dvobj) {
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_,
-			 ("initialize device object priv Failed!\n"));
+			 "initialize device object priv Failed!\n");
 		goto exit;
 	}
 
@@ -487,7 +487,7 @@ static void rtw_dev_remove(struct usb_interface *pusb_intf)
 	struct adapter *padapter = dvobj->if1;
 
 	pr_debug("+rtw_dev_remove\n");
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+dev_remove()\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, "+dev_remove()\n");
 
 	if (!pusb_intf->unregistering)
 		padapter->bSurpriseRemoved = true;
@@ -501,7 +501,7 @@ static void rtw_dev_remove(struct usb_interface *pusb_intf)
 
 	usb_dvobj_deinit(pusb_intf);
 
-	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-dev_remove()\n"));
+	RT_TRACE(_module_hci_intfs_c_, _drv_err_, "-dev_remove()\n");
 	pr_debug("-r871xu_dev_remove, done\n");
 }
 
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 3cd6da1f843d..65f70b2b9017 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -53,16 +53,16 @@ static int recvbuf2recvframe(struct adapter *adapt, struct sk_buff *pskb)
 
 	do {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-			 ("%s: rxdesc=offsset 0:0x%08x, 4:0x%08x, 8:0x%08x, C:0x%08x\n",
+			 "%s: rxdesc=offsset 0:0x%08x, 4:0x%08x, 8:0x%08x, C:0x%08x\n",
 			  __func__, prxstat->rxdw0, prxstat->rxdw1,
-			  prxstat->rxdw2, prxstat->rxdw4));
+			  prxstat->rxdw2, prxstat->rxdw4);
 
 		prxstat = (struct recv_stat *)pbuf;
 
 		precvframe = rtw_alloc_recvframe(pfree_recv_queue);
 		if (!precvframe) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-				 ("%s: precvframe==NULL\n", __func__));
+				 "%s: precvframe==NULL\n", __func__);
 			DBG_88E("%s()-%d: rtw_alloc_recvframe() failed! RX Drop!\n", __func__, __LINE__);
 			goto _exit_recvbuf2recvframe;
 		}
@@ -87,7 +87,7 @@ static int recvbuf2recvframe(struct adapter *adapt, struct sk_buff *pskb)
 
 		if ((pattrib->pkt_len <= 0) || (pkt_offset > transfer_len)) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 ("%s: pkt_len<=0\n", __func__));
+				 "%s: pkt_len<=0\n", __func__);
 			DBG_88E("%s()-%d: RX Warning!,pkt_len<=0 or pkt_offset> transfer_len\n", __func__, __LINE__);
 			rtw_free_recvframe(precvframe, pfree_recv_queue);
 			goto _exit_recvbuf2recvframe;
@@ -147,8 +147,8 @@ static int recvbuf2recvframe(struct adapter *adapt, struct sk_buff *pskb)
 				update_recvframe_phyinfo_88e(precvframe, pphy_status);
 			if (rtw_recv_entry(precvframe) != _SUCCESS) {
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-					 ("%s: rtw_recv_entry(precvframe) != _SUCCESS\n",
-					 __func__));
+					 "%s: rtw_recv_entry(precvframe) != _SUCCESS\n",
+					 __func__);
 			}
 		} else if (pattrib->pkt_rpt_type == TX_REPORT1) {
 			/* CCX-TXRPT ack for xmit mgmt frames. */
@@ -210,8 +210,8 @@ static int usbctrl_vendorreq(struct adapter *adapt, u8 request, u16 value, u16 i
 
 	if ((adapt->bSurpriseRemoved) || (adapt->pwrctrlpriv.pnp_bstop_trx)) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s:(adapt->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n",
-			  __func__));
+			 "%s:(adapt->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n",
+			  __func__);
 		status = -EPERM;
 		goto exit;
 	}
@@ -351,13 +351,13 @@ static void usb_read_port_complete(struct urb *purb, struct pt_regs *regs)
 	struct adapter *adapt = (struct adapter *)precvbuf->adapter;
 	struct recv_priv *precvpriv = &adapt->recvpriv;
 
-	RT_TRACE(_module_hci_ops_os_c_, _drv_err_, ("%s!!!\n", __func__));
+	RT_TRACE(_module_hci_ops_os_c_, _drv_err_, "%s!!!\n", __func__);
 
 	if (adapt->bSurpriseRemoved || adapt->bDriverStopped || adapt->bReadPortCancel) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s:bDriverStopped(%d) OR bSurpriseRemoved(%d)\n",
+			 "%s:bDriverStopped(%d) OR bSurpriseRemoved(%d)\n",
 			 __func__, adapt->bDriverStopped,
-			 adapt->bSurpriseRemoved));
+			 adapt->bSurpriseRemoved);
 
 		precvbuf->reuse = true;
 		DBG_88E("%s() RX Warning! bDriverStopped(%d) OR bSurpriseRemoved(%d) bReadPortCancel(%d)\n",
@@ -369,8 +369,8 @@ static void usb_read_port_complete(struct urb *purb, struct pt_regs *regs)
 	if (purb->status == 0) { /* SUCCESS */
 		if ((purb->actual_length > MAX_RECVBUF_SZ) || (purb->actual_length < RXDESC_SIZE)) {
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-				 ("%s: (purb->actual_length > MAX_RECVBUF_SZ) || (purb->actual_length < RXDESC_SIZE)\n",
-				 __func__));
+				 "%s: (purb->actual_length > MAX_RECVBUF_SZ) || (purb->actual_length < RXDESC_SIZE)\n",
+				 __func__);
 			precvbuf->reuse = true;
 			usb_read_port(adapt, RECV_BULK_IN_ADDR, precvbuf);
 			DBG_88E("%s()-%d: RX Warning!\n", __func__, __LINE__);
@@ -387,8 +387,8 @@ static void usb_read_port_complete(struct urb *purb, struct pt_regs *regs)
 		}
 	} else {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s : purb->status(%d) != 0\n",
-			  __func__, purb->status));
+			 "%s : purb->status(%d) != 0\n",
+			  __func__, purb->status);
 
 		DBG_88E("###=> %s => urb status(%d)\n", __func__, purb->status);
 		skb_put(precvbuf->pskb, purb->actual_length);
@@ -404,7 +404,7 @@ static void usb_read_port_complete(struct urb *purb, struct pt_regs *regs)
 		case -ENOENT:
 			adapt->bDriverStopped = true;
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-				 ("%s:bDriverStopped=true\n", __func__));
+				 "%s:bDriverStopped=true\n", __func__);
 			break;
 		case -EPROTO:
 		case -EOVERFLOW:
@@ -434,14 +434,14 @@ u32 usb_read_port(struct adapter *adapter, u32 addr, struct recv_buf *precvbuf)
 	if (adapter->bDriverStopped || adapter->bSurpriseRemoved ||
 	    adapter->pwrctrlpriv.pnp_bstop_trx) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s:(adapt->bDriverStopped ||adapt->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n",
-			  __func__));
+			 "%s:(adapt->bDriverStopped ||adapt->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n",
+			  __func__);
 		return _FAIL;
 	}
 
 	if (!precvbuf) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s:precvbuf==NULL\n", __func__));
+			 "%s:precvbuf==NULL\n", __func__);
 		return _FAIL;
 	}
 
@@ -455,7 +455,7 @@ u32 usb_read_port(struct adapter *adapter, u32 addr, struct recv_buf *precvbuf)
 	if (!precvbuf->reuse || !precvbuf->pskb) {
 		precvbuf->pskb = netdev_alloc_skb(adapter->pnetdev, MAX_RECVBUF_SZ);
 		if (!precvbuf->pskb) {
-			RT_TRACE(_module_hci_ops_os_c_, _drv_err_, ("init_recvbuf(): alloc_skb fail!\n"));
+			RT_TRACE(_module_hci_ops_os_c_, _drv_err_, "init_recvbuf(): alloc_skb fail!\n");
 			DBG_88E("#### %s() alloc_skb fail!#####\n", __func__);
 			return _FAIL;
 		}
@@ -477,8 +477,8 @@ u32 usb_read_port(struct adapter *adapter, u32 addr, struct recv_buf *precvbuf)
 	err = usb_submit_urb(purb, GFP_ATOMIC);
 	if ((err) && (err != (-EPERM))) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("cannot submit rx in-token(err=0x%.8x), URB_STATUS =0x%.8x",
-			 err, purb->status));
+			 "cannot submit rx in-token(err=0x%.8x), URB_STATUS =0x%.8x",
+			 err, purb->status);
 		DBG_88E("cannot submit rx in-token(err = 0x%08x),urb_status = %d\n",
 			err, purb->status);
 		ret = _FAIL;
@@ -599,9 +599,9 @@ static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
 	if (padapter->bSurpriseRemoved || padapter->bDriverStopped ||
 	    padapter->bWritePortCancel) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s:bDriverStopped(%d) OR bSurpriseRemoved(%d)",
+			 "%s:bDriverStopped(%d) OR bSurpriseRemoved(%d)",
 			  __func__, padapter->bDriverStopped,
-			  padapter->bSurpriseRemoved));
+			  padapter->bSurpriseRemoved);
 		DBG_88E("%s(): TX Warning! bDriverStopped(%d) OR bSurpriseRemoved(%d) bWritePortCancel(%d) pxmitbuf->ext_tag(%x)\n",
 			__func__, padapter->bDriverStopped,
 			padapter->bSurpriseRemoved, padapter->bReadPortCancel,
@@ -612,14 +612,14 @@ static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
 
 	if (purb->status) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s : purb->status(%d) != 0\n",
-			  __func__, purb->status));
+			 "%s : purb->status(%d) != 0\n",
+			  __func__, purb->status);
 		DBG_88E("###=> %s status(%d)\n", __func__, purb->status);
 		if ((purb->status == -EPIPE) || (purb->status == -EPROTO)) {
 			sreset_set_wifi_error_status(padapter, USB_WRITE_PORT_FAIL);
 		} else if (purb->status == -EINPROGRESS) {
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-				 ("%s: EINPROGRESS\n", __func__));
+				 "%s: EINPROGRESS\n", __func__);
 			goto check_completion;
 		} else if (purb->status == -ENOENT) {
 			DBG_88E("%s: -ENOENT\n", __func__);
@@ -629,16 +629,16 @@ static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
 			goto check_completion;
 		} else if (purb->status == -ESHUTDOWN) {
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-				 ("%s: ESHUTDOWN\n", __func__));
+				 "%s: ESHUTDOWN\n", __func__);
 			padapter->bDriverStopped = true;
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-				 ("%s:bDriverStopped = true\n", __func__));
+				 "%s:bDriverStopped = true\n", __func__);
 			goto check_completion;
 		} else {
 			padapter->bSurpriseRemoved = true;
 			DBG_88E("bSurpriseRemoved = true\n");
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-				 ("%s:bSurpriseRemoved = true\n", __func__));
+				 "%s:bSurpriseRemoved = true\n", __func__);
 			goto check_completion;
 		}
 	}
@@ -665,13 +665,13 @@ u32 usb_write_port(struct adapter *padapter, u32 addr, u32 cnt, struct xmit_buf
 	struct xmit_frame *pxmitframe = (struct xmit_frame *)xmitbuf->priv_data;
 	struct usb_device *pusbd = pdvobj->pusbdev;
 
-	RT_TRACE(_module_hci_ops_os_c_, _drv_err_, ("+%s\n", __func__));
+	RT_TRACE(_module_hci_ops_os_c_, _drv_err_, "+%s\n", __func__);
 
 	if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved) ||
 	    (padapter->pwrctrlpriv.pnp_bstop_trx)) {
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s:( padapter->bDriverStopped ||padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n",
-			  __func__));
+			 "%s:( padapter->bDriverStopped ||padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n",
+			  __func__);
 		rtw_sctx_done_err(&xmitbuf->sctx, RTW_SCTX_DONE_TX_DENY);
 		goto exit;
 	}
@@ -721,8 +721,8 @@ u32 usb_write_port(struct adapter *padapter, u32 addr, u32 cnt, struct xmit_buf
 		rtw_sctx_done_err(&xmitbuf->sctx, RTW_SCTX_DONE_WRITE_PORT_ERR);
 		DBG_88E("%s, status =%d\n", __func__, status);
 		RT_TRACE(_module_hci_ops_os_c_, _drv_err_,
-			 ("%s(): usb_submit_urb, status =%x\n",
-			  __func__, status));
+			 "%s(): usb_submit_urb, status =%x\n",
+			  __func__, status);
 
 		switch (status) {
 		case -ENODEV:
@@ -738,7 +738,7 @@ u32 usb_write_port(struct adapter *padapter, u32 addr, u32 cnt, struct xmit_buf
 
 /*    We add the URB_ZERO_PACKET flag to urb so that the host will send the zero packet automatically. */
 
-	RT_TRACE(_module_hci_ops_os_c_, _drv_err_, ("-%s\n", __func__));
+	RT_TRACE(_module_hci_ops_os_c_, _drv_err_, "-%s\n", __func__);
 
 exit:
 	if (ret != _SUCCESS)
diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index 017e1d628461..48c4523a7df9 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -171,11 +171,11 @@ int rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	s32 res = 0;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("+xmit_enry\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, "+xmit_enry\n");
 
 	if (!rtw_if_up(padapter)) {
 		RT_TRACE(_module_xmit_osdep_c_, _drv_err_,
-			 ("%s: rtw_if_up fail\n", __func__));
+			 "%s: rtw_if_up fail\n", __func__);
 		goto drop_packet;
 	}
 
@@ -197,14 +197,14 @@ int rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev)
 
 	pxmitpriv->tx_pkts++;
 	RT_TRACE(_module_xmit_osdep_c_, _drv_info_,
-		 ("%s: tx_pkts=%d\n", __func__, (u32)pxmitpriv->tx_pkts));
+		 "%s: tx_pkts=%d\n", __func__, (u32)pxmitpriv->tx_pkts);
 	goto exit;
 
 drop_packet:
 	pxmitpriv->tx_drop++;
 	dev_kfree_skb_any(pkt);
 	RT_TRACE(_module_xmit_osdep_c_, _drv_notice_,
-		 ("%s: drop, tx_drop=%d\n", __func__, (u32)pxmitpriv->tx_drop));
+		 "%s: drop, tx_drop=%d\n", __func__, (u32)pxmitpriv->tx_drop);
 
 exit:
 	return 0;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
