Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDE27571D
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 20:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9982D881C8;
	Thu, 25 Jul 2019 18:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V5ns9SjxiyfJ; Thu, 25 Jul 2019 18:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61B9388164;
	Thu, 25 Jul 2019 18:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 572941BF2C8
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 18:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54276204C6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 18:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HhpYpbNdw8I7 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 18:40:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp07.smtpout.orange.fr
 [80.12.242.129])
 by silver.osuosl.org (Postfix) with ESMTPS id AC02120350
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 18:40:02 +0000 (UTC)
Received: from localhost.localdomain ([92.140.204.221]) by mwinf5d13 with ME
 id h6fu2000Y4n7eLC036fwcM; Thu, 25 Jul 2019 20:40:00 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 25 Jul 2019 20:40:00 +0200
X-ME-IP: 92.140.204.221
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: gregkh@linuxfoundation.org,
	nishadkamdar@gmail.com
Subject: [PATCH] Staging: fbtft: Fix some typo. pdc8544 --> pcd8544
Date: Thu, 25 Jul 2019 20:38:56 +0200
Message-Id: <20190725183856.17616-1-christophe.jaillet@wanadoo.fr>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver is related to 'pcd8544'.
However, 2 strings are about pdc8544 (c and d switched)
Fix it.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This patch is only theorical. It is based on the fact that a part of the
filename (i.e. pcd8544) looks misspelled in the file itself.
I don't know the implication of FBTFT_REGISTER_DRIVER and MODULE_ALIAS and
if additional adjustments are needed.
---
 drivers/staging/fbtft/fb_pcd8544.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index ad49973ad594..08f8a4bb8772 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -157,10 +157,10 @@ static struct fbtft_display display = {
 	.backlight = 1,
 };
 
-FBTFT_REGISTER_DRIVER(DRVNAME, "philips,pdc8544", &display);
+FBTFT_REGISTER_DRIVER(DRVNAME, "philips,pcd8544", &display);
 
 MODULE_ALIAS("spi:" DRVNAME);
-MODULE_ALIAS("spi:pdc8544");
+MODULE_ALIAS("spi:pcd8544");
 
 MODULE_DESCRIPTION("FB driver for the PCD8544 LCD Controller");
 MODULE_AUTHOR("Noralf Tronnes");
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
