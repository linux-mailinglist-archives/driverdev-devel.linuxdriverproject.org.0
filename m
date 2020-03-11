Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E26180D76
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 02:26:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B64188138;
	Wed, 11 Mar 2020 01:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCRJxiWcNOJy; Wed, 11 Mar 2020 01:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C688D880B2;
	Wed, 11 Mar 2020 01:26:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3811BF5A4
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 93F528815C
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgxhvmieDUrO for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 01:25:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A247288158
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 01:25:59 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id c145so545326qke.12
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 18:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jP1h4LnU7XtbVr4y3Ipe7IVVDlnx9HE/9oHCfNpi+WM=;
 b=DWmdEhxbRi4c6Wg+y0GATJ62iaarJpImMb/f9vZSKIsSkrBGKKUSaWo1E/dEpqSr/K
 eVKPs/whf8Ze75a9+siOh36sJh2/cE3ZJu/u0VfyUP/ROogSYwfbm5K35GCnm+HYG14J
 6kCCGQfMt/EVaeMu9wBpnsZ1oPcTgUAmaui3r+qq8/YLsaTpHC0XkgLxzVGPaRoydonI
 62wywfcwFrdvhaf6z9Vo6wND3OmZVDITTcEsDRl0OgZBjnzb4dIgthnHwILPpa1GQkj+
 /Ghaeh+KWp5v+irIAlE2EMwtmNNXF2Io8iOHY57H0Fo2Dnocm+yrL0hv7JZjohGRkGJO
 HE7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jP1h4LnU7XtbVr4y3Ipe7IVVDlnx9HE/9oHCfNpi+WM=;
 b=try4XOtlqtteFnF+ZwTiK8nmoXRQXhFxcAA4X/SMsUsM3uWlcp9pg1niy+chteIPKd
 /3S00adjpjKERwPh5+ldAfGuJlHO1jUNq2gmcdVyPvpkSYixiZrNd65pW8hAFln+Ya1F
 Px31yQAbv2NLqHo8Zwm4pbriwSWCMyl2mq4PKuKOIie7aIiVzTpfT+i+Y+lRU3WzvWCo
 LXQ1tQ2sRHTMaFNYs/YC/1PzJhjOvrf8ycah+azepuqZuWIeaqvp6H1XgxhwUcJWSght
 Dt7oodJI/Y1CGnRGF+tCctGQr24i22W2AHbbvtZ1Qe6/mNkGgqXC+yu/nCrBHKnbDIfT
 c2nw==
X-Gm-Message-State: ANhLgQ0dgGzLmDk331qDo/r7ExJYrOAVduUybyzH+jRHeA7bxIeY/18L
 tNYdTk8i1sWOEEvfIva1tiY=
X-Google-Smtp-Source: ADFU+vvmeAaY55VzzyTgfMyK56hvzzpG+chCK2Qehp/bdiWtE7hHp88BWGBXhRLtPCdJTnqEdHMMbg==
X-Received: by 2002:a37:702:: with SMTP id 2mr626759qkh.134.1583889958494;
 Tue, 10 Mar 2020 18:25:58 -0700 (PDT)
Received: from 2158e4caaa32.ic.unicamp.br
 (wifi-177-220-84-104.wifi.ic.unicamp.br. [177.220.84.104])
 by smtp.gmail.com with ESMTPSA id i66sm4618730qkc.13.2020.03.10.18.25.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:25:57 -0700 (PDT)
From: Thiago Souza Ferreira <thsouza2013@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: rtl8188eu: Fix block comments to use *
Date: Wed, 11 Mar 2020 01:23:32 +0000
Message-Id: <20200311012332.27498-1-thsouza2013@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix "Block comments use * on subsequent lines" warning of
rtw_mlme_ext.c, found by checkpatch.pl script

Signed-off-by: Thiago Souza Ferreira <thsouza2013@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 69 ++++++++++---------
 1 file changed, 35 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 36841d20c..02b87a804 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -20,8 +20,8 @@
 static u8 null_addr[ETH_ALEN] = {};
 
 /**************************************************
-OUI definitions for the vendor specific IE
-***************************************************/
+ *OUI definitions for the vendor specific IE
+ ***************************************************/
 const u8 RTW_WPA_OUI[] = {0x00, 0x50, 0xf2, 0x01};
 const u8 WPS_OUI[] = {0x00, 0x50, 0xf2, 0x04};
 static const u8 WMM_OUI[] = {0x00, 0x50, 0xf2, 0x02};
