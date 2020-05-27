Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D641E41BF
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 14:14:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2568087EC5;
	Wed, 27 May 2020 12:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhrCfkBbvvzF; Wed, 27 May 2020 12:14:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDB1A87EA6;
	Wed, 27 May 2020 12:13:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E18B1BF2FC
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85B2187E93
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8AIo4-buqVPX for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 12:13:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8694C87E77
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 12:13:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DD722AF39;
 Wed, 27 May 2020 11:54:56 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 42/50] staging: vchiq: Move definitions only used by core into
 core header
Date: Wed, 27 May 2020 13:53:47 +0200
Message-Id: <20200527115400.31391-43-nsaenzjulienne@suse.de>
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

vchiq_if.h is used by service consumers and only the exported API should
be present. Move the rest of definitions, which were not exported by the
way, to vchiq_core.h where they belong.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_core.h          | 22 +++++++++++++++++++
 .../interface/vchiq_arm/vchiq_if.h            | 16 --------------
 2 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index b97b661bea1c..ff91c04ba6b9 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -486,6 +486,18 @@ struct bulk_waiter {
 	int actual;
 };
 
+struct vchiq_config {
+	unsigned int max_msg_size;
+	unsigned int bulk_threshold; /* The message size above which it
+					is better to use a bulk transfer
+					(<= max_msg_size) */
+	unsigned int max_outstanding_bulks;
+	unsigned int max_services;
+	short version;      /* The version of VCHIQ */
+	short version_min;  /* The minimum compatible version of VCHIQ */
+};
+
+
 extern spinlock_t bulk_waiter_spinlock;
 
 extern int vchiq_core_log_level;
@@ -665,4 +677,14 @@ extern void
 vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
 	size_t numBytes);
 
+extern enum vchiq_status vchiq_remove_service(unsigned int service);
+
+extern int vchiq_get_client_id(unsigned int service);
+
+extern void vchiq_get_config(struct vchiq_config *config);
+
+extern enum vchiq_status
+vchiq_set_service_option(unsigned int service, enum vchiq_service_option option,
+			 int value);
+
 #endif
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index b852980447dc..931debcd6492 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -78,17 +78,6 @@ struct vchiq_service_params {
 	short version_min;   /* Update for incompatible changes */
 };
 
-struct vchiq_config {
-	unsigned int max_msg_size;
-	unsigned int bulk_threshold; /* The message size above which it
-					is better to use a bulk transfer
-					(<= max_msg_size) */
-	unsigned int max_outstanding_bulks;
-	unsigned int max_services;
-	short version;      /* The version of VCHIQ */
-	short version_min;  /* The minimum compatible version of VCHIQ */
-};
-
 struct vchiq_instance;
 
 extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
@@ -98,7 +87,6 @@ extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
 	const struct vchiq_service_params *params,
 	unsigned int *pservice);
 extern enum vchiq_status vchiq_close_service(unsigned int service);
-extern enum vchiq_status vchiq_remove_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
 extern enum vchiq_status vchiq_queue_kernel_message(unsigned int handle,
@@ -112,11 +100,7 @@ extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
 extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
 	void *data, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
-extern int   vchiq_get_client_id(unsigned int service);
 extern void *vchiq_get_service_userdata(unsigned int service);
-extern void vchiq_get_config(struct vchiq_config *config);
-extern enum vchiq_status vchiq_set_service_option(unsigned int service,
-	enum vchiq_service_option option, int value);
 extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
 extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
