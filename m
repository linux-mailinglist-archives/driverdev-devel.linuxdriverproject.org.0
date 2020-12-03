Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 141FD2CE1EB
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 23:38:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D79487895;
	Thu,  3 Dec 2020 22:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i--vxjy6uQ6E; Thu,  3 Dec 2020 22:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6EB187865;
	Thu,  3 Dec 2020 22:38:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 699CE1BF2EC
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 22:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5BAD2204EC
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 22:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IkqwR08whaJ4 for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 22:38:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C33BB2046C
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 22:38:41 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
Authentication-Results: mail.kernel.org;
 dkim=permerror (bad message/signature format)
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jacopo Mondi <jacopo@jmondi.org>
Subject: [PATCH] staging: bcm2835: fix vchiq_mmal dependencies
Date: Thu,  3 Dec 2020 23:38:30 +0100
Message-Id: <20201203223836.1362313-1-arnd@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

When the MMAL code is built-in but the vchiq core config is
set to =m, the mmal code never gets built, which in turn can
lead to link errors:

ERROR: modpost: "vchiq_mmal_port_set_format" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_port_disable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_port_parameter_set" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_component_finalise" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_port_connect_tunnel" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_component_enable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_finalise" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_component_init" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_component_disable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "mmal_vchi_buffer_init" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_port_enable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_version" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_submit_buffer" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_init" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "mmal_vchi_buffer_cleanup" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
ERROR: modpost: "vchiq_mmal_port_parameter_get" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!

Change the Kconfig to depend on BCM2835_VCHIQ like the other drivers,
and remove the now redundant dependencies.

Fixes: b18ee53ad297 ("staging: bcm2835: Break MMAL support out from camera")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/vc04_services/vchiq-mmal/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/Kconfig b/drivers/staging/vc04_services/vchiq-mmal/Kconfig
index 500c0d12e4ff..c99525a0bb45 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/Kconfig
+++ b/drivers/staging/vc04_services/vchiq-mmal/Kconfig
@@ -1,6 +1,6 @@
 config BCM2835_VCHIQ_MMAL
 	tristate "BCM2835 MMAL VCHIQ service"
-	depends on (ARCH_BCM2835 || COMPILE_TEST)
+	depends on BCM2835_VCHIQ
 	help
 	  Enables the MMAL API over VCHIQ interface as used for the
 	  majority of the multimedia services on VideoCore.
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
