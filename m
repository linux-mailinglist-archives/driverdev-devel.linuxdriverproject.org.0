Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B42D1EFF
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF61C8855C;
	Thu, 10 Oct 2019 03:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hc0Halpp2fIN; Thu, 10 Oct 2019 03:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F05E88545;
	Thu, 10 Oct 2019 03:40:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F9F21BF2FB
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6798D88545
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 65x9VdG1yDOP for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AAF1588541
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:40:43 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id u12so2065275pls.12
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
 b=mHdX52nXAaVdlEJKU+GZNLGqhgNhQ78OkCj8rU8XubWCCC6e2F4vVfIuBLM30eLMut
 bYujFP+LA1yEd1o9F5ysb3zaPXwHf1z0sXjDuehtBwi9jlF4Ra6bwsRIRXl1VXi6Kcs9
 joeCWh0BY0VImIDbURm4IWouRClHN7hh3GyZKLkoS2Psy8/irVph3j85L0AHbMxzSeby
 1VJQE7v+uz2Idacg0YCfyoSZ1wDobgged5QX83S0ODinLOM93S7A4eyzvgsUoDk3OT8z
 N36VV+C0MyeK2x9XL6k7UgTYa06l0aTy1xcxbfOHpMCECCDiHpedr8r8reYgs+b7Fh0g
 +H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZUpFJbctHLbLvrh0MpCtPGi5zG/1dlaflfj3eQWRa4g=;
 b=bcP2QkeMtlhOGd2n9NhKBNgvtf3wOTTVPgtt3fwv/MDq4EhTqehM0UumeMVzeaQ41P
 mMiM9ygi2trZcfRxvJHZicfHzfcXrPLXCPgsuldP2MucrhmatBa1/AEMjeM7RO4/t0mW
 aD6YjvZfT/usvvjJ1PU2lYbupSL7yZGwzciixO4/xp8T0A7zyTrCYoD+ty3AoJok2UK2
 T1UedOlnCqm3JvXaSpejgR9HL7Ah7oHVI7C1UuspfBfQAcxCyPI32mnczwNylRKLJZGw
 R4eS5/mNC7EwZLg2ilJuljn1MvJycWYlOe7RuHZvbSmB+/lncjIEwV6Gw1A74broNY/S
 ZGpQ==
X-Gm-Message-State: APjAAAWf1ZgBkaQ42ymOaaIG26gubYN/xtFb/piXGzMFfROJApoj951N
 AZpf8XCKH4aohNnXD1k0fbI=
X-Google-Smtp-Source: APXvYqy0VKYAt+zmQOhKFgBsrzO14regYOKJlCGlow3F7JspXSB8Qc3ONKCtZbW4w0eNnqIkCLwHCw==
X-Received: by 2002:a17:902:8689:: with SMTP id
 g9mr6785133plo.131.1570678843184; 
 Wed, 09 Oct 2019 20:40:43 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id k95sm3517741pje.10.2019.10.09.20.40.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 20:40:42 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8723bs: Remove unnecessary braces for single
 statements
Date: Thu, 10 Oct 2019 06:39:22 +0300
Message-Id: <8e6f986b6bb09951af5336f5033888eb9e8ef273.1570678371.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570678371.git.wambui.karugax@gmail.com>
References: <cover.1570678371.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up multiple unnecessary braces around single statement blocks in
drivers/staging/rtl8723bs/core/rtw_mlme.c
Issues reported by checkpatch.pl as:
WARNING: braces {} are not necessary for single statement blocks or
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 37 ++++++++---------------
 1 file changed, 12 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 7f27287223e8..b15b761782b8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -112,9 +112,8 @@ void _rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	if (pmlmepriv) {
 		rtw_free_mlme_priv_ie_data(pmlmepriv);
-		if (pmlmepriv->free_bss_buf) {
+		if (pmlmepriv->free_bss_buf)
 			vfree(pmlmepriv->free_bss_buf);
-		}
 	}
 }
 
@@ -753,11 +752,10 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 
 		if (psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPA2PSK) {
 			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
-			if (p && ie_len > 0) {
+			if (p && ie_len > 0)
 				bselected = true;
-			} else {
+			else
 				bselected = false;
-			}
 		}
 	}
 
@@ -822,9 +820,8 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 	/*  lock pmlmepriv->lock when you accessing network_q */
 	if ((check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) == false) {
-		if (pnetwork->Ssid.Ssid[0] == 0) {
+		if (pnetwork->Ssid.Ssid[0] == 0)
 			pnetwork->Ssid.SsidLength = 0;
-		}
 		rtw_add_network(adapter, pnetwork);
 	}
 
@@ -893,9 +890,8 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 					pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;
 
-					if (rtw_createbss_cmd(adapter) != _SUCCESS) {
-					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
-					}
+					if (rtw_createbss_cmd(adapter) != _SUCCESS)
+						RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
 
 					pmlmepriv->to_join = false;
 				}
@@ -1166,9 +1162,8 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 	psta = rtw_get_stainfo(pstapriv, pnetwork->network.MacAddress);
-	if (!psta) {
+	if (!psta)
 		psta = rtw_alloc_stainfo(pstapriv, pnetwork->network.MacAddress);
-	}
 
 	if (psta) { /* update ptarget_sta */
 
@@ -1347,11 +1342,10 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 	rtw_get_encrypt_decrypt_from_registrypriv(adapter);
 
 
-	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
+	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
-	} else {
+	else
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   rtw_joinbss_event_callback for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
-	}
 
 	the_same_macaddr = !memcmp(pnetwork->network.MacAddress, cur_network->network.MacAddress, ETH_ALEN);
 
@@ -1723,13 +1717,8 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 				_clr_fwstate_(pmlmepriv, WIFI_ADHOC_STATE);
 			}
 
-			if (rtw_createbss_cmd(adapter) != _SUCCESS) {
-
+			if (rtw_createbss_cmd(adapter) != _SUCCESS)
 				RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("***Error =>stadel_event_callback: rtw_createbss_cmd status FAIL***\n "));
-
-			}
-
-
 		}
 
 	}
@@ -1902,9 +1891,8 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 		}
 
 	} else {
-		if (is_primary_adapter(adapter)) {
+		if (is_primary_adapter(adapter))
 			rtw_dynamic_chk_wk_cmd(adapter);
-		}
 	}
 
 	/* auto site survey */
@@ -2988,9 +2976,8 @@ void rtw_append_exented_cap(struct adapter *padapter, u8 *out_ie, uint *pout_len
 	u8 *pframe;
 
 
-	if (phtpriv->bss_coexist) {
+	if (phtpriv->bss_coexist)
 		SET_EXT_CAPABILITY_ELE_BSS_COEXIST(cap_content, 1);
-	}
 
 	pframe = rtw_set_ie(out_ie + *pout_len, EID_EXTCapability, 8, cap_content, pout_len);
 }
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
