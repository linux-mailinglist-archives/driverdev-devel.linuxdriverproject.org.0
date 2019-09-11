Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EF1AFE16
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 15:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5C5487D09;
	Wed, 11 Sep 2019 13:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8uCSSRCgiNw; Wed, 11 Sep 2019 13:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A34A87CDB;
	Wed, 11 Sep 2019 13:51:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FDE11BF291
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 13:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 697F92026D
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 13:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIzkPvlAHodz for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 13:51:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 63FC92014B
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 13:51:18 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id d15so13689399pfo.10
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 06:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6+7D6brPxNe6NMYY1ZAPl6VyxRRO+xo6C8u3uXbZx6M=;
 b=VD4MTtl8u2SxETR10J2UZRuhAqhVt4GoWh/KfXPYVt8TdGwY/0P3XFIqcHqUF1GQ8H
 hLoFqYsLJ+H2Z+dNmCbmWe8ixDO2PuKlrw9mcV84wdjX293JgX0vqyVL+RzNziCip18u
 4cRbXJ5UHQuevOqgpIcdhSwuOedPA2EFMwxMR6DzX4cV3TNE3P2Jj/4nLjRL1h4Omz1A
 Lt9ERW9BS0SIXC/Ac6jjILqxCPuiCZvThiXrMxKLH5IgdBDYzoXNc93mDexFY/Gqehet
 PrHjCBQ3QGElV7PsYjvfF427njbiNTps9w1om0BDumElnio/r16n2+GSdy3fnhgFyAfc
 Grjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6+7D6brPxNe6NMYY1ZAPl6VyxRRO+xo6C8u3uXbZx6M=;
 b=hM14ksf+Zw/t/IyfzTWNLpmwkjGkFYf1jOTSQqVprL3Us//5+kh1AGDKdlLn0+4gUX
 hKv99QhBtTSH8PpzVJUEQRayF5JdTz6Y/lOt+lYYe7yUSSqjXRQEYTye5pNUK0mjAqxG
 bQtjNR9wy+xojXJ2XtDpvMe388qqvOUjQpH1n//Lzwl7nfQ+LDzbHa15VOSuLfEx6Xkj
 VUra1ssxDeqN3JbXS6DFw3nPuSjZYG59xVDpS+8O2i91IZqyDfrMKcGF33tL+a2GVTAb
 GpaiH031JT7enhagDPT+VdaPuKGdVJGn0n9N81ULKQboIFkkfSuReRJcOQzfGSYMFBUX
 quzQ==
X-Gm-Message-State: APjAAAUtBxEQ2eFjYWueotXWLVIHY4TgtLOPf3olqOP7KA+5cBBc7zQ/
 dyXP56beVGa5BHnEzCW+5Gw=
X-Google-Smtp-Source: APXvYqxNg7o5M0NbeVb84/MYa02BbG8SOirQOAY5pxTlTXvzW8Pzw88vf1Oqu2mu04QLbDUQesvmiA==
X-Received: by 2002:a62:8647:: with SMTP id x68mr8937296pfd.44.1568209877977; 
 Wed, 11 Sep 2019 06:51:17 -0700 (PDT)
Received: from SARKAR ([1.186.0.68])
 by smtp.gmail.com with ESMTPSA id s18sm28509092pfh.0.2019.09.11.06.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 06:51:17 -0700 (PDT)
