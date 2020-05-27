Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 281211E40AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B381A87E3C;
	Wed, 27 May 2020 11:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LOskb-zzHcj7; Wed, 27 May 2020 11:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1311787E61;
	Wed, 27 May 2020 11:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCBA01BF980
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4856875E0
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f8BWDH905GBE for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67EB687D86
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:28 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 74905ACB8;
 Wed, 27 May 2020 11:54:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 16/50] staging: vchi: Get rid of vchi_msg_dequeue()
Date: Wed, 27 May 2020 13:53:21 +0200
Message-Id: <20200527115400.31391-17-nsaenzjulienne@suse.de>
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

Nobody uses it. Get rid of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  7 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 39 -------------------
 2 files changed, 46 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ff302e6b8b1b..a369feb3a448 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -93,13 +93,6 @@ extern int32_t vchi_service_release(struct vchi_service *service);
 extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 				     unsigned int size);
 
-// Routine to receive a msg from a service
-// Dequeue is equivalent to hold, copy into client buffer, release
-extern int32_t vchi_msg_dequeue(struct vchi_service *service, void *data,
-				uint32_t max_data_size_to_read,
-				uint32_t *actual_msg_size,
-				enum vchi_flags flags);
-
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 99eb7a5ccce6..0c3473861a8d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -160,45 +160,6 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
 }
 EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 
-/***********************************************************
- * Name: vchi_msg_dequeue
- *
- * Arguments:  struct vchi_service *service,
- *             void *data,
- *             uint32_t max_data_size_to_read,
- *             uint32_t *actual_msg_size
- *             enum vchi_flags flags
- *
- * Description: Routine to dequeue a message into the supplied buffer
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_msg_dequeue(struct vchi_service *service, void *data,
-			 uint32_t max_data_size_to_read,
-			 uint32_t *actual_msg_size, enum vchi_flags flags)
-{
-	struct vchiq_header *header;
-
-	WARN_ON((flags != VCHI_FLAGS_NONE) &&
-		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));
-
-	if (flags == VCHI_FLAGS_NONE)
-		if (vchiu_queue_is_empty(&service->queue))
-			return -1;
-
-	header = vchiu_queue_pop(&service->queue);
-
-	memcpy(data, header->data, header->size < max_data_size_to_read ?
-		header->size : max_data_size_to_read);
-
-	*actual_msg_size = header->size;
-
-	vchiq_release_message(service->handle, header);
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_msg_dequeue);
 
 /***********************************************************
  * Name: vchi_held_msg_release
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
