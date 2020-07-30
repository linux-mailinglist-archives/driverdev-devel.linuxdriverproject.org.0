Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4BF233552
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 17:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D8B42045B;
	Thu, 30 Jul 2020 15:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3J0Tu7WfQ2f; Thu, 30 Jul 2020 15:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6142D203D3;
	Thu, 30 Jul 2020 15:27:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5B231BF3F6
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 15:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1C3B86BA3
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 15:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awrnUmYAczZR for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 15:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A2D786B89
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 15:27:27 +0000 (UTC)
IronPort-SDR: iysZfWlEFnrHyOD1iF21KuzNXCRuiY72Ks5tWRvOz7MCC3Zt+5poeBHD2qRy61mkNrHiUlModx
 L+TpmtlajvWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="213153621"
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="213153621"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 08:27:26 -0700
IronPort-SDR: g26yV/Su8scGfgM7S0/8ZPISJHutMfb1t1jnXeOJyXX3Naq2QYt6irX9HUQsLHTPvr8f9Yacrr
 zCXStoHCMcTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="290912874"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2020 08:27:25 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id A8375119; Thu, 30 Jul 2020 18:27:24 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sven Van Asbroeck <TheSven73@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v1] staging: fieldbus: Use %pM format specifier for MAC
 addresses
Date: Thu, 30 Jul 2020 18:27:24 +0300
Message-Id: <20200730152724.39250-1-andriy.shevchenko@linux.intel.com>
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

While here, replace one time use structure by buffer on stack.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/staging/fieldbus/anybuss/hms-profinet.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/hms-profinet.c b/drivers/staging/fieldbus/anybuss/hms-profinet.c
index 31c43a0a5776..505480fb281d 100644
--- a/drivers/staging/fieldbus/anybuss/hms-profinet.c
+++ b/drivers/staging/fieldbus/anybuss/hms-profinet.c
@@ -26,10 +26,6 @@
  * exactly as advertised.
  */
 
-struct msg_mac_addr {
-	u8 addr[6];
-};
-
 struct profi_priv {
 	struct fieldbus_dev fbdev;
 	struct anybuss_client *client;
@@ -59,17 +55,13 @@ static int profi_id_get(struct fieldbus_dev *fbdev, char *buf,
 			size_t max_size)
 {
 	struct profi_priv *priv = container_of(fbdev, struct profi_priv, fbdev);
-	struct msg_mac_addr response;
+	u8 mac[ETH_ALEN];
 	int ret;
 
-	ret = anybuss_recv_msg(priv->client, 0x0010, &response,
-			       sizeof(response));
+	ret = anybuss_recv_msg(priv->client, 0x0010, &mac, sizeof(mac));
 	if (ret < 0)
 		return ret;
-	return snprintf(buf, max_size, "%02X:%02X:%02X:%02X:%02X:%02X\n",
-		response.addr[0], response.addr[1],
-		response.addr[2], response.addr[3],
-		response.addr[4], response.addr[5]);
+	return snprintf(buf, max_size, "%pM\n", mac);
 }
 
 static bool profi_enable_get(struct fieldbus_dev *fbdev)
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