@@ -33,16 +33,16 @@ const u8 WPA_TKIP_CIPHER[4] = {0x00, 0x50, 0xf2, 0x02};
 const u8 RSN_TKIP_CIPHER[4] = {0x00, 0x0f, 0xac, 0x02};
 
 /********************************************************
-MCS rate definitions
-*********************************************************/
+ *MCS rate definitions
+ *********************************************************/
 const u8 MCS_rate_1R[16] = {
 	0xff, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };
 
 /********************************************************
-ChannelPlan definitions
-*********************************************************/
+ *ChannelPlan definitions
+ *********************************************************/
 static struct rt_channel_plan_2g RTW_ChannelPlan2G[RT_CHANNEL_DOMAIN_2G_MAX] = {
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x00, RT_CHANNEL_DOMAIN_2G_WORLD , Passive scan CH 12, 13 */
 	{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}, 13},		/*  0x01, RT_CHANNEL_DOMAIN_2G_ETSI1 */
@@ -173,10 +173,10 @@ struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv)
 }
 
 /****************************************************************************
-
-Following are some TX functions for WiFi MLME
-
-*****************************************************************************/
+ *
+ * Following are some TX functions for WiFi MLME
+ *
+ *****************************************************************************/
 
 void update_mgnt_tx_rate(struct adapter *padapter, u8 rate)
 {
@@ -1895,10 +1895,10 @@ unsigned int send_beacon(struct adapter *padapter)
 }
 
 /****************************************************************************
-
-Following are some utility functions for WiFi MLME
-
-*****************************************************************************/
+ *
+ *Following are some utility functions for WiFi MLME
+ *
+ *****************************************************************************/
 
 static void site_survey(struct adapter *padapter)
 {
@@ -2497,10 +2497,11 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 }
 
 /****************************************************************************
-
-Following are the callback functions for each subtype of the management frames
-
-*****************************************************************************/
+ *
+ * Following are the callback functions for each subtype of the management
+ * frames
+ *
+ *****************************************************************************/
 
 static unsigned int OnProbeReq(struct adapter *padapter,
 			       struct recv_frame *precv_frame)
@@ -3822,10 +3823,10 @@ static unsigned int OnAction(struct adapter *padapter,
 }
 
 /****************************************************************************
-
-Following are the initialization functions for WiFi MLME
-
-*****************************************************************************/
+ *
+ * Following are the initialization functions for WiFi MLME
+ *
+ *****************************************************************************/
 
 static struct mlme_handler mlme_sta_tbl[] = {
 	{WIFI_ASSOCREQ,	  "OnAssocReq",	  &OnAssocReq},
@@ -4151,10 +4152,10 @@ void mgt_dispatcher(struct adapter *padapter, struct recv_frame *precv_frame)
 }
 
 /****************************************************************************
-
-Following are the functions to report events
-
-*****************************************************************************/
+ *
+ * Following are the functions to report events
+ *
+ *****************************************************************************/
 
 void report_survey_event(struct adapter *padapter,
 			 struct recv_frame *precv_frame)
@@ -4405,10 +4406,10 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 }
 
 /****************************************************************************
-
-Following are the event callback functions
-
-*****************************************************************************/
+ *
+ * Following are the event callback functions
+ *
+ *****************************************************************************/
 
 /* for sta/adhoc mode */
 void update_sta_info(struct adapter *padapter, struct sta_info *psta)
@@ -4599,10 +4600,10 @@ void mlmeext_sta_del_event_callback(struct adapter *padapter)
 }
 
 /****************************************************************************
-
-Following are the functions for the timer handlers
-
-*****************************************************************************/
+ *
+ * Following are the functions for the timer handlers
+ *
+ *****************************************************************************/
 
 static u8 chk_ap_is_alive(struct adapter *padapter, struct sta_info *psta)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
