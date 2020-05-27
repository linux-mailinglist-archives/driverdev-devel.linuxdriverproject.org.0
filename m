Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C19411E4099
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 667FF86D38;
	Wed, 27 May 2020 11:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FvGygrobv3A; Wed, 27 May 2020 11:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56C3486D16;
	Wed, 27 May 2020 11:54:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 748891BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FB3E86D17
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1l5xrDavm1lv for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D006086D16
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:16 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D9E3AAD66;
 Wed, 27 May 2020 11:54:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 04/50] staging: vchi: Merge vchi_msg_queue() into
 vchi_queue_kernel_message()
Date: Wed, 27 May 2020 13:53:09 +0200
Message-Id: <20200527115400.31391-5-nsaenzjulienne@suse.de>
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

There are no gains from that extra indirection level. Also, get rid of
the function description, the whole file will disappear soon.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_shim.c          | 29 +++----------------
 1 file changed, 4 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 1c5ddea8b076..081ab67ad6fd 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -84,30 +84,15 @@ int32_t vchi_msg_remove(struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_msg_remove);
 
-/***********************************************************
- * Name: vchi_msg_queue
- *
- * Arguments:  struct vchi_service_handle *handle,
- *             ssize_t (*copy_callback)(void *context, void *dest,
- *				        size_t offset, size_t maxsize),
- *	       void *context,
- *             uint32_t data_size
- *
- * Description: Thin wrapper to queue a message onto a connection
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-static
-int32_t vchi_msg_queue(struct vchi_service_handle *handle, void *context,
-		       uint32_t data_size)
+int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
+			       unsigned int size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_queue_kernel_message(service->handle, context,
-						    data_size);
+		status = vchiq_queue_kernel_message(service->handle, data,
+						    size);
 
 		/*
 		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
@@ -122,12 +107,6 @@ int32_t vchi_msg_queue(struct vchi_service_handle *handle, void *context,
 
 	return vchiq_status_to_vchi(status);
 }
-
-int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
-			      unsigned int size)
-{
-	return vchi_msg_queue(handle, data, size);
-}
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
 /***********************************************************
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
