Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE59920579F
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 637F72E181;
	Tue, 23 Jun 2020 16:46:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5CyLi2cGa1k; Tue, 23 Jun 2020 16:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A09CE2E010;
	Tue, 23 Jun 2020 16:45:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9301BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64B392038A
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vg23MLb-5U2v for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C33120381
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:19 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 6B41BAEB1;
 Tue, 23 Jun 2020 16:45:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 18/50] staging: vchi_common: Get rid of all unused definitions
Date: Tue, 23 Jun 2020 18:42:04 +0200
Message-Id: <20200623164235.29566-19-nsaenzjulienne@suse.de>
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

There is a series of structures and enums defined but never used. Get
rid of them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchi/vchi_common.h              | 65 -------------------
 1 file changed, 65 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 0f79bea4757d..e07376fe4dfd 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -10,23 +10,7 @@ enum vchi_flags {
 	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
 	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
 	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,   // return once the transfer is in a queue ready to go
-	VCHI_FLAGS_ALLOW_PARTIAL             = 0x8,
 	VCHI_FLAGS_BLOCK_UNTIL_DATA_READ     = 0x10,
-	VCHI_FLAGS_CALLBACK_WHEN_DATA_READ   = 0x20,
-
-	VCHI_FLAGS_ALIGN_SLOT            = 0x000080,  // internal use only
-	VCHI_FLAGS_BULK_AUX_QUEUED       = 0x010000,  // internal use only
-	VCHI_FLAGS_BULK_AUX_COMPLETE     = 0x020000,  // internal use only
-	VCHI_FLAGS_BULK_DATA_QUEUED      = 0x040000,  // internal use only
-	VCHI_FLAGS_BULK_DATA_COMPLETE    = 0x080000,  // internal use only
-	VCHI_FLAGS_INTERNAL              = 0xFF0000
-};
-
-// constants for vchi_crc_control()
-enum vchi_crc_control {
-	VCHI_CRC_NOTHING = -1,
-	VCHI_CRC_PER_SERVICE = 0,
-	VCHI_CRC_EVERYTHING = 1,
 };
 
 //callback reasons when an event occurs on a service
@@ -47,58 +31,9 @@ enum vchi_callback_reason {
 	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
 };
 
-// service control options
-enum vchi_service_option {
-	VCHI_SERVICE_OPTION_MIN,
-
-	VCHI_SERVICE_OPTION_TRACE,
-	VCHI_SERVICE_OPTION_SYNCHRONOUS,
-
-	VCHI_SERVICE_OPTION_MAX
-};
-
 //Callback used by all services / bulk transfers
 typedef void (*vchi_callback)(void *callback_param, //my service local param
 			      enum vchi_callback_reason reason,
 			      void *handle); //for transmitting msg's only
 
-/*
- * Define vector struct for scatter-gather (vector) operations
- * Vectors can be nested - if a vector element has negative length, then
- * the data pointer is treated as pointing to another vector array, with
- * '-vec_len' elements. Thus to append a header onto an existing vector,
- * you can do this:
- *
- * void foo(const struct vchi_msg_vector *v, int n)
- * {
- *    struct vchi_msg_vector nv[2];
- *    nv[0].vec_base = my_header;
- *    nv[0].vec_len = sizeof my_header;
- *    nv[1].vec_base = v;
- *    nv[1].vec_len = -n;
- *    ...
- *
- */
-struct vchi_msg_vector {
-	const void *vec_base;
-	int32_t vec_len;
-};
-
-/*
- * Iterator structure for reading ahead through received message queue.
- * Allocated by client, initialised by vchi_msg_look_ahead. Fields are for
- * internal VCHI use only.
- * Iterates over messages in queue at the instant of the call to
- * vchi_msg_lookahead - will not proceed to messages received since.
- * Behaviour is undefined if an iterator is used again after messages for that
- * service are removed/dequeued by any means other than vchi_msg_iter_...
- * calls on the iterator itself.
- */
-struct vchi_msg_iter {
-	struct opaque_vchi_service_t *service;
-	void *last;
-	void *next;
-	void *remove;
-};
-
 #endif // VCHI_COMMON_H_
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
