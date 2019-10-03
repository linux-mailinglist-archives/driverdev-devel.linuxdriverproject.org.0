Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 334E0CADB1
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 20:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D39D877AB;
	Thu,  3 Oct 2019 18:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q268uR3rCaqH; Thu,  3 Oct 2019 18:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45E78876D4;
	Thu,  3 Oct 2019 18:03:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84E121BF3DA
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 18:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64CCB22654
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 18:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kk8ngQWh3lGu for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 18:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 2884E22775
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 18:03:23 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id y204so1212994yby.10
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 11:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gMkIJc7maLpy0B0IUU0rr4pEq6kA8K3pEg41oVgYte4=;
 b=uqAm2Q9KjozDkJChmIhh46MJKv2R/HMaT9yXsy8sP1tiSMN4wUUMzluOG7WA6NQVUi
 TGZh5OWPOEvYk+sUc8iDMziJN2sYg15VQXGOib+0lOk3DBItu/p6jXnKwwgxU31PRlYa
 s6Zvm3m4V+l92G9WeOhBCXQjLCPxB9jneZf3opg8uKaU7QBbHtHYMEETmCbsCQJYNsRf
 iHVvFGGTesGIdqYHy0ZJCT18CfkoEVCMEiLMDAOYEnYuz5/FacrjxUwYKNb+dPXLk5Lm
 lPtZQ0cOIXPKShYVHaQ+VJuxzmJ5FzbSnlDaY21E4+iAuBPRunS3RnMX7nZWTqV/BnGv
 6H6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gMkIJc7maLpy0B0IUU0rr4pEq6kA8K3pEg41oVgYte4=;
 b=AOe7gNcwbifs1Ez5gBAZzaSZG5SmIszfutgwXLC1VQKz1q85lXgp09iKSOzdAa/7C7
 PsumfFZdFS1vajTXY1AknS/HC+q5811JBTljqVeFHKbcYmPCSYmy2+SbuRTv3g18xfa/
 EOEjJ5xrw0vs0tpv7rJD3h9AFvCpbhd0tJ+8KAKy4x6UWpy/zZr6thx+3w4PZcRIizFP
 hyqw6PvrP11O0/qU8QIZ+PwxkYEnogJWZkqx6toz9IW7mB3SP3ptBsoLZFEAkAAalcGt
 SpbPjRkAy/RZaj5z0jvdf+Eo4sXfvNH+/WB3D2wicOFUunX4Pe/hgyhofPEXfoH7GO7A
 Q8Dw==
X-Gm-Message-State: APjAAAVscjnRovH+Svi1o06CgYBMy2LMHcdvnn9fiHIN5eQEFQWKcaeD
 pjZX9gzyHwiPJvwMKBah2hk=
X-Google-Smtp-Source: APXvYqxpA458ce2lykz3M1HCMxMOnpA3nJj6sD14buNi86BRg3Su0Ziht6Dd8JTQ9bcdJA5WIpJZHQ==
X-Received: by 2002:a25:6fc1:: with SMTP id k184mr7088466ybc.8.1570125802097; 
 Thu, 03 Oct 2019 11:03:22 -0700 (PDT)
Received: from ubuntu ([107.15.113.108])
 by smtp.gmail.com with ESMTPSA id u69sm830273ywu.93.2019.10.03.11.03.20
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 03 Oct 2019 11:03:21 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Avoid typedef
Date: Thu,  3 Oct 2019 11:03:17 -0700
Message-Id: <1570125797-24410-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Nachammai Karuppiah <nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Avoid typedefs to maintain kernel coding style. Issue found by
checkpatch.pl

Replace the enum typedef VCHIQ_REASON_T with vchiq_reason.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 4 ++--
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b1..280e237 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -516,7 +516,7 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 ***************************************************************************/
 
 static VCHIQ_STATUS_T
-add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
+add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
 	       struct vchiq_header *header, struct user_service *user_service,
 	       void *bulk_userdata)
 {
@@ -583,7 +583,7 @@ add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
 ***************************************************************************/
 
 static VCHIQ_STATUS_T
-service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
+service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 		 VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
 {
 	/* How do we ensure the callback goes to the right client?
@@ -1666,7 +1666,7 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
 }
 
 struct vchiq_completion_data32 {
-	VCHIQ_REASON_T reason;
+	enum vchiq_reason reason;
 	compat_uptr_t header;
 	compat_uptr_t service_userdata;
 	compat_uptr_t bulk_userdata;
@@ -2271,7 +2271,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 }
 
 static VCHIQ_STATUS_T
-vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T reason,
+vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
 	struct vchiq_header *header,
 	VCHIQ_SERVICE_HANDLE_T service_user,
 	void *bulk_user)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 56a23a2..b0e0653 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -355,7 +355,7 @@ mark_service_closing(struct vchiq_service *service)
 }
 
 static inline VCHIQ_STATUS_T
-make_service_callback(struct vchiq_service *service, VCHIQ_REASON_T reason,
+make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
 		      struct vchiq_header *header, void *bulk_userdata)
 {
 	VCHIQ_STATUS_T status;
@@ -1230,7 +1230,7 @@ notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
 					spin_unlock(&bulk_waiter_spinlock);
 				} else if (bulk->mode ==
 					VCHIQ_BULK_MODE_CALLBACK) {
-					VCHIQ_REASON_T reason = (bulk->dir ==
+					enum vchiq_reason reason = (bulk->dir ==
 						VCHIQ_BULK_TRANSMIT) ?
 						((bulk->actual ==
 						VCHIQ_BULK_ACTUAL_ABORTED) ?
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index c23bd10..f911612 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -15,7 +15,7 @@
 #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
 #define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
 
-typedef enum {
+enum vchiq_reason {
 	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
 	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
 	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
@@ -23,7 +23,7 @@ typedef enum {
 	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
 	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
 	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
-} VCHIQ_REASON_T;
+};
 
 typedef enum {
 	VCHIQ_ERROR   = -1,
@@ -63,7 +63,7 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(VCHIQ_REASON_T,
+typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
 					   struct vchiq_header *,
 					   VCHIQ_SERVICE_HANDLE_T, void *);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 460ccea..c2343a1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -32,7 +32,7 @@ struct vchiq_queue_bulk_transfer {
 };
 
 struct vchiq_completion_data {
-	VCHIQ_REASON_T reason;
+	enum vchiq_reason reason;
 	struct vchiq_header *header;
 	void *service_userdata;
 	void *bulk_userdata;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index a2268d5..e02518d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -509,7 +509,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  ***********************************************************/
 
-static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
+static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
 				    struct vchiq_header *header,
 				    VCHIQ_SERVICE_HANDLE_T handle,
 				    void *bulk_user)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
