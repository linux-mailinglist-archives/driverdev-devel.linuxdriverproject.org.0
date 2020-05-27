Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3AA1E4098
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE90F8877D;
	Wed, 27 May 2020 11:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7FhWE6TFp47f; Wed, 27 May 2020 11:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 794C68876B;
	Wed, 27 May 2020 11:54:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 437DF1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FAB188751
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TYQpm3J-YjNT for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3CD4188738
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:16 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 30B07AD2B;
 Wed, 27 May 2020 11:54:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 03/50] staging: vchiq: Move copy callback handling into vchiq
Date: Wed, 27 May 2020 13:53:08 +0200
Message-Id: <20200527115400.31391-4-nsaenzjulienne@suse.de>
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

All vchi users use the kernel variant of the copy callback. The only
user for the user space variant of the copy callback is in the ioctl
implementation. So move all this copying logic into vchiq, and expose a
new function that explicitly passes kernel messages.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_core.c          |  6 ++++
 .../interface/vchiq_arm/vchiq_core.h          |  7 ++++
 .../interface/vchiq_arm/vchiq_if.h            |  8 ++---
 .../interface/vchiq_arm/vchiq_shim.c          | 34 ++++---------------
 4 files changed, 22 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index edcd97373809..67b2090c91db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3147,6 +3147,12 @@ vchiq_queue_message(unsigned int handle,
 	return status;
 }
 
+enum vchiq_status vchiq_queue_kernel_message(unsigned int handle, void *context,
+				      size_t size)
+{
+	return vchiq_queue_message(handle, memcpy_copy_callback, context, size);
+}
+
 void
 vchiq_release_message(unsigned int handle,
 		      struct vchiq_header *header)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index cedd8e721aae..1fe6cd8b86c0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -587,6 +587,13 @@ lock_service(struct vchiq_service *service);
 extern void
 unlock_service(struct vchiq_service *service);
 
+extern enum vchiq_status
+vchiq_queue_message(unsigned int handle,
+		    ssize_t (*copy_callback)(void *context, void *dest,
+					     size_t offset, size_t maxsize),
+		    void *context,
+		    size_t size);
+
 /* The following functions are called from vchiq_core, and external
 ** implementations must be provided. */
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 39b77ea19210..b62fd6d6f1ac 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -105,12 +105,8 @@ extern enum vchiq_status vchiq_close_service(unsigned int service);
 extern enum vchiq_status vchiq_remove_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern enum vchiq_status
-vchiq_queue_message(unsigned int handle,
-		    ssize_t (*copy_callback)(void *context, void *dest,
-					     size_t offset, size_t maxsize),
-		    void *context,
-		    size_t size);
+extern enum vchiq_status vchiq_queue_kernel_message(unsigned int handle,
+						    void *context, size_t size);
 extern void           vchiq_release_message(unsigned int service,
 	struct vchiq_header *header);
 extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 2c2bd7a9dc27..1c5ddea8b076 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -99,20 +99,15 @@ EXPORT_SYMBOL(vchi_msg_remove);
  *
  ***********************************************************/
 static
-int32_t vchi_msg_queue(struct vchi_service_handle *handle,
-	ssize_t (*copy_callback)(void *context, void *dest,
-				 size_t offset, size_t maxsize),
-	void *context,
-	uint32_t data_size)
+int32_t vchi_msg_queue(struct vchi_service_handle *handle, void *context,
+		       uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_queue_message(service->handle,
-					     copy_callback,
-					     context,
-					     data_size);
+		status = vchiq_queue_kernel_message(service->handle, context,
+						    data_size);
 
 		/*
 		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
@@ -128,25 +123,10 @@ int32_t vchi_msg_queue(struct vchi_service_handle *handle,
 	return vchiq_status_to_vchi(status);
 }
 
-static ssize_t
-vchi_queue_kernel_message_callback(void *context,
-				   void *dest,
-				   size_t offset,
-				   size_t maxsize)
+int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
+			      unsigned int size)
 {
-	memcpy(dest, context + offset, maxsize);
-	return maxsize;
-}
-
-int
-vchi_queue_kernel_message(struct vchi_service_handle *handle,
-			  void *data,
-			  unsigned int size)
-{
-	return vchi_msg_queue(handle,
-			      vchi_queue_kernel_message_callback,
-			      data,
-			      size);
+	return vchi_msg_queue(handle, data, size);
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
