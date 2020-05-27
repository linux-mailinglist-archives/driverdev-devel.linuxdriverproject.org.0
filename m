Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9F41E5068
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 23:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4658824A5C;
	Wed, 27 May 2020 21:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id telRhI2SxfHn; Wed, 27 May 2020 21:22:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 131B42041C;
	Wed, 27 May 2020 21:22:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BECC51BF40A
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 21:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B68B0203C2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 21:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5MTruSE8WZN for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 21:22:19 +0000 (UTC)
X-Greylist: delayed 00:30:58 by SQLgrey-1.7.6
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by silver.osuosl.org (Postfix) with ESMTPS id D74FD203B2
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 21:22:18 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id y189so26198408ybc.14
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 14:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=DdLsrZGy87gL5PPAo+OzWKykA6lM0LgtmgPWJCOmcHk=;
 b=KBI9y4h2V0uHMOfFBPfbiog35DiwugIstTan2mISIhH8KQdcT4+CQos3HKFsPNfGwu
 wtTmEB6XcMsc0iHcHGNhVbGWxlv0uWBgO9Y/GtJ/+NRJSmlCdktSzjtZItvEGZuKntag
 zVEZUl5t8RlO/uyCIXk/DjRJWteYdnJL0LPlALsqoikETA3UHngduPwUCFVmwmZ1rMcz
 4Fz9Ix2v3t8ilmjrBRK/P5im8hYp7yGffAS6kDihg/D5YEPVpMeNaWXB0YbmVaDoP5Gh
 lrll8YobGEPqfKMN5sBgkb3QnGzzfN2NthWtmhfRLGMvRLK4k0oYtzSMQEkSX/rkmQav
 4zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=DdLsrZGy87gL5PPAo+OzWKykA6lM0LgtmgPWJCOmcHk=;
 b=b0kQXid+qWYaiTCpTP6GxWuQ/aS+9cNREHqozQ//BloMhxtk8nVLk/R7StQu4uj6h6
 4ip+weG5+XE2mEd6OpaY9HHUQzFvA9xahv/hIAoH/A2c3UYYx4CebXgPkp5Tev09jdCQ
 u3Skgmk+p5PqNW/kmCSFPjasNuqmn+guEQGCtHnmlYIPsOfa3QeAN/advvwN5RCInPH2
 gB5wPE5iXqo2xC4X9SNMMto4jJHLSEPYPdp+Y0WnNflBINNzkUGwDA+bpqnzdPyAAbkt
 ogTqa3qDjhHFi8gpiTVmRyIgKZl2uLiSpr3zFd7cnCLaMZ0UymWD1KYgMjqaEDBUMHYq
 uMUg==
X-Gm-Message-State: AOAM5318tKF9/klP0qmkxIva8UW3leHrsorj7ouWO5yqzu/YSrt6675N
 wOH7q4Q3w7uIo8iJHWcJA6VLxS2fuvdP
X-Google-Smtp-Source: ABdhPJwqrxGl9Q21WiHWkTy/Cz9smW2aDm7R64tvq70OTi1aKuKjSQeoGTICzcGl93U27BBxS8lewg04umpI
X-Received: by 2002:a25:7496:: with SMTP id p144mr25973ybc.112.1590612679064; 
 Wed, 27 May 2020 13:51:19 -0700 (PDT)
Date: Wed, 27 May 2020 21:51:00 +0100
In-Reply-To: <20200527194811.GF30374@kadam>
Message-Id: <20200527205100.35794-1-pterjan@google.com>
Mime-Version: 1.0
References: <20200527194811.GF30374@kadam>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH v2] staging: rtl8723bs: Use common packet header constants
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

This driver contains a local version of the rfc1042 header and bridge
tunnel header constants which are available from cfg80211.h, switch to
those.

Signed-off-by: Pascal Terjan <pterjan@google.com>
---
v2: improve description and drop confusing cosmetic changes

 drivers/staging/rtl8723bs/core/rtw_recv.c     | 9 +++------
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 2 --
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 5 +++--
 3 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 5245098b9ecf..7e1da0e35812 100644
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
+	if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
 		(memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2)) &&
 		(memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
 		/* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
-		 !memcmp(psnap, rtw_bridge_tunnel_header, SNAP_SIZE)) {
+		 !memcmp(psnap, bridge_tunnel_header, SNAP_SIZE)) {
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
