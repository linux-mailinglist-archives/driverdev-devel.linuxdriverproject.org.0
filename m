Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F97C3D5
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 15:42:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A74321FA8;
	Wed, 31 Jul 2019 13:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhoFMVKApM-n; Wed, 31 Jul 2019 13:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C07B220A9;
	Wed, 31 Jul 2019 13:42:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3262D1BF2CE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 13:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2D3D4875B9
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 13:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgUG80X+4JLH for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 13:42:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6540B86C3A
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 13:42:11 +0000 (UTC)
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id jRi82000105gfCL01Ri8mK; Wed, 31 Jul 2019 15:42:08 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsoro-0001Fs-2B; Wed, 31 Jul 2019 15:42:08 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsoro-0004pu-0m; Wed, 31 Jul 2019 15:42:08 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: bcm2835-camera: Spelling s/conencted/connected/
Date: Wed, 31 Jul 2019 15:42:07 +0200
Message-Id: <20190731134207.18549-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 Geert Uytterhoeven <geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index f738e7f99e96e927..47897e81ec586fe9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -56,7 +56,7 @@ struct vchiq_mmal_port {
 	/* component port belongs to, allows simple deref */
 	struct vchiq_mmal_component *component;
 
-	struct vchiq_mmal_port *connected; /* port conencted to */
+	struct vchiq_mmal_port *connected; /* port connected to */
 
 	/* buffer info */
 	struct vchiq_mmal_port_buffer minimum_buffer;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
