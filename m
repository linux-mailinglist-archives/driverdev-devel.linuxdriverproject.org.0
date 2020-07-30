Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D44B6233523
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 17:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1B6486ACE;
	Thu, 30 Jul 2020 15:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zkMGLZokaaLU; Thu, 30 Jul 2020 15:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA23186A9D;
	Thu, 30 Jul 2020 15:15:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 244461BF3F6
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 15:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 20E0387DC9
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 15:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1wpdFwiR+nc for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 15:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C359E87DC1
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 15:15:12 +0000 (UTC)
IronPort-SDR: eY1Qf8+doj+iySf8OSl89j81wVikutXJZIQUtHC1kTxlZiVKAm1FTuOGbv3fXzVXhL8P9rvVLB
 vM8oVLi0coew==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="216089687"
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="216089687"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 08:15:09 -0700
IronPort-SDR: ETFyiElrEF+AjzgU7jAp/CCeWGee6YyCJCHjfrVamHjw63v675BhKrzygEeaqaVSEJFhO6Z/zu
 Kyi6GzaKCN4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="274228272"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2020 08:15:08 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id DDB2F119; Thu, 30 Jul 2020 18:15:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v1] staging: most: Use %pM format specifier for MAC addresses
Date: Thu, 30 Jul 2020 18:15:06 +0300
Message-Id: <20200730151506.38827-1-andriy.shevchenko@linux.intel.com>
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
 drivers/staging/most/net/net.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 830f089f1a88..b6fecb06a0e6 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -564,13 +564,11 @@ static void on_netinfo(struct most_interface *iface,
 
 	if (m && is_valid_ether_addr(m)) {
 		if (!is_valid_ether_addr(dev->dev_addr)) {
-			netdev_info(dev, "set mac %02x-%02x-%02x-%02x-%02x-%02x\n",
-				    m[0], m[1], m[2], m[3], m[4], m[5]);
+			netdev_info(dev, "set mac %pM\n", m);
 			ether_addr_copy(dev->dev_addr, m);
 			netif_dormant_off(dev);
 		} else if (!ether_addr_equal(dev->dev_addr, m)) {
-			netdev_warn(dev, "reject mac %02x-%02x-%02x-%02x-%02x-%02x\n",
-				    m[0], m[1], m[2], m[3], m[4], m[5]);
+			netdev_warn(dev, "reject mac %pM\n", m);
 		}
 	}
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
