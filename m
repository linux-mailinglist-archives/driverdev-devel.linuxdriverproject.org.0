Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C912057A1
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:46:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41C6888F38;
	Tue, 23 Jun 2020 16:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQSKvo4DdZWk; Tue, 23 Jun 2020 16:46:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BF2688F53;
	Tue, 23 Jun 2020 16:46:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 316D61BF969
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D3C38826B
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDpPJnuFLZ8t for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 79C31884AB
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B1AC4AED2;
 Tue, 23 Jun 2020 16:45:23 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 28/50] staging: vchi: Expose struct vchi_service
Date: Tue, 23 Jun 2020 18:42:14 +0200
Message-Id: <20200623164235.29566-29-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623164235.29566-1-nsaenzjulienne@suse.de>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
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
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
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
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
