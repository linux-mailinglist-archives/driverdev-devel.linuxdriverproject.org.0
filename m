Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9A81BE0AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 16:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7A548843E;
	Wed, 29 Apr 2020 14:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8I7plTUS4WFX; Wed, 29 Apr 2020 14:21:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABC4588453;
	Wed, 29 Apr 2020 14:21:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E98651BF3A8
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 14:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E619E84474
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 14:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ape1Ap6vMC22 for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 14:21:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4AFB084471
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 14:21:28 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N6LMN-1j5IaG1fUP-016gSa; Wed, 29 Apr 2020 16:21:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: wfx: avoid compiler warning on empty array
Date: Wed, 29 Apr 2020 16:21:09 +0200
Message-Id: <20200429142119.1735196-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:9VR6xSDPQ8g1NPHjws4CXVoCdGkwhOxNYK2KCEQwm7vtwokhGcO
 CYnU04XokIbuhXe8Zua9Z6fgLTEXNk+RCbcIZ4srK+52KJ4s02oc7e9STFvO7XVcgl5B7F2
 eglp9gEEofWWxonxeOCmFbegVWtUPEFVtUHH2YpxP/kZ1Bw1XRMn58D23v1za2ou9U8IO6L
 7hbaPK0cV565ri1GIipHQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:y1/KdhnlWZM=:jbj+5QBLT9zgufaVm/rZOE
 IpGQVwVYlS79n4eonJdiE/HEHj6bptBqv7FbbYTXnUSPdqkR2SUevxjLAPHbtRd0oIuN8lzaQ
 L6crLUrklH5H0tbTqNZ0mX8OHK9nV4b1aPrpkgqBU36Hzy1VkFmuSY7fW6Zj89GlK3HjVWuBZ
 iJ6d3r4UNMN4tsHW/67ipN9E2KVJddSp3PesTiA99os3uuavMrDS+HGzocfLYDlf8k+JJReDI
 Io77ZoxIZiCGXq1ocOJTo+k/A3wNf58w+k8ZxzqUWy5A+NKl62Jr50aFZzzZqkwyCxdyuJGT3
 MoPK03uwUslBUta75Pz1a0ICGtNwOO+/GVulccoaTl3T3JQZ4afPLLTJBo7iwVwI3Vlyk0Bli
 ehBj1srTmXR4S7syJHkpWEBaOA98o/vy6hNxqj78NuPA3lwAZ4L07OJqu5C3UoCEwCjwJ5okb
 yG7EyQ3XNypNL3nKpk72jGOVkYNSkM05nT9Lnxhce6tUq7/phCj9nDwSLk/gfC0U2up+kdw9n
 2VzFD/4iz09iCof1J52rrW0sKlGxqPdDnXFmF9zNrIC+c+43P2iaQe3IIb34yj3fRwKQWcJw8
 rpTd+PVfTsX153GQjwsmBzbBTWsZQr9mf2Xo3QMLgh4Xt8IFrDyj6YJtIwsik+cSUuqU/q0SX
 E1gyNQf6HrkvhWGKCUKpbaHyY9s2KFqum4JDqStrtsBJoL/tJ8/T2bxW7QMuhWnSnkgQBnxQC
 lY2gCD8Lfr+Z7HI9z14t/GFKvnyko8KyXlytZwr4Wua6ojbwgRfZ6kX4b4Xe80ZV8j97J0NAI
 fo36petyUrj/KBsXWvPVkQxpm/qXzimiwNDMjeXiknzeT/dSwM=
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When CONFIG_OF is disabled, gcc-9 produces a warning about the
wfx_sdio_of_match[] array having a declaration without a dimension:

drivers/staging/wfx/bus_sdio.c:159:34: error: array 'wfx_sdio_of_match' assumed to have one element [-Werror]
  159 | static const struct of_device_id wfx_sdio_of_match[];
      |                                  ^~~~~~~~~~~~~~~~~

Move the proper declaration up and out of the #ifdef instead.

Fixes: a7a91ca5a23d ("staging: wfx: add infrastructure for new driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/wfx/bus_sdio.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index dedc3ff58d3e..c2e4bd1e3b0a 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -156,7 +156,13 @@ static const struct hwbus_ops wfx_sdio_hwbus_ops = {
 	.align_size		= wfx_sdio_align_size,
 };
 
-static const struct of_device_id wfx_sdio_of_match[];
+static const struct of_device_id wfx_sdio_of_match[] = {
+	{ .compatible = "silabs,wfx-sdio" },
+	{ .compatible = "silabs,wf200" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
+
 static int wfx_sdio_probe(struct sdio_func *func,
 			  const struct sdio_device_id *id)
 {
@@ -248,15 +254,6 @@ static const struct sdio_device_id wfx_sdio_ids[] = {
 };
 MODULE_DEVICE_TABLE(sdio, wfx_sdio_ids);
 
-#ifdef CONFIG_OF
-static const struct of_device_id wfx_sdio_of_match[] = {
-	{ .compatible = "silabs,wfx-sdio" },
-	{ .compatible = "silabs,wf200" },
-	{ },
-};
-MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
-#endif
-
 struct sdio_driver wfx_sdio_driver = {
 	.name = "wfx-sdio",
 	.id_table = wfx_sdio_ids,
@@ -264,6 +261,6 @@ struct sdio_driver wfx_sdio_driver = {
 	.remove = wfx_sdio_remove,
 	.drv = {
 		.owner = THIS_MODULE,
-		.of_match_table = of_match_ptr(wfx_sdio_of_match),
+		.of_match_table = wfx_sdio_of_match,
 	}
 };
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
