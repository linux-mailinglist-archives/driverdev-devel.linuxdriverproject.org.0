Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C69C201375
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 18:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4D3C89A16;
	Fri, 19 Jun 2020 16:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id trc0iwLxO0R1; Fri, 19 Jun 2020 16:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 316F989A02;
	Fri, 19 Jun 2020 16:06:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58B2A1BF27A
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 16:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 548AB899F8
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 16:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAMMHPkHinPo for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 16:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1DF42899E7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 16:05:58 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id x25so8012021edr.8
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 09:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=osi+7kegHQUhLjJCtI4D4dYsD7Tnr4PgL85qHMsaxOY=;
 b=HP2EZNf4A1EVG7NLnAfafrXxKY2QlHTRc7+0DkPnBlREWkBZ+JUC/6X5c8vzCTzEcN
 jtqdKfzTls4uekWytl18VNuEsonzP4ji9CDcmzKVRiLp8DFA8Z8VLjWhdH8GSXEbWXkz
 fCwYdPNXierqrjWx97YmEuA4pbWoPIjlLJ33Lfq+nuQGa8AHwh19CjK63qVqSS0pXLSl
 LCqTfjYU6meqY2yaFll0okiIzJYR1hTT6x6NxHaTyHTm0Ngp3i7h34KfURb8QyjiRd4e
 AASuDrBWHIaU7gtEKHS5fedKx+LEZm3MFYXSG417OtSl+56Qa3AyGqMjsy9z5aaZkwIh
 I3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=osi+7kegHQUhLjJCtI4D4dYsD7Tnr4PgL85qHMsaxOY=;
 b=FE39cbEBGR/JEoPlJ+7+pCzDmuAKEdSeD8CyeH+EvXhmGXIofVrwdOzVcgIln4jwLp
 36RQK/do0nDjtf4r+SNuKiI80rUXjcq3b+cmhzXGrJ19tWcnxeARqEEGC2lCxxGt5ScG
 JZEh2RROU7yuSdqvPFH9q/2dRSp+/799wJ0FEOI0+IlBDQ+wQ+DwWErI6BdzqbtYIWgZ
 ud7NiGNPCwMK/aSUb8W3tIpc3aHPKCUKGOxWQEfjd5Es4KQ9b00rmlsvOuOVsKFx9EqR
 /O7WEKXmqgP1lZFSxa7+1xehkg0sTTXM2lYAivNufxQkQGX3xbKoELg7P2Ix9T9q55yP
 R5yA==
X-Gm-Message-State: AOAM531JKqNvpBgCuNsqfwMabONDKGMjo+sNE8DxqQoyZJMuBlIL0bg9
 8H1EAWDBIRyYZ2XST+YQaVQ=
X-Google-Smtp-Source: ABdhPJwUJgBnLelDqqBVTLpTKWXVb6j1Ab5QhWAYa9AwdkoiMBzgtNrWAvKq/HY4LJGAZ3TxgRZ4xw==
X-Received: by 2002:a50:f983:: with SMTP id q3mr4227018edn.259.1592582756391; 
 Fri, 19 Jun 2020 09:05:56 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-242.178.006.pools.vodafone-ip.de. [178.6.252.242])
 by smtp.gmail.com with ESMTPSA id dj26sm4931780edb.4.2020.06.19.09.05.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 09:05:55 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: use common packet header constants
Date: Fri, 19 Jun 2020 18:03:28 +0200
Message-Id: <20200619160328.22776-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver replicates the definitions of rfc1042_header and
bridge_tunnel_header available from cfg80211.h. Use the common
ones from cfg80211.h.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index a036ef104198..0257e56b551a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -15,6 +15,7 @@
 #include <mon.h>
 #include <wifi.h>
 #include <linux/vmalloc.h>
+#include <net/cfg80211.h>
 
 #define ETHERNET_HEADER_SIZE	14	/*  Ethernet Header Length */
 #define LLC_HEADER_SIZE			6	/*  LLC Header Length */
@@ -22,15 +23,6 @@
 static u8 SNAP_ETH_TYPE_IPX[2] = {0x81, 0x37};
 static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
-/* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
-static u8 rtw_bridge_tunnel_header[] = {
-	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
-};
-
-static u8 rtw_rfc1042_header[] = {
-	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
-};
-
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
 
 void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
@@ -1277,10 +1269,10 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 	psnap = (struct ieee80211_snap_hdr *)(ptr+pattrib->hdrlen + pattrib->iv_len);
 	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
 	/* convert hdr + possible LLC headers into Ethernet header */
-	if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
+	if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
 	     memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
 	     memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2)) ||
-	     !memcmp(psnap, rtw_bridge_tunnel_header, SNAP_SIZE)) {
+	     !memcmp(psnap, bridge_tunnel_header, SNAP_SIZE)) {
 		/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
 		bsnaphdr = true;
 	} else {
@@ -1560,9 +1552,9 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 		/* convert hdr + possible LLC headers into Ethernet header */
 		eth_type = get_unaligned_be16(&sub_skb->data[6]);
 		if (sub_skb->len >= 8 &&
-		    ((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
 			  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
-			 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
+			 !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
 			skb_pull(sub_skb, SNAP_SIZE);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src, ETH_ALEN);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
