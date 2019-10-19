Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E0CDD8F7
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EDAE85EAC;
	Sat, 19 Oct 2019 14:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weZl2lUwA3oJ; Sat, 19 Oct 2019 14:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AC5785EA4;
	Sat, 19 Oct 2019 14:08:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04AD11BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA3A385727
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewo0g+kTV4bP for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1C468557B
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:51 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y135so11279296wmc.1
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 07:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KnTNLw2zsQ+5FjLMZo6V27teAR8omoAiJIuKZyNFMzg=;
 b=Ada3B9dY1uk12JQ19eWuDMptg1aPGMH0mO3rVcZ8Q0JJ0dJfgYJlGo64uNHpgbj+bS
 sHMFewjUMl7apRYWPCrz682VekIr/DxSmGu+HZ3nTzA3apqlFW7twjiqhaRIiBc4SFK0
 3V+RvOE13cJm3Xuc8NdauZ0Jc3HBhciuA2XeXwIPd9yFSMLyk6ebn1Zs1eSsDrNxt1LX
 p/4ypmiwwGvGjH4C9LClKX1bEgQhaBPTnYEaBcZYVkwYMEdC5zT1YUI7uc9Sh4eDMHHn
 vzAEaU4J/DkTJlMvwg4haXWG+SM1XsDGBoq1ws45kbkB4o/BAs6Dj5VhmTNIvDiF7mcF
 cQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KnTNLw2zsQ+5FjLMZo6V27teAR8omoAiJIuKZyNFMzg=;
 b=SXTDYebSGC5amM8qzrwJHp+He55A8OJ/t1LdW4k3gsRgMEmTfDhMMTiT4hKokWgTiu
 z68aGlUbVSTHRofW98iCB3y8+7E4Su4aTMGXe2WwHc6Wus41FOLqBr5wHdMXojnb1+K2
 kU5gmFb6qDwitKCk054eLQh17/NFfbWBlW7oc2IYrRx+MDTe3UhxsBoaVnJpv6LXHpjH
 hVbZqiEUvwK0Eb/Mkns0FW0FDLdBb7nHmloEUmE5KlMaQHBllwxt2HqNpIRXdUQYfHM6
 UlAZhzekQ5l1/O5QcyXw4hhyxGoKowNXsEIo5P34JxPBkz6wiheQ00gH1gWDanI8EpC4
 +nbw==
X-Gm-Message-State: APjAAAXEQpWr8DiM2ZdVBHJ7kz9peI2XLqCVq0gMjA/oUv7oZInp6q/i
 tDzKx6fXFFa7apXiGuGhUA==
X-Google-Smtp-Source: APXvYqyyZFhcAjD+pH849bBLedrj+1FxuREkCnHl+gYSWWl2csv5twqCEmCZkzI3wEALyplnRMejWA==
X-Received: by 2002:a1c:f417:: with SMTP id z23mr12232552wma.77.1571494070148; 
 Sat, 19 Oct 2019 07:07:50 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 07:07:49 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 3/5] staging: wfx: fix warnings of logical continuation
Date: Sat, 19 Oct 2019 15:07:17 +0100
Message-Id: <20191019140719.2542-4-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
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
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix check warnings of logical continuations
should be on the previous line.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_rx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 522592d71aac..52fb0f255dcd 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -163,14 +163,14 @@ void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg,
 	}
 
 	/* Filter block ACK negotiation: fully controlled by firmware */
-	if (ieee80211_is_action(frame->frame_control)
-	    && arg->rx_flags.match_uc_addr
-	    && mgmt->u.action.category == WLAN_CATEGORY_BACK)
+	if (ieee80211_is_action(frame->frame_control) &&
+	    arg->rx_flags.match_uc_addr &&
+	    mgmt->u.action.category == WLAN_CATEGORY_BACK)
 		goto drop;
-	if (ieee80211_is_beacon(frame->frame_control)
-	    && !arg->status && wvif->vif
-	    && ether_addr_equal(ieee80211_get_SA(frame),
-				wvif->vif->bss_conf.bssid)) {
+	if (ieee80211_is_beacon(frame->frame_control) &&
+	    !arg->status && wvif->vif &&
+	    ether_addr_equal(ieee80211_get_SA(frame),
+			     wvif->vif->bss_conf.bssid)) {
 		const u8 *tim_ie;
 		u8 *ies = mgmt->u.beacon.variable;
 		size_t ies_len = skb->len - (ies - skb->data);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
