Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D33408C4
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B26F94EE18;
	Thu, 18 Mar 2021 15:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mt16cMWCKy-2; Thu, 18 Mar 2021 15:26:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BD2C4EE06;
	Thu, 18 Mar 2021 15:26:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 42CF31BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31D8F4EE06
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4D3f69v_AVz for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:26:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B64C4EE01
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:26:43 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id b9so5975832wrt.8
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iC2iPxAe+F75uYbaWgLj4XBTeFe2pOyn8bWYPs07GrI=;
 b=jURtmja4uZk2dIsnFtKiqwAhUei0X5+9AvtBz1lxefxcZtddVUyL4v0ga2ptbpm3Cj
 lMakSSOMssvWfBPknxc9C3VfinYyvCdZQ6mYyDjy25kyH8ubKTNzBOkzaTKH6f9kAPDk
 z4jJYb9WHPDgHc5vi4XSxP2ZCxAVmD9OhRmBYuI2GKSYOmu1YKymLbANLvdl1bgVoPwW
 aEGgCFgs3lIxDVnMgonHLGNlx0UFLtz8D13clWKS7+wvdiGsV7lFnku2UsZJVMh9Hv8x
 dM0s+2IWoxgdEth5RYq2mL1a9gB61OS51XN0hoQghOlB3x63z3hrJgD1MRQmcPCbJllH
 6Vyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iC2iPxAe+F75uYbaWgLj4XBTeFe2pOyn8bWYPs07GrI=;
 b=tP54dmASEwlqwmq+b0oPqzmqhFeHHZMa3uRqJiUsJu3UTdEjDZVv27mmetN71tMrcT
 GKwSUh/flxUgb9TRiFMTINl5IIjubpQqIrv5g9AfhAB1D02aPl3OSj2mrAbAobmCeakH
 FL/tNEXHmxBBPnMhBYpyb6WLvhjK9v8mzvai9pbS5ShbrcbsBIRceRLgb89YWCF5kdws
 s5D0xAIaIl4OwfT5gugX7/X9tZzOAj5ppU0abFKSnfFpfHNOi1a4j6euHh4PorR9rgwq
 I+wX28ZOwJ79SvDZcDeoCyvRM8WPGar9DD4vw7s82rJIwdu59MvXqJSX8JKnWStJGbBX
 /dOA==
X-Gm-Message-State: AOAM532b3uuAlF2cYyZnXfp6YaaeSTlWcT+QAe9N3TWazyKrAvvKvkSS
 a0V4oDhfZUe6CRdieL9KueSH/YIPrHhHlQ==
X-Google-Smtp-Source: ABdhPJwW+D45aJPuKy2aO92rGVBQMGVV3BRPXRem4onh9MudyFq7yYrRSNS7mBf1wmvlL1FEjnJFXw==
X-Received: by 2002:a5d:6304:: with SMTP id i4mr10213977wru.155.1616081202162; 
 Thu, 18 Mar 2021 08:26:42 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id o7sm3340556wrs.16.2021.03.18.08.26.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:26:41 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/15] staging: rtl8723bs: remove unnecessary logging in
 core/rtw_ap.c
