Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B334D2057A6
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C15689985;
	Tue, 23 Jun 2020 16:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSqg7yJe-jI6; Tue, 23 Jun 2020 16:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E02689907;
	Tue, 23 Jun 2020 16:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68ED61BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 657B320381
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jbx6bYDeDt0n for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 79B192DF70
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:32 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id A41F0AED2;
 Tue, 23 Jun 2020 16:45:30 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 40/50] staging: vchiq: Get rid of unnecessary definitions in
 vchiq_if.h
Date: Tue, 23 Jun 2020 18:42:26 +0200
Message-Id: <20200623164235.29566-41-nsaenzjulienne@suse.de>
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

Those functions don't actually exist, nor have any use, nor the macros.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_if.h              | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index b3d4c14536bd..407e7dc31108 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -8,11 +8,9 @@
 
 #define VCHIQ_SLOT_SIZE     4096
 #define VCHIQ_MAX_MSG_SIZE  (VCHIQ_SLOT_SIZE - sizeof(struct vchiq_header))
-#define VCHIQ_CHANNEL_SIZE  VCHIQ_MAX_MSG_SIZE /* For backwards compatibility */
 
 #define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
 			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
-#define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
 
 enum vchiq_reason {
 	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
@@ -92,7 +90,6 @@ struct vchiq_config {
 };
 
 struct vchiq_instance;
-typedef void (*vchiq_remote_callback)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
 extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
@@ -118,25 +115,11 @@ extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
 extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
 	void *data, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_transmit_handle(unsigned int service,
-	const void *offset, unsigned int size,
-	void *userdata,	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_receive_handle(unsigned int service,
-	void *offset, unsigned int size, void *userdata,
-	enum vchiq_bulk_mode mode);
 extern int   vchiq_get_client_id(unsigned int service);
 extern void *vchiq_get_service_userdata(unsigned int service);
 extern void vchiq_get_config(struct vchiq_config *config);
 extern enum vchiq_status vchiq_set_service_option(unsigned int service,
 	enum vchiq_service_option option, int value);
-
-extern enum vchiq_status vchiq_remote_use(struct vchiq_instance *instance,
-	vchiq_remote_callback callback, void *cb_arg);
-extern enum vchiq_status vchiq_remote_release(struct vchiq_instance *instance);
-
-extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
-	void *ptr, size_t num_bytes);
-
 extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
 extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
