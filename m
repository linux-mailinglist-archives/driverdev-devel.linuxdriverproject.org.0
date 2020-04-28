Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD51BB898
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 10:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AABE8623B;
	Tue, 28 Apr 2020 08:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0S7XCIZ14JA; Tue, 28 Apr 2020 08:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51C2086241;
	Tue, 28 Apr 2020 08:14:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 249451BF312
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 213B6864C1
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oh2UyM3nIPoJ for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 08:14:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C33AE854B3
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 08:14:15 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jTLNc-000xL6-HI; Tue, 28 Apr 2020 10:14:12 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: remove mgmt_frame_register method
Date: Tue, 28 Apr 2020 10:14:02 +0200
Message-Id: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Johannes Berg <johannes.berg@intel.com>,
 Sergey Matyukevich <geomatsi@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Johannes Berg <johannes.berg@intel.com>

This was changed in cfg80211, so having it broke things, but
there's no need to adjust since it's an empty implementation.
Just remove it.

Fixes: 6cd536fe62ef ("cfg80211: change internal management frame registration API")
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 24 -------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 1ba85a43f05a..cd31ad2b8a7b 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -3163,29 +3163,6 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 	return ret;
 }
 
-static void cfg80211_rtw_mgmt_frame_register(struct wiphy *wiphy,
-	struct wireless_dev *wdev,
-	u16 frame_type, bool reg)
-{
-	struct net_device *ndev = wdev_to_ndev(wdev);
-	struct adapter *adapter;
-
-	if (ndev == NULL)
-		goto exit;
-
-	adapter = (struct adapter *)rtw_netdev_priv(ndev);
-
-#ifdef DEBUG_CFG80211
-	DBG_871X(FUNC_ADPT_FMT" frame_type:%x, reg:%d\n", FUNC_ADPT_ARG(adapter),
-		frame_type, reg);
-#endif
-
-	if (frame_type != (IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_REQ))
-		return;
-exit:
-	return;
-}
-
 #if defined(CONFIG_PNO_SUPPORT)
 static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy,
 		struct net_device *dev,
@@ -3397,7 +3374,6 @@ static struct cfg80211_ops rtw_cfg80211_ops = {
 	.change_bss = cfg80211_rtw_change_bss,
 
 	.mgmt_tx = cfg80211_rtw_mgmt_tx,
-	.mgmt_frame_register = cfg80211_rtw_mgmt_frame_register,
 
 #if defined(CONFIG_PNO_SUPPORT)
 	.sched_scan_start = cfg80211_rtw_sched_scan_start,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