Date: Wed, 11 Sep 2019 19:21:13 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Eric Anholt <eric@anholt.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911135112.GA5569@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 linux-rpi-kernel@lists.infradead.org, Dominic Braun <inf.braun@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When the number of bytes to be printed exceeds the limit snprintf
returns the number of bytes that would have been printed (if there was
no truncation). This might cause issues, hence use scnprintf which
returns the actual number of bytes printed to buffer always

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 38 +++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 183f5cf887e0..56a23a297fa4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3322,13 +3322,13 @@ vchiq_dump_shared_state(void *dump_context, struct vchiq_state *state,
 	char buf[80];
 	int len;
 
-	len = snprintf(buf, sizeof(buf),
+	len = scnprintf(buf, sizeof(buf),
 		"  %s: slots %d-%d tx_pos=%x recycle=%x",
 		label, shared->slot_first, shared->slot_last,
 		shared->tx_pos, shared->slot_queue_recycle);
 	vchiq_dump(dump_context, buf, len + 1);
 
-	len = snprintf(buf, sizeof(buf),
+	len = scnprintf(buf, sizeof(buf),
 		"    Slots claimed:");
 	vchiq_dump(dump_context, buf, len + 1);
 
@@ -3336,7 +3336,7 @@ vchiq_dump_shared_state(void *dump_context, struct vchiq_state *state,
 		struct vchiq_slot_info slot_info =
 						*SLOT_INFO_FROM_INDEX(state, i);
 		if (slot_info.use_count != slot_info.release_count) {
-			len = snprintf(buf, sizeof(buf),
+			len = scnprintf(buf, sizeof(buf),
 				"      %d: %d/%d", i, slot_info.use_count,
 				slot_info.release_count);
 			vchiq_dump(dump_context, buf, len + 1);
@@ -3344,7 +3344,7 @@ vchiq_dump_shared_state(void *dump_context, struct vchiq_state *state,
 	}
 
 	for (i = 1; i < shared->debug[DEBUG_ENTRIES]; i++) {
-		len = snprintf(buf, sizeof(buf), "    DEBUG: %s = %d(%x)",
+		len = scnprintf(buf, sizeof(buf), "    DEBUG: %s = %d(%x)",
 			debug_names[i], shared->debug[i], shared->debug[i]);
 		vchiq_dump(dump_context, buf, len + 1);
 	}
@@ -3357,11 +3357,11 @@ vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 	int len;
 	int i;
 
-	len = snprintf(buf, sizeof(buf), "State %d: %s", state->id,
+	len = scnprintf(buf, sizeof(buf), "State %d: %s", state->id,
 		conn_state_names[state->conn_state]);
 	vchiq_dump(dump_context, buf, len + 1);
 
-	len = snprintf(buf, sizeof(buf),
+	len = scnprintf(buf, sizeof(buf),
 		"  tx_pos=%x(@%pK), rx_pos=%x(@%pK)",
 		state->local->tx_pos,
 		state->tx_data + (state->local_tx_pos & VCHIQ_SLOT_MASK),
@@ -3369,13 +3369,13 @@ vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 		state->rx_data + (state->rx_pos & VCHIQ_SLOT_MASK));
 	vchiq_dump(dump_context, buf, len + 1);
 
-	len = snprintf(buf, sizeof(buf),
+	len = scnprintf(buf, sizeof(buf),
 		"  Version: %d (min %d)",
 		VCHIQ_VERSION, VCHIQ_VERSION_MIN);
 	vchiq_dump(dump_context, buf, len + 1);
 
 	if (VCHIQ_ENABLE_STATS) {
-		len = snprintf(buf, sizeof(buf),
+		len = scnprintf(buf, sizeof(buf),
 			"  Stats: ctrl_tx_count=%d, ctrl_rx_count=%d, "
 			"error_count=%d",
 			state->stats.ctrl_tx_count, state->stats.ctrl_rx_count,
@@ -3383,7 +3383,7 @@ vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 		vchiq_dump(dump_context, buf, len + 1);
 	}
 
-	len = snprintf(buf, sizeof(buf),
+	len = scnprintf(buf, sizeof(buf),
 		"  Slots: %d available (%d data), %d recyclable, %d stalls "
 		"(%d data)",
 		((state->slot_queue_available * VCHIQ_SLOT_SIZE) -
@@ -3416,7 +3416,7 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 	char buf[80];
 	int len;
 
-	len = snprintf(buf, sizeof(buf), "Service %u: %s (ref %u)",
+	len = scnprintf(buf, sizeof(buf), "Service %u: %s (ref %u)",
 		service->localport, srvstate_names[service->srvstate],
 		service->ref_count - 1); /*Don't include the lock just taken*/
 
@@ -3428,17 +3428,17 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 		int tx_pending, rx_pending;
 
 		if (service->remoteport != VCHIQ_PORT_FREE) {
-			int len2 = snprintf(remoteport, sizeof(remoteport),
+			int len2 = scnprintf(remoteport, sizeof(remoteport),
 				"%u", service->remoteport);
 
 			if (service->public_fourcc != VCHIQ_FOURCC_INVALID)
-				snprintf(remoteport + len2,
+				scnprintf(remoteport + len2,
 					sizeof(remoteport) - len2,
 					" (client %x)", service->client_id);
 		} else
 			strcpy(remoteport, "n/a");
 
-		len += snprintf(buf + len, sizeof(buf) - len,
+		len += scnprintf(buf + len, sizeof(buf) - len,
 			" '%c%c%c%c' remote %s (msg use %d/%d, slot use %d/%d)",
 			VCHIQ_FOURCC_AS_4CHARS(fourcc),
 			remoteport,
@@ -3455,7 +3455,7 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 		rx_pending = service->bulk_rx.local_insert -
 			service->bulk_rx.remote_insert;
 
-		len = snprintf(buf, sizeof(buf),
+		len = scnprintf(buf, sizeof(buf),
 			"  Bulk: tx_pending=%d (size %d),"
 			" rx_pending=%d (size %d)",
 			tx_pending,
@@ -3468,7 +3468,7 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 		if (VCHIQ_ENABLE_STATS) {
 			vchiq_dump(dump_context, buf, len + 1);
 
-			len = snprintf(buf, sizeof(buf),
+			len = scnprintf(buf, sizeof(buf),
 				"  Ctrl: tx_count=%d, tx_bytes=%llu, "
 				"rx_count=%d, rx_bytes=%llu",
 				service->stats.ctrl_tx_count,
@@ -3477,7 +3477,7 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				service->stats.ctrl_rx_bytes);
 			vchiq_dump(dump_context, buf, len + 1);
 
-			len = snprintf(buf, sizeof(buf),
+			len = scnprintf(buf, sizeof(buf),
 				"  Bulk: tx_count=%d, tx_bytes=%llu, "
 				"rx_count=%d, rx_bytes=%llu",
 				service->stats.bulk_tx_count,
@@ -3486,7 +3486,7 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				service->stats.bulk_rx_bytes);
 			vchiq_dump(dump_context, buf, len + 1);
 
-			len = snprintf(buf, sizeof(buf),
+			len = scnprintf(buf, sizeof(buf),
 				"  %d quota stalls, %d slot stalls, "
 				"%d bulk stalls, %d aborted, %d errors",
 				service->stats.quota_stalls,
@@ -3562,9 +3562,9 @@ void vchiq_log_dump_mem(const char *label, u32 addr, const void *void_mem,
 
 		for (offset = 0; offset < 16; offset++) {
 			if (offset < num_bytes)
-				s += snprintf(s, 4, "%02x ", mem[offset]);
+				s += scnprintf(s, 4, "%02x ", mem[offset]);
 			else
-				s += snprintf(s, 4, "   ");
+				s += scnprintf(s, 4, "   ");
 		}
 
 		for (offset = 0; offset < 16; offset++) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
