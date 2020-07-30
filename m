Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E81E923353F
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 17:23:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5828203D9;
	Thu, 30 Jul 2020 15:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oL54eLZOHvRW; Thu, 30 Jul 2020 15:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 169B7203C2;
	Thu, 30 Jul 2020 15:23:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CAEB1BF3F6
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 15:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6970386B59
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 15:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2xc3-h1wSPJ for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 15:23:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AD3D786B4F
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 15:23:15 +0000 (UTC)
IronPort-SDR: a98/mxujJ5YucE7+BknPdKPPkQFg+6pH9+Nz1CdNUxQXEwF3p8xTzQa5hQ7sXC4Ycep1QlbIek
 8F0P0GyXPPkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131181286"
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="131181286"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 08:23:14 -0700
IronPort-SDR: Ib8k4sMChJXYbNCMPBfi6IyTja+DK5lcVxqFlWNq5XClcbaGEum/Gqo4anyEDsvxqMBzw9au8M
 irsg2MtxaYYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="365201815"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2020 08:23:13 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id B23BB119; Thu, 30 Jul 2020 18:23:12 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v1] staging: ks7010: Use %pM format specifier for MAC addresses
Date: Thu, 30 Jul 2020 18:23:12 +0300
Message-Id: <20200730152312.39076-1-andriy.shevchenko@linux.intel.com>
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert to %pM instead of using custom code.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/staging/ks7010/ks_hostif.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index d70b671b06aa..eaaf6a5440a9 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -161,7 +161,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
 		wireless_send_event(netdev, SIOCGIWAP, &wrqu, NULL);
 	}
 	netdev_dbg(priv->net_dev, "Link AP\n"
-		   "- bssid=%02X:%02X:%02X:%02X:%02X:%02X\n"
+		   "- bssid=%pM\n"
 		   "- essid=%s\n"
 		   "- rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n"
 		   "- channel=%d\n"
@@ -172,8 +172,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
 		   "- rsn.size=%d\n"
 		   "- ext_rate_set_size=%d\n"
 		   "- rate_set_size=%d\n",
-		   ap->bssid[0], ap->bssid[1], ap->bssid[2],
-		   ap->bssid[3], ap->bssid[4], ap->bssid[5],
+		   ap->bssid,
 		   &ap->ssid.body[0],
 		   ap->rate_set.body[0], ap->rate_set.body[1],
 		   ap->rate_set.body[2], ap->rate_set.body[3],
@@ -439,11 +438,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 	/* source address check */
 	if (ether_addr_equal(&priv->eth_addr[0], eth_hdr->h_source)) {
 		netdev_err(priv->net_dev, "invalid : source is own mac address !!\n");
-		netdev_err(priv->net_dev,
-			   "eth_hdrernet->h_dest=%02X:%02X:%02X:%02X:%02X:%02X\n",
-			   eth_hdr->h_source[0], eth_hdr->h_source[1],
-			   eth_hdr->h_source[2], eth_hdr->h_source[3],
-			   eth_hdr->h_source[4], eth_hdr->h_source[5]);
+		netdev_err(priv->net_dev, "eth_hdrernet->h_dest=%pM\n", eth_hdr->h_source);
 		priv->nstats.rx_errors++;
 		return;
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
