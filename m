Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 947681DFB39
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 May 2020 23:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82C9A87C49;
	Sat, 23 May 2020 21:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMMTrsuPWXOU; Sat, 23 May 2020 21:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE74887C20;
	Sat, 23 May 2020 21:35:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 078D51BF2B4
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 21:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 045E5848AB
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 21:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b98_ntCGDEaf for <devel@linuxdriverproject.org>;
 Sat, 23 May 2020 21:35:32 +0000 (UTC)
X-Greylist: delayed 00:06:04 by SQLgrey-1.7.6
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31260848A0
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 21:35:32 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id k186so13166321ybc.19
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 14:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=KyJv4MxnbuJAFDTG+VPNiW2cvu5uD75l264G/8mVLTo=;
 b=hHrhbWrk++yW+KWRMlojrxqgdo15EuM0aARn9mwzDSBsmsXM/3/TVgd+bz6jjTZKWs
 Y2JSFcl1aRrkmmtyZkY+Dk973mkQke+xk/Kg3Xtpx+4AnwpzeSrNQULkS7BIOKkciTNP
 S2sstg4VK/pPg/Z1QxmhlB8ySBSYiDN8CLv2JghVzXY7PdDM9jKMS3PeGPaDr5WSEW6S
 ciKUwRAFIN4cE2d7Q3JldRjPBgKtMBgIESFBkXd3LlqTg2tmHM33ma6lpmKDSxtqOVmi
 G2AInJgLvgQw98Eqo19l33qLDhMPJlxIyXGPCxVUK9WCW9LQyL1AVxM+4X9XYITAXy1d
 M5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=KyJv4MxnbuJAFDTG+VPNiW2cvu5uD75l264G/8mVLTo=;
 b=nAkizw+G93lVbQLDCS7NR1MuR/1+qSTbwie2gx1r9gwg6yq1RJ0RY9S6DjltdndUjR
 eW7QPuZYCXUSdjlfm2/w/0cgymgtvyIJTn/dmIOcpGLiDsq5I5jTC8CatL5KnluqC5ZK
 uFk0+ciCIcsxn9orXqABOfqm5fn+QCR3lJyp6BqZ/RpzBbcA6+yLRhcFsX2R7LbkFc10
 bKKDKv+bOP11qBfDnRwISj//5MnrQEUsfKIvzGGdMyJ00Fj8ZBWZz8wsn6Ja87wNkMnw
 mKt0nTOEQ/Ujlv6S+el15/dXs22M+xNTxHxyXwoTlVsNLhPdFg3B+oClA8MZg1U3jf19
 W99A==
X-Gm-Message-State: AOAM531DzfjOB2vKafmfaXlI2EQCbWzGwBE9U9mcRBP2I1N/v4xJ3Nuq
 G3oPRoN/RYAGwVJD71Fnr/sYmc8etheM
X-Google-Smtp-Source: ABdhPJyA0SF/qrSy1pgHfbm255UVkYs7n14NlGtA2YTZ9FR1px4Ml9w8zZl1Dlyk/WGoNJWXqzNz30dUPQ8U
X-Received: by 2002:a25:8509:: with SMTP id w9mr30903760ybk.500.1590269366933; 
 Sat, 23 May 2020 14:29:26 -0700 (PDT)
Date: Sat, 23 May 2020 22:29:19 +0100
Message-Id: <20200523212919.33181-1-pterjan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH] staging: rtl8723bs: Use shared header constants
From: Pascal Terjan <pterjan@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
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
Cc: Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is one of the 9 drivers redefining rfc1042_header.

Signed-off-by: Pascal Terjan <pterjan@google.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 15 ++++++---------
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  2 --
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  5 +++--
 3 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 5245098b9ecf..dc58822924b4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -10,14 +10,11 @@
 #include <rtw_debug.h>
 #include <linux/jiffies.h>
 #include <rtw_recv.h>
+#include <net/cfg80211.h>
 
 static u8 SNAP_ETH_TYPE_IPX[2] = {0x81, 0x37};
 static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
-u8 rtw_rfc1042_header[] = { 0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00 };
-/* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
-u8 rtw_bridge_tunnel_header[] = { 0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8 };
-
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
 
 void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
@@ -1625,11 +1622,11 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
 	/* convert hdr + possible LLC headers into Ethernet header */
 	/* eth_type = (psnap_type[0] << 8) | psnap_type[1]; */
-	if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
-		(memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2)) &&
-		(memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
-		/* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
-		 !memcmp(psnap, rtw_bridge_tunnel_header, SNAP_SIZE)) {
+	if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
+	     memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
+	     memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2)) ||
+	    /* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
+	    !memcmp(psnap, bridge_tunnel_header, SNAP_SIZE)) {
 		/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
 		bsnaphdr = true;
 	} else
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 98c3e92245b7..a851b818ef0e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -38,8 +38,6 @@
 #define RX_MAX_QUEUE				2
 
 #define MAX_SUBFRAME_COUNT	64
-extern u8 rtw_rfc1042_header[];
-extern u8 rtw_bridge_tunnel_header[];
 
 /* for Rx reordering buffer control */
 struct recv_reorder_ctrl
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 2a7b9922b1d4..eb4d1c3008fe 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -9,6 +9,7 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 #include <linux/jiffies.h>
+#include <net/cfg80211.h>
 
 void rtw_os_free_recvframe(union recv_frame *precvframe)
 {
@@ -71,9 +72,9 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 	eth_type = RTW_GET_BE16(&sub_skb->data[6]);
 
 	if (sub_skb->len >= 8 &&
-		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
+		((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
 		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
-		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
+		 !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 		/*
 		 * remove RFC1042 or Bridge-Tunnel encapsulation and replace
 		 * EtherType
-- 
2.27.0.rc0.183.gde8f92d652-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
