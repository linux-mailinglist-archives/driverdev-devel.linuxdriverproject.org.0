Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3971E41BE
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 14:14:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5171824B6C;
	Wed, 27 May 2020 12:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwBHzH8EkTmk; Wed, 27 May 2020 12:13:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94BC7248A1;
	Wed, 27 May 2020 12:13:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 599E91BF2FC
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5613A882AD
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qFTmYwJuS6og for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 12:13:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 980748805D
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 12:13:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4B1AFAC64;
 Wed, 27 May 2020 11:54:55 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 40/50] staging: vchiq: Get rid of unnecessary definitions in
 vchiq_if.h
Date: Wed, 27 May 2020 13:53:45 +0200
Message-Id: <20200527115400.31391-41-nsaenzjulienne@suse.de>
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
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
