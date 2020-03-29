Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9772196D70
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 565EC88320;
	Sun, 29 Mar 2020 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1eNgRfUUBILf; Sun, 29 Mar 2020 12:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93C1988222;
	Sun, 29 Mar 2020 12:45:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F00BD1BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EC07E875A1
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k8O0k8qfbK9r for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 20FCE8759C
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:39 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkpOZ-1iw9v42rGB-00mGts; Sun, 29 Mar 2020 14:45:29 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 1/9] staging: bcm2835-camera: Drop PREVIEW_LAYER
Date: Sun, 29 Mar 2020 14:44:53 +0200
Message-Id: <1585485901-10172-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:oeXp9Lbrp2LOBHyY7yvptVlZOhB3JzoScY2M1TYSrMj5uk47RcS
 Ci23skkJDV77BED4d8v9baCy21tpcquDptTsoix8Wjr/mPKIRTAmpey22a1luIx51Lzoc4I
 Cztv8Ys0/3MJZy2BLOv0p5YIbULHvHk5+16VNBJhPsXTwuhmtABcoRBZSDqnNXFZjM9a41D
 EeoAmYGI2wjtQoUO7mv0A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:SVQwhyOxXwM=:eGTcjC/C3pf8mLP+1rtkeW
 ex+8/Z9rI5thZKm+UBHTiZKZo7mH14Nqo4l302ixngtbpukDV6dsgl4Yg215YsPpP6xJIO+yF
 N1679ECCc/2l2J/Itaa1nrZq4qZ58qCp8IsORKu+dMgDZOs0GtdfG0LjvyKoqyMVxuHBwTQM9
 B6K00SMEyc1kZi6bAWx/p13QqlEPJ54hmAvYH6i3lb19+tf132t3U0I/p65pNB2tXLyGkAOwp
 w+WMCkBhLyr2Zi3BFjBBL39v1yiIsrmKva08voKAG9KnO7Ujs4lBdxR3cSk4YSRgKWBvMU+cd
 P98IjJBXm7idcVfj85o7fa+G5gFF5S/qfN08piEhGhxY3c8cavT/qH71Fdamyc3Zz3/H1XSnc
 bykAywWIh6a+34DOR9C0AskTBRLdONAQpRjhC/TP+QZVbjJ400/nejTCmGZEOMx1JibX62Z8o
 WfLQJXsmuCKTK7eP4QD/d/Malv/tWF3mR06BJVHh5LagB4aHirZqfoF4Tzbdy3ZZS6uXKe5vY
 +1bFiCNK22hJipIBTzLS7W36jUUyqroqv55tdRAP+Lgf/lAROyGAx3oZ5Ie+RGG5wb3yP+FLi
 wv+FUsXngLrsMRjoWVa68c4Na+ZpvQA/TJxiDb2SLa0Y0hawoNgHu9FTfBMHVbZtBv8EAvrUu
 7pTl1xv/UMqzaXqxFVOWF7henuuVnwj05vFVUZadLPA4U0RLgbqGntXyGMJ0qnY4WYD/YhUUn
 7AcBip9CqJ8VmzxoEyo25tngx6vqfErlwHPVzSgXkK/HzEfv6Cxo2TRunTqu03g59Mo/WYjE7
 8RP3LAlZFD8LQe4fyE6o1il6012z9SLBt2knDgKtiFuQOHehqPZQdOgBp9JBl9QxcspwREK
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This define is used only once. So drop the define and init the layer
directly.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 2 +-
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 597acef..ff2ba23 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -668,7 +668,7 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
 			MMAL_DISPLAY_SET_ALPHA |
 			MMAL_DISPLAY_SET_DEST_RECT |
 			MMAL_DISPLAY_SET_FULLSCREEN,
-		.layer = PREVIEW_LAYER,
+		.layer = 2,
 		.alpha = dev->overlay.global_alpha,
 		.fullscreen = 0,
 		.dest_rect = {
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index b5fce38..c426a5c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -30,8 +30,6 @@ enum {
 	CAM_PORT_COUNT
 };
 
-#define PREVIEW_LAYER      2
-
 extern int bcm2835_v4l2_debug;
 
 struct bm2835_mmal_dev {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
