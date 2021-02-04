Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7175030F7CE
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 17:30:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30A3C864BD;
	Thu,  4 Feb 2021 16:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kjjKDbKpmpw7; Thu,  4 Feb 2021 16:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C00A86403;
	Thu,  4 Feb 2021 16:30:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 989B71BF410
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 16:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 949F7863E1
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 16:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MaV4NUn_hlAO for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 16:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1760380862
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 16:30:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3F4D164F4E;
 Thu,  4 Feb 2021 16:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612456200;
 bh=5u67ptNkdxaGAQvRlrEAa8lGm8Pk/wldZO7QHXF4NaQ=;
 h=From:To:Cc:Subject:Date:From;
 b=HWQ4ciV1H8O/Sga0MqrjJLnXLv+NzHDk61tUdxG6SbWZfEpAFIJjw/A9wgroQBOsM
 bKm4eF+jO2gfUQ30e3PQT72T/RfjnSBiKTJA3eJRRzhllbCx1oYF9bGfSohAqYPGks
 3iqXF9RVep4SmFtrl2YS7vK5LzcNCsLBpV1ipQrVL5aJuqWFG6QggI1aqCWLR8j0K8
 n+fIPNegvOD/QZ4ei3G/t1Hm4+Wt8bZ2VfQtMkCzb/TmcURXSyfTu2mbtoscUUSu7Q
 KvIAd8OwChv6+LjZrdsEJ6BPSPMhJjtHfcJly8ogj4A+Y0utpx7qT5RU79w1zb1L+I
 JPf6eKuK+HqGg==
From: Arnd Bergmann <arnd@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: remove unused structures
Date: Thu,  4 Feb 2021 17:29:48 +0100
Message-Id: <20210204162956.3276523-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Fox Chen <foxhlchen@gmail.com>, linux-kernel@vger.kernel.org,
 Lukasz Szczesny <luk@wybcz.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

Building this with 'make W=1' produces a couple of warnings:

rtl8723bs/include/ieee80211.h:730:1: warning: alignment 1 of 'struct ieee80211_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
rtl8723bs/include/ieee80211.h:737:1: warning: alignment 1 of 'struct ieee80211_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]

The warnings are in dead code, so just remove the bits that
are obviously broken like this.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/rtl8723bs/include/ieee80211.h | 79 -------------------
 1 file changed, 79 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index d9ff8c8e7f36..f80db2c984a4 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -667,85 +667,6 @@ struct ieee80211_header_data {
 #define MFIE_TYPE_RATES_EX   50
 #define MFIE_TYPE_GENERIC    221
 
-struct ieee80211_info_element_hdr {
-	u8 id;
-	u8 len;
-} __attribute__ ((packed));
-
-struct ieee80211_info_element {
-	u8 id;
-	u8 len;
-	u8 data[0];
-} __attribute__ ((packed));
-
-/*
- * These are the data types that can make up management packets
- *
-	u16 auth_algorithm;
-	u16 auth_sequence;
-	u16 beacon_interval;
-	u16 capability;
-	u8 current_ap[ETH_ALEN];
-	u16 listen_interval;
-	struct {
-		u16 association_id:14, reserved:2;
-	} __attribute__ ((packed));
-	u32 time_stamp[2];
-	u16 reason;
-	u16 status;
-*/
-
-#define IEEE80211_DEFAULT_TX_ESSID "Penguin"
-#define IEEE80211_DEFAULT_BASIC_RATE 10
-
-
-struct ieee80211_authentication {
-	struct ieee80211_header_data header;
-	u16 algorithm;
-	u16 transaction;
-	u16 status;
-	/* struct ieee80211_info_element_hdr info_element; */
-} __attribute__ ((packed));
-
-
-struct ieee80211_probe_response {
-	struct ieee80211_header_data header;
-	u32 time_stamp[2];
-	u16 beacon_interval;
-	u16 capability;
-	struct ieee80211_info_element info_element;
-} __attribute__ ((packed));
-
-struct ieee80211_probe_request {
-	struct ieee80211_header_data header;
-	/*struct ieee80211_info_element info_element;*/
-} __attribute__ ((packed));
-
-struct ieee80211_assoc_request_frame {
-	struct ieee80211_hdr_3addr header;
-	u16 capability;
-	u16 listen_interval;
-	/* u8 current_ap[ETH_ALEN]; */
-	struct ieee80211_info_element_hdr info_element;
-} __attribute__ ((packed));
-
-struct ieee80211_assoc_response_frame {
-	struct ieee80211_hdr_3addr header;
-	u16 capability;
-	u16 status;
-	u16 aid;
-} __attribute__ ((packed));
-
-struct ieee80211_txb {
-	u8 nr_frags;
-	u8 encrypted;
-	u16 reserved;
-	u16 frag_size;
-	u16 payload_size;
-	struct sk_buff *fragments[0];
-};
-
-
 /* SWEEP TABLE ENTRIES NUMBER*/
 #define MAX_SWEEP_TAB_ENTRIES		  42
 #define MAX_SWEEP_TAB_ENTRIES_PER_PACKET  7
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
