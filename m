Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F75C225E84
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 14:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E676821543;
	Mon, 20 Jul 2020 12:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gat-vV9GGd7R; Mon, 20 Jul 2020 12:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62BDA2050E;
	Mon, 20 Jul 2020 12:28:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 571181BF3BB
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 12:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 504A62049F
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 12:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYfAELP-h2ff for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 12:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5271720495
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 12:28:29 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k4so8610088pld.12
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 05:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=46g0md08FbibN0qvjbam7/hKgpoq0JppzR7flQbfdBU=;
 b=EfRmKkxHOWfikZE44CN4QlMiLj5kpq2EFiJ4toWOM1ix6S8crutcizHhUS+iJ9RxNK
 RxNPzFTn2vbnlxfFrJsVqOsMZ07IoOp5Nn2QXU2qA5H6kcwdDzUg2cM0ZisGujol8eOH
 N10NIbwL+/wLlx8v/UEOQQNaculJ7OzCFmc24ivrndntQ7eBAxBzHdfcUI+MyM+QrNZE
 J3Wi11yDc0JIGID01I3awUgxu0IMtTIKGDgp5EeI9s8mp2meIFgTagcBxy5/UKX8gcg5
 mvQN8hjipfTPBaBeYjQPIYKhN5NYQ3ZxUwM828//4+lx4/GqJmuhzJ7n0FANhH9Rl2+2
 6nAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=46g0md08FbibN0qvjbam7/hKgpoq0JppzR7flQbfdBU=;
 b=T/xncz5EHATEuf0iOtrw+7vHzgv9OHqr8LL6CuZ9gC25z0u726LWRzvBhGIB20Err5
 dZJLLgYqL7rX402YVZPB3ShamUgeYsHZGuf90L3QUw8BN7hegaVtq+04t+VRxzWP0zV3
 MqwBPdyJs/tfcYgt7hRoMMHOOPUh5wIHkRl5HWAMxI89c/kpjOP18FweZGgZaS+6nVvW
 WbrkqOWFuip4tV36bM+Xu7jJbUgHD7nWk/qJVc9tNEsp+ml4DPppDhCJJgDXxY7fEySB
 dcQ3Uc7jQALCLJB0/lO05dkg6wmVb8zJzxXVLIjr64JAH7BToL/cLPklPxjH6ZuAM1tJ
 3u3w==
X-Gm-Message-State: AOAM533yAb7sM1rhcVhG2e0BtJgtvgf+aLX8x0Angw7O+6qvgHLwGff1
 aG4JXS/+2n5Uoyk2hM/Qon8=
X-Google-Smtp-Source: ABdhPJxQm2TigPw2QLtM43O9otU9xZ24c8uo85F7uwiP+7//BZDCqXz9QTh7JXqfHV9KsknnaG+Qig==
X-Received: by 2002:a17:90b:247:: with SMTP id
 fz7mr23097144pjb.17.1595248109000; 
 Mon, 20 Jul 2020 05:28:29 -0700 (PDT)
Received: from localhost.localdomain ([106.51.107.133])
 by smtp.gmail.com with ESMTPSA id b82sm16708179pfb.215.2020.07.20.05.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 05:28:28 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Fix alignment to match open parenthesis
Date: Mon, 20 Jul 2020 17:58:17 +0530
Message-Id: <20200720122817.31164-1-sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the file cfg80211.c to avoid
the checkpatch.pl warning:
	CHECK: Alignment should match open parenthesis

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index fac38c842ac5..759e475e303c 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,
 		freq = ieee80211_channel_to_frequency(msg2.dschannel.data,
 						      NL80211_BAND_2GHZ);
 		bss = cfg80211_inform_bss(wiphy,
-			ieee80211_get_channel(wiphy, freq),
-			CFG80211_BSS_FTYPE_UNKNOWN,
-			(const u8 *)&msg2.bssid.data.data,
-			msg2.timestamp.data, msg2.capinfo.data,
-			msg2.beaconperiod.data,
-			ie_buf,
-			ie_len,
-			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
-			GFP_KERNEL
-		);
+					  ieee80211_get_channel(wiphy, freq),
+					  CFG80211_BSS_FTYPE_UNKNOWN,
+					  (const u8 *)&msg2.bssid.data.data,
+					  msg2.timestamp.data, msg2.capinfo.data,
+					  msg2.beaconperiod.data,
+					  ie_buf,
+					  ie_len,
+					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+					  GFP_KERNEL);
 
 		if (!bss) {
 			err = -ENOMEM;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
