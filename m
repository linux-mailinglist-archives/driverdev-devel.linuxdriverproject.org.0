Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DE61053BF
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 15:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 303A386FEC;
	Thu, 21 Nov 2019 14:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfaj2DOQxDa1; Thu, 21 Nov 2019 14:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A2D886FDE;
	Thu, 21 Nov 2019 14:02:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25A4D1BF844
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 14:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2317587D0D
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 14:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lzWIAdmAMnfD for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 14:02:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5A9887F35
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 14:02:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 06:02:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="407199809"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 21 Nov 2019 06:02:08 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id B6B8E299; Thu, 21 Nov 2019 16:02:07 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH v1] fbtft: Fix the initialization from property algorithm
Date: Thu, 21 Nov 2019 16:02:07 +0200
Message-Id: <20191121140207.65089-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.24.0
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

When converting to device property API the commit
8b2d3aeeb7ec ("fbtft: Make use of device property API")
mistakenly placed the reading of the first value inside the loop,
that jumps over value after initialization sequence or sleep commands.

Move the above mentioned reading outside of the loop to restore
correct behaviour.

Besides that, we are using pre-increment operation which may lead to
out of the boundary access at the end of sequence. Thus, allocate buffer
with an additional element at the end to prevent out of the boundary
access.

Fixes: 8b2d3aeeb7ec ("fbtft: Make use of device property API")
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index e87d839d86ac..4fcc82b7de1b 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -913,7 +913,7 @@ static int fbtft_init_display_from_property(struct fbtft_par *par)
 	if (count == 0)
 		return -EINVAL;
 
-	values = kmalloc_array(count, sizeof(*values), GFP_KERNEL);
+	values = kmalloc_array(count + 1, sizeof(*values), GFP_KERNEL);
 	if (!values)
 		return -ENOMEM;
 
@@ -926,9 +926,9 @@ static int fbtft_init_display_from_property(struct fbtft_par *par)
 		gpiod_set_value(par->gpio.cs, 0);  /* Activate chip */
 
 	index = -1;
-	while (index < count) {
-		val = values[++index];
+	val = values[++index];
 
+	while (index < count) {
 		if (val & FBTFT_OF_INIT_CMD) {
 			val &= 0xFFFF;
 			i = 0;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
