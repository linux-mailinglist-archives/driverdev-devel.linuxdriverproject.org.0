Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B06250113
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA0D285567;
	Mon, 24 Jun 2019 05:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wp1Vnv+FnotG; Mon, 24 Jun 2019 05:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 763DC84C99;
	Mon, 24 Jun 2019 05:41:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BB2C1BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 781972048E
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grnEPdNJ0aiL for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:41:46 +0000 (UTC)
X-Greylist: delayed 00:07:40 by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr
 [80.12.242.124])
 by silver.osuosl.org (Postfix) with ESMTP id B97872038B
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:41:45 +0000 (UTC)
Received: from localhost.localdomain ([86.243.180.47]) by mwinf5d04 with ME
 id UVZv2000C11lVym03VZwBJ; Mon, 24 Jun 2019 07:34:03 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 24 Jun 2019 07:34:03 +0200
X-ME-IP: 86.243.180.47
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, tuomas.tynkkynen@iki.fi,
 inf.braun@fau.de, tobias.buettner@fau.de, hofrat@osadl.org
Subject: [PATCH] staging: bcm2835-camera: Avoid apotential sleep while holding
 a spin_lock
Date: Mon, 24 Jun 2019 07:33:51 +0200
Message-Id: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Do not allocate memory with GFP_KERNEL when holding a spin_lock, it may
sleep. Use GFP_NOWAIT instead.

Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 16af735af5c3..438d548c6e24 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -186,7 +186,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	 */
 	spin_lock(&instance->context_map_lock);
 	handle = idr_alloc(&instance->context_map, msg_context,
-			   0, 0, GFP_KERNEL);
+			   0, 0, GFP_NOWAIT);
 	spin_unlock(&instance->context_map_lock);
 
 	if (handle < 0) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
