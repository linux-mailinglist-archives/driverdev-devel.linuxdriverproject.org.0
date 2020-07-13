Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A6A21D8AD
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 16:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7567D86463;
	Mon, 13 Jul 2020 14:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKv-OmQDaBDr; Mon, 13 Jul 2020 14:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E7EA85F9D;
	Mon, 13 Jul 2020 14:37:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48FA21BF3A1
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 14:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40E3F203E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 14:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lS7QJ7Jf7-Uu for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 14:37:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id E3D1620399
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 14:37:15 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id b92so6343102pjc.4
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 07:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6h4nc4PcIrIUv15+ByYYiTsFlJJxjA7wtMBBwHQX5v0=;
 b=BXkjoQfx48H2e6nBUni5xxwkx5mRQrvIrPnoDE+R8Qva8vJwI+BS0BPVCEmsH2q+yr
 I461L736DFMAP+3S4jPi5ynyR4LyBhETmOpXzWTiiqyk4YmxNBwsq0WEd7oO3+VhErRV
 KgrrHOYFYzLdSRBB2j/v9xLwH3OW5YWoNyrbPKjI29gNCrTPxpsUaYZwSPPZ0Z8pq02M
 YjiCkTmMqXlm5j4kXJARs4goGChtn3lzj25n4TcqDtII8yUu78H+SZnMSq68BFAFOBon
 mlZfie0wJtmVDmzqmRxXeiCsHE5S5v1g9drYRQGuj6IdyRPTxwrIzGsxDYLqZJ+yxZWU
 tFvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6h4nc4PcIrIUv15+ByYYiTsFlJJxjA7wtMBBwHQX5v0=;
 b=dwHVY6aLyZW+ZGbwQmPPeSjMz2rTlOOsG7M0S4K4K5+hwwTBMAUErkTv7QzkG/gcjI
 2otqTCmrENojw5c0OKRW5jAPWA4bc2OORGT8wZkrB6P1Mmy3ItMdrOruLvj99VjQ62e7
 JEVLYHdqAiYgMPtCHNxil4tPKL9fRr5R+BjDsbST2VTv1TnxXjunVOvaG5DTwIxQ9nBO
 5QTtU//epfSLaT51sr87DxV6mhJctEvsct8HEytsKWFI3sx8PjWKgaHGgy1aS9xlR+vE
 zJ/Fp7R49Y0+RZiPwqk6WeYpG7KOtcPBXma2dAFoVjOcQGllc4aAjW0wkGgCrM9lIXQo
 YbMw==
X-Gm-Message-State: AOAM532Le7XxIGHSBJf2R0UhBlKYH2dNhH+GdhRsjcAFwCglqBdbBjxV
 FFtBxrVxmmnJJOis+G6YVlE=
X-Google-Smtp-Source: ABdhPJxlYOPflhEqsOIGOMz/15FQEGURw1GaUxETKRiOmGKPsMhrDUr8X9XyvRWLjRPkZMdC/uXvvQ==
X-Received: by 2002:a17:902:b113:: with SMTP id q19mr1388plr.170.1594651035151; 
 Mon, 13 Jul 2020 07:37:15 -0700 (PDT)
Received: from localhost.localdomain ([103.88.59.5])
 by smtp.googlemail.com with ESMTPSA id b13sm15094820pjl.7.2020.07.13.07.37.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jul 2020 07:37:14 -0700 (PDT)
From: Baidyanath Kundu <kundubaidya99@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] Staging: vc04_services: Fix unsigned int warnings
Date: Mon, 13 Jul 2020 20:06:53 +0530
Message-Id: <20200713143653.32332-1-kundubaidya99@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Baidyanath Kundu <kundubaidya99@gmail.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Signed-off-by: Baidyanath Kundu <kundubaidya99@gmail.com>
---
 .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c   | 4 ++--
 .../vc04_services/include/linux/raspberrypi/vchiq.h       | 8 ++++----
 .../vc04_services/interface/vchiq_arm/vchiq_core.c        | 6 +++---
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c     | 4 ++--
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 8c9ddd86fbbd..292fcee9d6f2 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -9,7 +9,7 @@
 
 struct bcm2835_audio_instance {
 	struct device *dev;
-	unsigned service_handle;
+	unsigned int service_handle;
 	struct completion msg_avail_comp;
 	struct mutex vchi_mutex;
 	struct bcm2835_alsa_stream *alsa_stream;
@@ -91,7 +91,7 @@ static int bcm2835_audio_send_simple(struct bcm2835_audio_instance *instance,
 
 static enum vchiq_status audio_vchi_callback(enum vchiq_reason reason,
 					     struct vchiq_header *header,
-					     unsigned handle, void *userdata)
+					     unsigned int handle, void *userdata)
 {
 	struct bcm2835_audio_instance *instance = vchiq_get_service_userdata(handle);
 	struct vc_audio_msg *m;
diff --git a/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h b/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
index cb9ef9a4150b..18d63df368c4 100644
--- a/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
+++ b/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
@@ -84,11 +84,11 @@ extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
 extern enum vchiq_status vchiq_close_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
+extern void vchiq_msg_queue_push(unsigned int handle, struct vchiq_header *header);
 extern void           vchiq_release_message(unsigned int service,
 	struct vchiq_header *header);
-extern int vchiq_queue_kernel_message(unsigned handle, void *data,
-				      unsigned size);
+extern int vchiq_queue_kernel_message(unsigned int handle, void *data,
+				      unsigned int size);
 extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
 	const void *data, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
@@ -98,6 +98,6 @@ extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
 extern void *vchiq_get_service_userdata(unsigned int service);
 extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
-extern struct vchiq_header *vchiq_msg_hold(unsigned handle);
+extern struct vchiq_header *vchiq_msg_hold(unsigned int handle);
 
 #endif /* VCHIQ_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 1bc4ce577614..af64cde82d36 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2275,7 +2275,7 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	return VCHIQ_ERROR;
 }
 
-void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header)
+void vchiq_msg_queue_push(unsigned int handle, struct vchiq_header *header)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
 	int pos;
@@ -2293,7 +2293,7 @@ void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header)
 }
 EXPORT_SYMBOL(vchiq_msg_queue_push);
 
-struct vchiq_header *vchiq_msg_hold(unsigned handle)
+struct vchiq_header *vchiq_msg_hold(unsigned int handle)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
 	struct vchiq_header *header;
@@ -3214,7 +3214,7 @@ vchiq_queue_message(unsigned int handle,
 	return status;
 }
 
-int vchiq_queue_kernel_message(unsigned handle, void *data, unsigned size)
+int vchiq_queue_kernel_message(unsigned int handle, void *data, unsigned int size)
 {
 	enum vchiq_status status;
 
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index a075cd63da7f..dc767730db43 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -163,7 +163,7 @@ struct mmal_msg_context {
 };
 
 struct vchiq_mmal_instance {
-	unsigned service_handle;
+	unsigned int service_handle;
 
 	/* ensure serialised access to service */
 	struct mutex vchiq_mutex;
@@ -548,7 +548,7 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 /* incoming event service callback */
 static enum vchiq_status service_callback(enum vchiq_reason reason,
 					  struct vchiq_header *header,
-					  unsigned handle, void *bulk_ctx)
+					  unsigned int handle, void *bulk_ctx)
 {
 	struct vchiq_mmal_instance *instance = vchiq_get_service_userdata(handle);
 	u32 msg_len;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
