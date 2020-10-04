Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3C12827BC
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CAA686FC9;
	Sun,  4 Oct 2020 01:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id li+1wHgG2mel; Sun,  4 Oct 2020 01:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9A3E86FF2;
	Sun,  4 Oct 2020 01:18:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C74E1BF5A9
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 999758630A
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qzo3tY+asdDQ for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61B2E86094
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:18:01 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id e5so4754145ils.10
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q6OtA9wrNIuHR6nKm5WFCR0zUEhFQV++yVS7EekMH3k=;
 b=GToOjvV2IEprff5kM3IexkH9Jx0PxYDBnIZsENs2eUwjv38s2/rCHktEp0yH6nijrB
 4xmYd0FYHOfGgvb3uyYCsbAswABiEtRUdm9+Ro6CE2xLDbpkVQbP0f9UU8FhK9HgEYrH
 xtqC3i2nGrnxjFu5NbRjV+o9Os8P6/hSdlQd2V/+TOJGNE1roKUrXMMfH5G8tYyJ7qdZ
 0nduxd9PCvYrEaNfAkmfNFVEXA0KtsZPg9OhkdvFYhxpswEwlR0mlMqKCJfVf3uwg1gO
 YcrUt+s4AYwHAhBaIQ2U+ny0tEOYj54t0NR+mbLuhnc0ZT5NVwNlVAxiCEGko//N43jA
 mr2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q6OtA9wrNIuHR6nKm5WFCR0zUEhFQV++yVS7EekMH3k=;
 b=blgor6D61svszIiX/7US1hbXmK3FYWAWruakrVrptjdemwygqnszl94pfgXApAE3c+
 8g8OUdxB9YDrpiOBRUTqsuCoqg3zqlDrGRMCYCQath7A7uNGXSP8kW126d+P2mGExkoc
 ZfQHIuZreDPH8fhMqxOu5ktHh8Z4vwtPTxz2S6yw5Wt3Mot7qfksnaVVc6qRCvu7UDJR
 l+zAKGUD/Bu6ls2BjzF3pga6P1ECGzTndLysYJv8yRg/tmx0H/rn1sveMXoSi2eviCN0
 bqMlHtLitzTbrSLyGY78w+WPfHuXQPt7DlY+lWXcWlhxxmU9EjuIchFakVk9rUVMPZFd
 JTxA==
X-Gm-Message-State: AOAM533eC50zSCmOv6dUia4ATPq4BYFlCoOi6w3Z6PnKoIKl7m4DCabs
 +PkLRWZGMkd5FHxOb98oc+ksGFBrPoE=
X-Google-Smtp-Source: ABdhPJx0EaKGM3OYSJWQ3VygZuo8V4xv/sryAMTdTUqoMLkK+fpPZM38pmzG3Sm/RKN9+hMmFj2olg==
X-Received: by 2002:a92:90e:: with SMTP id y14mr1498342ilg.24.1601774280733;
 Sat, 03 Oct 2020 18:18:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:18:00 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/8] staging: rtl8723bs: replace RTW_GET_LE16 with
 get_unaligned_le16
Date: Sat,  3 Oct 2020 20:17:41 -0500
Message-Id: <20201004011743.10750-6-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace RTW_GET_LE16 macro with get_unaligned_le16.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c           | 5 +++--
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c     | 7 ++++---
 drivers/staging/rtl8723bs/include/osdep_service.h | 2 --
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index a76e81330756..4f270d509ad3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -8,6 +8,7 @@
 
 #include <drv_types.h>
 #include <rtw_debug.h>
+#include <asm/unaligned.h>
 
 extern unsigned char RTW_WPA_OUI[];
 extern unsigned char WMM_OUI[];
@@ -995,12 +996,12 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* beacon interval */
 	p = rtw_get_beacon_interval_from_ie(ie);/* ie + 8;	8: TimeStamp, 2: Beacon Interval 2:Capability */
 	/* pbss_network->Configuration.BeaconPeriod = le16_to_cpu(*(unsigned short*)p); */
-	pbss_network->Configuration.BeaconPeriod = RTW_GET_LE16(p);
+	pbss_network->Configuration.BeaconPeriod = get_unaligned_le16(p);
 
 	/* capability */
 	/* cap = *(unsigned short *)rtw_get_capability_from_ie(ie); */
 	/* cap = le16_to_cpu(cap); */
-	cap = RTW_GET_LE16(ie);
+	cap = get_unaligned_le16(ie);
 
 	/* SSID */
 	p = rtw_get_ie(
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 977f0ed53ad7..3b7a3c220032 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -500,7 +500,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 	/* pairwise_cipher */
 	if (left >= 2) {
 		/* count = le16_to_cpu(*(u16*)pos); */
-		count = RTW_GET_LE16(pos);
+		count = get_unaligned_le16(pos);
 		pos += 2;
 		left -= 2;
 
@@ -570,7 +570,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 	/* pairwise_cipher */
 	if (left >= 2) {
 	  /* count = le16_to_cpu(*(u16*)pos); */
-		count = RTW_GET_LE16(pos);
+		count = get_unaligned_le16(pos);
 		pos += 2;
 		left -= 2;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 6db637701063..b912ad2f4b72 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -11,6 +11,7 @@
 #include <rtw_wifi_regd.h>
 #include <hal_btcoex.h>
 #include <linux/kernel.h>
+#include <asm/unaligned.h>
 
 static struct mlme_handler mlme_sta_tbl[] = {
 	{WIFI_ASSOCREQ,		"OnAssocReq",	&OnAssocReq},
@@ -1213,7 +1214,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		goto asoc_class2_error;
 	}
 
-	capab_info = RTW_GET_LE16(pframe + WLAN_HDR_A3_LEN);
+	capab_info = get_unaligned_le16(pframe + WLAN_HDR_A3_LEN);
 	/* capab_info = le16_to_cpu(*(unsigned short *)(pframe + WLAN_HDR_A3_LEN)); */
 
 	left = pkt_len - (sizeof(struct ieee80211_hdr_3addr) + ie_offset);
@@ -1959,7 +1960,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 			break;
 
 		case RTW_WLAN_ACTION_ADDBA_RESP: /* ADDBA response */
-			status = RTW_GET_LE16(&frame_body[3]);
+			status = get_unaligned_le16(&frame_body[3]);
 			tid = ((frame_body[5] >> 2) & 0x7);
 
 			if (status == 0) {
@@ -1989,7 +1990,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 					~BIT((frame_body[3] >> 4) & 0xf);
 
 				/* reason_code = frame_body[4] | (frame_body[5] << 8); */
-				reason_code = RTW_GET_LE16(&frame_body[4]);
+				reason_code = get_unaligned_le16(&frame_body[4]);
 			} else if ((frame_body[3] & BIT(3)) == BIT(3)) {
 				tid = (frame_body[3] >> 4) & 0x0F;
 
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index a26c8db302e0..2f7e1665b6b1 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -152,8 +152,6 @@ extern void rtw_free_netdev(struct net_device * netdev);
 
 #define RTW_GET_BE16(a) ((u16) (((a)[0] << 8) | (a)[1]))
 
-#define RTW_GET_LE16(a) ((u16) (((a)[1] << 8) | (a)[0]))
-
 void rtw_buf_free(u8 **buf, u32 *buf_len);
 void rtw_buf_update(u8 **buf, u32 *buf_len, u8 *src, u32 src_len);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
