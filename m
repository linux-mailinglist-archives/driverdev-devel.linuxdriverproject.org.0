Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919F91E4097
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E770788790;
	Wed, 27 May 2020 11:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jy2tZ4m+F9Z0; Wed, 27 May 2020 11:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54E1188751;
	Wed, 27 May 2020 11:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD5B71BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C1E422322B
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYZu7bvf46xe for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id A567E2045E
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:15 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 413C8ADE3;
 Wed, 27 May 2020 11:54:16 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 02/50] staging: vchi: Get rid of vchi_queue_user_message()
Date: Wed, 27 May 2020 13:53:07 +0200
Message-Id: <20200527115400.31391-3-nsaenzjulienne@suse.de>
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

The function has no users.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  6 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 34 -------------------
 2 files changed, 40 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 686cfc536012..62d9d3efa755 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -111,12 +111,6 @@ vchi_queue_kernel_message(struct vchi_service_handle *handle,
 			  void *data,
 			  unsigned int size);
 
-/* Routine to send a message from user memory across a service */
-extern int
-vchi_queue_user_message(struct vchi_service_handle *handle,
-			void __user *data,
-			unsigned int size);
-
 // Routine to receive a msg from a service
 // Dequeue is equivalent to hold, copy into client buffer, release
 extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 9a040651bb9b..2c2bd7a9dc27 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -150,40 +150,6 @@ vchi_queue_kernel_message(struct vchi_service_handle *handle,
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-struct vchi_queue_user_message_context {
-	void __user *data;
-};
-
-static ssize_t
-vchi_queue_user_message_callback(void *context,
-				 void *dest,
-				 size_t offset,
-				 size_t maxsize)
-{
-	struct vchi_queue_user_message_context *copycontext = context;
-
-	if (copy_from_user(dest, copycontext->data + offset, maxsize))
-		return -EFAULT;
-
-	return maxsize;
-}
-
-int
-vchi_queue_user_message(struct vchi_service_handle *handle,
-			void __user *data,
-			unsigned int size)
-{
-	struct vchi_queue_user_message_context copycontext = {
-		.data = data
-	};
-
-	return vchi_msg_queue(handle,
-			      vchi_queue_user_message_callback,
-			      &copycontext,
-			      size);
-}
-EXPORT_SYMBOL(vchi_queue_user_message);
-
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