Date: Thu, 18 Mar 2021 16:25:56 +0100
Message-Id: <20210318152610.16758-2-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
66: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:66:
+	/* DBG_871X("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
559: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:559:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
716: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:716:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
770: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:770:
+	/* DBG_871X("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1476: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1476:
+	/* DBG_871X("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1531: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1531:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1557: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1557:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1564: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1564:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1609: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1609:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1614: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1614:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1619: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1619:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1624: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1624:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1629: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1629:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1647: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1647:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1716: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1716:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1740: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:1740:
+	/* DBG_871X("%s\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 26 -------------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 63b339484289..d86ab7d0ddf2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -63,8 +63,6 @@ static void update_BCNTIM(struct adapter *padapter)
 	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
 	unsigned char *pie = pnetwork_mlmeext->IEs;
 
-	/* DBG_871X("%s\n", __func__); */
-
 	/* update TIM IE */
 	/* if (pstapriv->tim_bitmap) */
 	if (true) {
@@ -556,8 +554,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 	/* set intf_tag to if1 */
 	/* psta->intf_tag = 0; */
 
-	DBG_871X("%s\n", __func__);
-
 	/* psta->mac_id = psta->aid+4; */
 	/* psta->mac_id = psta->aid+1;//alloc macid when call rtw_alloc_stainfo(), */
 	/* release macid when call rtw_free_stainfo() */
@@ -713,8 +709,6 @@ static void update_hw_ht_param(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	DBG_871X("%s\n", __func__);
-
 	/* handle A-MPDU parameter field
 	 *
 	 *	AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
@@ -767,8 +761,6 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	struct HT_info_element *pht_info = NULL;
 	u8 cbw40_enable = 0;
 
-	/* DBG_871X("%s\n", __func__); */
-
 	bcn_interval = (u16)pnetwork->Configuration.BeaconPeriod;
 	cur_channel = pnetwork->Configuration.DSConfig;
 	cur_bwmode = CHANNEL_WIDTH_20;
@@ -1473,8 +1465,6 @@ static int rtw_ap_set_key(
 	struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
 	int res = _SUCCESS;
 
-	/* DBG_871X("%s\n", __func__); */
-
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (pcmd == NULL) {
 		res = _FAIL;
@@ -1528,8 +1518,6 @@ static int rtw_ap_set_key(
 
 int rtw_ap_set_group_key(struct adapter *padapter, u8 *key, u8 alg, int keyid)
 {
-	DBG_871X("%s\n", __func__);
-
 	return rtw_ap_set_key(padapter, key, alg, keyid, 1);
 }
 
@@ -1554,14 +1542,11 @@ int rtw_ap_set_wep_key(
 		alg = _NO_PRIVACY_;
 	}
 
-	DBG_871X("%s\n", __func__);
-
 	return rtw_ap_set_key(padapter, key, alg, keyid, set_tx);
 }
 
 static void update_bcn_fixed_ie(struct adapter *padapter)
 {
-	DBG_871X("%s\n", __func__);
 }
 
 static void update_bcn_erpinfo_ie(struct adapter *padapter)
@@ -1606,27 +1591,22 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 
 static void update_bcn_htcap_ie(struct adapter *padapter)
 {
-	DBG_871X("%s\n", __func__);
 }
 
 static void update_bcn_htinfo_ie(struct adapter *padapter)
 {
-	DBG_871X("%s\n", __func__);
 }
 
 static void update_bcn_rsn_ie(struct adapter *padapter)
 {
-	DBG_871X("%s\n", __func__);
 }
 
 static void update_bcn_wpa_ie(struct adapter *padapter)
 {
-	DBG_871X("%s\n", __func__);
 }
 
 static void update_bcn_wmm_ie(struct adapter *padapter)
 {
-	DBG_871X("%s\n", __func__);
 }
 
 static void update_bcn_wps_ie(struct adapter *padapter)
@@ -1644,8 +1624,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	unsigned char *ie = pnetwork->IEs;
 	u32 ielen = pnetwork->IELength;
 
-	DBG_871X("%s\n", __func__);
-
 	pwps_ie = rtw_get_wps_ie(
 		ie + _FIXED_IE_LENGTH_,
 		ielen - _FIXED_IE_LENGTH_,
@@ -1713,8 +1691,6 @@ static void update_bcn_p2p_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-	DBG_871X("%s\n", __func__);
-
 	if (!memcmp(RTW_WPA_OUI, oui, 4))
 		update_bcn_wpa_ie(padapter);
 
@@ -1737,8 +1713,6 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	struct mlme_ext_priv *pmlmeext;
 	/* struct mlme_ext_info *pmlmeinfo; */
 
-	/* DBG_871X("%s\n", __func__); */
-
 	if (!padapter)
 		return;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
