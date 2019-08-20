Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A98896CF7
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59F6786B96;
	Tue, 20 Aug 2019 23:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKFPsi-EeNlh; Tue, 20 Aug 2019 23:12:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96F3986A01;
	Tue, 20 Aug 2019 23:12:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB2321BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF1D282462
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YVnHtuSNdGa4 for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:12:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6199D877A0
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:12:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566342759; cv=none; d=zoho.com; s=zohoarc; 
 b=hXSN+Gj/RhKd/0hqwChapBO8ePfFrjCwZu1vU7NO3Ff2VuxjRlPf0YQc7ylU6QsqrSqx7tEDGaRbrry8dJbgQfXu/8B2UHxpj1PoPBMYRY2eCIO/k2OQWZcnT9jMv0zMWbgxOr45NwC7J1VrKgKfHOcYBfcOoj76NPVnWMeyUFs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566342759;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results;
 bh=MVfCmf1E8Hdpayw4jYLiIBv+0JHwD8pI24yNsGdyYMM=; 
 b=UaoXVdIoP3lXH6dzKInqtziN2NRrv8AWJviOlnWesN4HeCAkH6VTHuXzmeL9tyJc+/BGAD8s+6qXIwv0gcJ7PilBm+fsMiyij34wKG67VIZwd44T8h09Mw8JDyMuYVuyDv+5qZD8sfRrliFtvQ93s/16MhRqW4d7OTieBpzsn2s=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566342759; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=3987; bh=MVfCmf1E8Hdpayw4jYLiIBv+0JHwD8pI24yNsGdyYMM=;
 b=SFkS2eXS1qG/EXPlKz4KAYxVyzxyL6bEzAaK2FXc/JbZWEPVbcZ/j5rP6i7+2pjM
 rZHJofOm9aU6nh2vD1s4DZsjDpjrvKIAIk+dpvfUusayoXX6NKDBKAbZ62aMBRW9VGc
 JIpQbZdaZSbrAvDpNGSUlOFmQFoLDZAVpWTFoMMs=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566342757463723.5175446328193;
 Tue, 20 Aug 2019 16:12:37 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190820231156.30031-3-stephen@brennan.io>
Subject: [PATCH 2/3] staging: rtl8192u: fix macro alignment in ieee80211
Date: Tue, 20 Aug 2019 16:11:55 -0700
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820231156.30031-1-stephen@brennan.io>
References: <20190820231156.30031-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Stephen Brennan <stephen@brennan.io>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 .../staging/rtl8192u/ieee80211/ieee80211.h    | 35 ++++++++++---------
 .../staging/rtl8192u/ieee80211/rtl819x_HT.h   |  8 ++---
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 129dcb5a0f2e..6b7828a9e71d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -169,9 +169,9 @@ struct cb_desc {
 #define MGN_MCS14               0x8e
 #define MGN_MCS15               0x8f
 
-#define aSifsTime ((priv->ieee80211->current_network.mode == IEEE_A || \
+#define aSifsTime ((priv->ieee80211->current_network.mode == IEEE_A ||     \
 		    priv->ieee80211->current_network.mode == IEEE_N_24G || \
-		    priv->ieee80211->current_network.mode == IEEE_N_5G) ? \
+		    priv->ieee80211->current_network.mode == IEEE_N_5G) ?  \
 		   16 : 10)
 
 #define MGMT_QUEUE_NUM 5
@@ -387,7 +387,7 @@ struct ieee_param {
 #define IEEE80211_STYPE_ACK		0x00D0
 #define IEEE80211_STYPE_CFEND		0x00E0
 #define IEEE80211_STYPE_CFENDACK	0x00F0
-#define IEEE80211_STYPE_BLOCKACK   0x0094
+#define IEEE80211_STYPE_BLOCKACK	0x0094
 
 /* data */
 #define IEEE80211_STYPE_DATA		0x0000
@@ -452,18 +452,19 @@ do { if (ieee80211_debug_level & (level)) \
   printk(KERN_DEBUG "ieee80211: " fmt, ## args); } while (0)
 //wb added to debug out data buf
 //if you want print DATA buffer related BA, please set ieee80211_debug_level to DATA|BA
-#define IEEE80211_DEBUG_DATA(level, data, datalen)	\
-	do { if ((ieee80211_debug_level & (level)) == (level))	\
-		{	\
-			int i;					\
-			u8 *pdata = (u8 *) data;			\
-			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);	\
-			for (i = 0; i < (int)(datalen); i++) {		\
-				printk("%2x ", pdata[i]);		\
-				if ((i + 1) % 16 == 0) printk("\n");	\
-			}				\
-			printk("\n");			\
-		}					\
+#define IEEE80211_DEBUG_DATA(level, data, datalen)                             \
+	do { if ((ieee80211_debug_level & (level)) == (level))                 \
+		{                                                              \
+			int i;                                                 \
+			u8 *pdata = (u8 *) data;                               \
+			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);      \
+			for (i = 0; i < (int)(datalen); i++) {                 \
+				printk("%2x ", pdata[i]);                      \
+				if ((i + 1) % 16 == 0)                         \
+					printk("\n");                          \
+			}                                                      \
+			printk("\n");                                          \
+		}                                                              \
 	} while (0)
 #else
 #define IEEE80211_DEBUG (level, fmt, args...) do {} while (0)
@@ -2014,8 +2015,8 @@ struct ieee80211_device {
 #define IEEE_A            (1<<0)
 #define IEEE_B            (1<<1)
 #define IEEE_G            (1<<2)
-#define IEEE_N_24G		  (1<<4)
-#define	IEEE_N_5G		  (1<<5)
+#define IEEE_N_24G        (1<<4)
+#define IEEE_N_5G         (1<<5)
 #define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
 
 /* Generate a 802.11 header */
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
index 3fca0d3a1d05..586d93720e37 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h
@@ -253,10 +253,10 @@ extern u8 MCS_FILTER_1SS[16];
 /* 2007/07/12 MH We only define legacy and HT wireless mode now. */
 #define	LEGACY_WIRELESS_MODE	IEEE_MODE_MASK
 
-#define CURRENT_RATE(WirelessMode, LegacyRate, HTRate)	\
-					((WirelessMode & (LEGACY_WIRELESS_MODE)) != 0) ?\
-						(LegacyRate) :\
-						(PICK_RATE(LegacyRate, HTRate))
+#define CURRENT_RATE(WirelessMode, LegacyRate, HTRate)           \
+		((WirelessMode & (LEGACY_WIRELESS_MODE)) != 0) ? \
+			(LegacyRate) :                           \
+			(PICK_RATE(LegacyRate, HTRate))
 
 // MCS Bw 40 {1~7, 12~15,32}
 #define	RATE_ADPT_1SS_MASK		0xFF
-- 
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
