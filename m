Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DDC1A6967
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 18:08:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C16B862E1;
	Mon, 13 Apr 2020 16:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3G4a890Vh6Xu; Mon, 13 Apr 2020 16:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4851186256;
	Mon, 13 Apr 2020 16:08:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EAFE1BF39D
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 16:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1BC9F84C4E
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 16:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gQ-LRd62a2h5 for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 16:08:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vkten.in (vkten.in [104.244.73.96])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2824084B80
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 16:08:12 +0000 (UTC)
Received: (qmail 15265 invoked from network); 13 Apr 2020 16:08:07 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.209.137.67)
 de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
 by vkten with ESMTPSA; 13 Apr 2020 16:08:07 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: sm750fb: Make function arguments alignment match
 open parenthesis
Date: Mon, 13 Apr 2020 21:37:53 +0530
Message-Id: <20200413160753.3787-1-vkor@vkten.in>
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
Cc: devel@driverdev.osuosl.org, R Veera Kumar <vkor@vkten.in>,
 Teddy Wang <teddy.wang@siliconmotion.com>, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make function arguments alignment match open parenthesis.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/sm750fb/sm750.h    | 23 +++++++++++++----------
 drivers/staging/sm750fb/sm750_hw.c |  2 +-
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index ce90adcb449d..55fe5a28a174 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -59,16 +59,19 @@ struct lynx_accel {
 
 	int (*de_wait)(void);/* see if hardware ready to work */
 
-	int (*de_fillrect)(struct lynx_accel *, u32, u32, u32, u32,
-						u32, u32, u32, u32, u32);
-
-	int (*de_copyarea)(struct lynx_accel *, u32, u32, u32, u32,
-						u32, u32, u32, u32,
-						u32, u32, u32, u32);
-
-	int (*de_imageblit)(struct lynx_accel *, const char *, u32, u32, u32, u32,
-							       u32, u32, u32, u32,
-							       u32, u32, u32, u32);
+	int (*de_fillrect)(struct lynx_accel *,
+			   u32, u32, u32, u32,
+			   u32, u32, u32, u32, u32);
+
+	int (*de_copyarea)(struct lynx_accel *,
+			   u32, u32, u32, u32,
+			   u32, u32, u32, u32,
+			   u32, u32, u32, u32);
+
+	int (*de_imageblit)(struct lynx_accel *, const char *,
+			    u32, u32, u32, u32,
+			    u32, u32, u32, u32,
+			    u32, u32, u32, u32);
 
 };
 
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index b8d60701f898..7136d751cff5 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -51,7 +51,7 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 
 	/* now map mmio and vidmem */
 	sm750_dev->pvReg = ioremap(sm750_dev->vidreg_start,
-					   sm750_dev->vidreg_size);
+				   sm750_dev->vidreg_size);
 	if (!sm750_dev->pvReg) {
 		pr_err("mmio failed\n");
 		ret = -EFAULT;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
