Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F01AD1E40B9
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 980B787E8E;
	Wed, 27 May 2020 11:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pa2yVK1YyFla; Wed, 27 May 2020 11:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B2E687E91;
	Wed, 27 May 2020 11:54:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF0F11BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A65A124B6B
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2OXvAvoTNkad for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 473CC248A1
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:40 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 54E6DAC5B;
 Wed, 27 May 2020 11:54:41 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 28/50] staging: vchi: Expose struct vchi_service
Date: Wed, 27 May 2020 13:53:33 +0200
Message-Id: <20200527115400.31391-29-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 laurent.pinchart@ideasonboard.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This will make further changes easier. The struct will ultimately
disappear.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h    | 10 +++++++---
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c     |  7 -------
 2 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 9a74ca4e1062..789acb7999d1 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -29,6 +29,13 @@ struct vchi_held_msg {
 	void *message;
 };
 
+struct vchi_service {
+	unsigned int handle;
+
+	vchi_callback callback;
+	void *callback_param;
+};
+
 // structure used to provide the information needed to open a server or a client
 struct service_creation {
 	struct vchi_version version;
@@ -40,9 +47,6 @@ struct service_creation {
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
-// Opaque handle for a server or client
-struct vchi_service;
-
 /******************************************************************************
  * Global funcs - implementation is specific to which side you are on
  * (local / remote)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 9728667adbd9..843ee978928f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -10,13 +10,6 @@
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-struct vchi_service {
-	unsigned int handle;
-
-	vchi_callback callback;
-	void *callback_param;
-};
-
 int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 			      unsigned int size)
 {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
