Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A465F2F9748
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 02:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2FA886796;
	Mon, 18 Jan 2021 01:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T8FInfuliOCO; Mon, 18 Jan 2021 01:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABDEC86760;
	Mon, 18 Jan 2021 01:19:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED15C1BF3BF
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DDD562039C
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 01:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gIUx2asmfGkE for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 42FF7203F2
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 01:19:35 +0000 (UTC)
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTPS id 4DJtyG5Vv9z8t4L;
 Mon, 18 Jan 2021 02:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1610932246; bh=tOU5+u5r+PpeOQ4Ja2zy94y275lWs5rKsrFHWuB9Amc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=nVahcojRcQQBJ+t15c0nNZJbP63aJQ3idIU/B7zXL1SCSyXFy9pNrM/Ktsi14rTGl
 eCmV6fQGwsWP4hMijqemb3LoVYwLB5+L82c5fc0oizDoBhLgcc70h0hInwp15NP/tN
 8sB7bTdYt1GemHkD4MNOrNBimjvibIPNRQqZoLTE2N6wL63M5JCSk8X6Z0xmBf8Uj7
 HUT1maxlYmkNw+ksrTDEp4Klht19IFO8SPShWktohaV9c3X7pzP3h+MTPEtSCFULno
 tJbK/aXep3R+USTbglJpxK4Nx2m5d77++C4But75UN8kA8Ket3I/s+TeFUyWnLQzrn
 /3DXO4gZD7rGg==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 2001:a62:19b2:a701:a9ea:94f8:dbd1:5695
Received: from shaun-PC.fritz.box (unknown
 [IPv6:2001:a62:19b2:a701:a9ea:94f8:dbd1:5695])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX1+YfPOzNh6NBtIIVDVIXWNyBXjHSf2OTDQ=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 4DJtyD1mKVz8t3m;
 Mon, 18 Jan 2021 02:10:44 +0100 (CET)
From: Johannes Czekay <johannes.czekay@fau.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] wlan-ng: clean up line length
Date: Mon, 18 Jan 2021 02:09:54 +0100
Message-Id: <20210118010955.48663-5-johannes.czekay@fau.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210118010955.48663-1-johannes.czekay@fau.de>
References: <20210118010955.48663-1-johannes.czekay@fau.de>
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
Cc: devel@driverdev.osuosl.org, jbwyatt4@gmail.com, gustavo@embeddedor.com,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org, rkovhaev@gmail.com,
 johannes.czekay@fau.de, nicolai.fischer@fau.de, hqjagain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch cleans up all remaining line length related warnings.

Signed-off-by: Johannes Czekay <johannes.czekay@fau.de>
Co-developed-by: Nicolai Fischer <nicolai.fischer@fau.de>
Signed-off-by: Nicolai Fischer <nicolai.fischer@fau.de>
---
 drivers/staging/wlan-ng/cfg80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index bdb1e6677cc7..0e44a0f73a6a 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -365,7 +365,8 @@ static int prism2_scan(struct wiphy *wiphy,
 					  msg2.beaconperiod.data,
 					  ie_buf,
 					  ie_len,
-					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+					  /* Conversion to signed type */
+					  (msg2.signal.data - 65536) * 100,
 					  GFP_KERNEL);
 
 		if (!bss) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
