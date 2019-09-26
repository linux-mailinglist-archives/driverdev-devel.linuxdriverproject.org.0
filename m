Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCF9BF35D
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 14:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 46E5B2262F;
	Thu, 26 Sep 2019 12:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBo9RYxypWTF; Thu, 26 Sep 2019 12:51:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A2ADD203D3;
	Thu, 26 Sep 2019 12:51:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9F531BF3D6
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 12:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6BBA87D14
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qg2FVRgucd64 for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 12:51:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58C38875BE
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 12:51:00 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iDTEY-0003Mz-3X; Thu, 26 Sep 2019 12:50:58 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Colin Ian King <colin.king@canonical.com>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192e: clean up indentation issue
Date: Thu, 26 Sep 2019 13:50:57 +0100
Message-Id: <20190926125057.16158-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

The RT_TRACE is indented incorrectly, add in the missing tabs.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index f932cb15e4e5..b08712a9c029 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -715,8 +715,8 @@ void rtl92e_set_wireless_mode(struct net_device *dev, u8 wireless_mode)
 	if ((wireless_mode == WIRELESS_MODE_N_24G) ||
 	    (wireless_mode == WIRELESS_MODE_N_5G)) {
 		priv->rtllib->pHTInfo->bEnableHT = 1;
-	RT_TRACE(COMP_DBG, "%s(), wireless_mode:%x, bEnableHT = 1\n",
-		 __func__, wireless_mode);
+		RT_TRACE(COMP_DBG, "%s(), wireless_mode:%x, bEnableHT = 1\n",
+			 __func__, wireless_mode);
 	} else {
 		priv->rtllib->pHTInfo->bEnableHT = 0;
 		RT_TRACE(COMP_DBG, "%s(), wireless_mode:%x, bEnableHT = 0\n",
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
