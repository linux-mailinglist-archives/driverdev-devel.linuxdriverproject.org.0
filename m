Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E631E41C2
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 14:14:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85A038879C;
	Wed, 27 May 2020 12:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eEHP7BICSLgX; Wed, 27 May 2020 12:14:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99A388879B;
	Wed, 27 May 2020 12:14:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC9ED1BF2FC
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 95C6C24B99
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNO+wXbJ3tTi for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 12:13:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id B671C203FB
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 12:13:47 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2B938AD17;
 Wed, 27 May 2020 11:55:02 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 46/50] staging: vchiq: Get rid of vchi
Date: Wed, 27 May 2020 13:53:51 +0200
Message-Id: <20200527115400.31391-47-nsaenzjulienne@suse.de>
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
 laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All the functions that vchi currently provides are a 1:1 mapping to its
vchiq counterparts. Get rid of vchi altogether and use vchiq's on all
services.

In the process also get rid of the vchi directory, as the only remaining
file was a TODO file, which now lives in the parent directory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/Makefile        |   1 -
 .../bcm2835-audio/bcm2835-vchiq.c             |  24 +--
 .../vc04_services/bcm2835-audio/bcm2835.h     |   1 -
 .../vc04_services/interface/{vchi => }/TODO   |   0
 .../vc04_services/interface/vchi/vchi.h       |  59 ------
 .../interface/vchiq_arm/vchiq_arm.c           |   2 +
 .../interface/vchiq_arm/vchiq_core.c          |   3 +
 .../interface/vchiq_arm/vchiq_shim.c          | 179 ------------------
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |   4 +-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  17 +-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.h  |   2 -
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     |  29 ++-
 12 files changed, 42 insertions(+), 279 deletions(-)
 rename drivers/staging/vc04_services/interface/{vchi => }/TODO (100%)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index 6a426572793b..e32c0744e7fc 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -6,7 +6,6 @@ vchiq-objs := \
    interface/vchiq_arm/vchiq_arm.o \
    interface/vchiq_arm/vchiq_2835_arm.o \
    interface/vchiq_arm/vchiq_debugfs.o \
-   interface/vchiq_arm/vchiq_shim.o \
    interface/vchiq_arm/vchiq_connected.o \
 
 obj-$(CONFIG_SND_BCM2835)		+= bcm2835-audio/
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index efaa2ae11f52..8c9ddd86fbbd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -25,12 +25,12 @@ MODULE_PARM_DESC(force_bulk, "Force use of vchiq bulk for audio");
 static void bcm2835_audio_lock(struct bcm2835_audio_instance *instance)
 {
 	mutex_lock(&instance->vchi_mutex);
-	vchi_service_use(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
 }
 
 static void bcm2835_audio_unlock(struct bcm2835_audio_instance *instance)
 {
-	vchi_service_release(instance->service_handle);
+	vchiq_release_service(instance->service_handle);
 	mutex_unlock(&instance->vchi_mutex);
 }
 
@@ -132,8 +132,8 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 	int status;
 
 	/* Open the VCHI service connections */
-	status = vchi_service_open(vchiq_instance, &params,
-				   &instance->service_handle);
+	status = vchiq_open_service(vchiq_instance, &params,
+				    &instance->service_handle);
 
 	if (status) {
 		dev_err(instance->dev,
@@ -143,7 +143,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 	}
 
 	/* Finished with the service for now */
-	vchi_service_release(instance->service_handle);
+	vchiq_release_service(instance->service_handle);
 
 	return 0;
 }
@@ -153,10 +153,10 @@ static void vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
 	int status;
 
 	mutex_lock(&instance->vchi_mutex);
-	vchi_service_use(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
 
 	/* Close all VCHI service connections */
-	status = vchi_service_close(instance->service_handle);
+	status = vchiq_close_service(instance->service_handle);
 	if (status) {
 		dev_err(instance->dev,
 			"failed to close VCHI service connection (status=%d)\n",
@@ -171,14 +171,14 @@ int bcm2835_new_vchi_ctx(struct device *dev, struct bcm2835_vchi_ctx *vchi_ctx)
 	int ret;
 
 	/* Initialize and create a VCHI connection */
-	ret = vchi_initialise(&vchi_ctx->instance);
+	ret = vchiq_initialise(&vchi_ctx->instance);
 	if (ret) {
 		dev_err(dev, "failed to initialise VCHI instance (ret=%d)\n",
 			ret);
 		return -EIO;
 	}
 
-	ret = vchi_connect(vchi_ctx->instance);
+	ret = vchiq_connect(vchi_ctx->instance);
 	if (ret) {
 		dev_dbg(dev, "failed to connect VCHI instance (ret=%d)\n",
 			ret);
@@ -195,7 +195,7 @@ int bcm2835_new_vchi_ctx(struct device *dev, struct bcm2835_vchi_ctx *vchi_ctx)
 void bcm2835_free_vchi_ctx(struct bcm2835_vchi_ctx *vchi_ctx)
 {
 	/* Close the VCHI connection - it will also free vchi_ctx->instance */
-	WARN_ON(vchi_disconnect(vchi_ctx->instance));
+	WARN_ON(vchiq_shutdown(vchi_ctx->instance));
 
 	vchi_ctx->instance = NULL;
 }
@@ -226,8 +226,8 @@ int bcm2835_audio_open(struct bcm2835_alsa_stream *alsa_stream)
 		goto deinit;
 
 	bcm2835_audio_lock(instance);
-	vchi_get_peer_version(instance->service_handle,
-			      &instance->peer_version);
+	vchiq_get_peer_version(instance->service_handle,
+			       &instance->peer_version);
 	bcm2835_audio_unlock(instance);
 	if (instance->peer_version < 2 || force_bulk)
 		instance->max_packet = 0; /* bulk transfer */
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index 7a0e4ab50fc7..a15f251033ac 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -10,7 +10,6 @@
 #include <sound/pcm.h>
 #include <sound/pcm-indirect.h>
 #include "interface/vchiq_arm/vchiq_if.h"
-#include "interface/vchi/vchi.h"
 
 #define MAX_SUBSTREAMS   (8)
 #define AVAIL_SUBSTREAMS_MASK  (0xff)
diff --git a/drivers/staging/vc04_services/interface/vchi/TODO b/drivers/staging/vc04_services/interface/TODO
similarity index 100%
rename from drivers/staging/vc04_services/interface/vchi/TODO
rename to drivers/staging/vc04_services/interface/TODO
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
deleted file mode 100644
index 6de5df43cc29..000000000000
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ /dev/null
@@ -1,59 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHI_H_
-#define VCHI_H_
-
-/******************************************************************************
- * Global funcs - implementation is specific to which side you are on
- * (local / remote)
- *****************************************************************************/
-
-// Routine used to initialise the vchi on both local + remote connections
-extern int32_t vchi_initialise(struct vchiq_instance **instance);
-
-extern int32_t vchi_connect(struct vchiq_instance *instance);
-
-//When this is called, ensure that all services have no data pending.
-//Bulk transfers can remain 'queued'
-extern int32_t vchi_disconnect(struct vchiq_instance *instance);
-
-/******************************************************************************
- * Global service API
- *****************************************************************************/
-// Routine to open a named service
-extern int vchi_service_open(struct vchiq_instance *instance,
-			    struct vchiq_service_params *params,
-			    unsigned *handle);
-
-extern int32_t vchi_get_peer_version(unsigned handle, short *peer_version);
-
-// Routine to close a named service
-extern int32_t vchi_service_close(unsigned handle);
-
-// Routine to increment ref count on a named service
-extern int32_t vchi_service_use(unsigned handle);
-
-// Routine to decrement ref count on a named service
-extern int32_t vchi_service_release(unsigned handle);
-
-// Routine to look at a message in place.
-// The message is dequeued, so the caller is left holding it; the descriptor is
-// filled in and must be released when the user has finished with the message.
-struct vchiq_header *vchi_msg_hold(unsigned handle);
-
-/*******************************************************************************
- * Global service support API - operations on held messages
- * and message iterators
- ******************************************************************************/
-
-// Routine to release a held message after it has been processed
-extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message);
-
-/******************************************************************************
- * Configuration plumbing
- *****************************************************************************/
-
-#endif /* VCHI_H_ */
-
-/****************************** End of file **********************************/
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 524128225766..f266d5a3a7a5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2576,6 +2576,7 @@ vchiq_use_service(unsigned int handle)
 	}
 	return ret;
 }
+EXPORT_SYMBOL(vchiq_use_service);
 
 enum vchiq_status
 vchiq_release_service(unsigned int handle)
@@ -2589,6 +2590,7 @@ vchiq_release_service(unsigned int handle)
 	}
 	return ret;
 }
+EXPORT_SYMBOL(vchiq_release_service);
 
 struct service_data_struct {
 	int fourcc;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ee11707b7476..a0525edc3093 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2946,6 +2946,7 @@ vchiq_close_service(unsigned int handle)
 
 	return status;
 }
+EXPORT_SYMBOL(vchiq_close_service);
 
 enum vchiq_status
 vchiq_remove_service(unsigned int handle)
@@ -3268,6 +3269,7 @@ vchiq_release_message(unsigned int handle,
 
 	unlock_service(service);
 }
+EXPORT_SYMBOL(vchiq_release_message);
 
 static void
 release_message_sync(struct vchiq_state *state, struct vchiq_header *header)
@@ -3294,6 +3296,7 @@ vchiq_get_peer_version(unsigned int handle, short *peer_version)
 		unlock_service(service);
 	return status;
 }
+EXPORT_SYMBOL(vchiq_get_peer_version);
 
 void vchiq_get_config(struct vchiq_config *config)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
deleted file mode 100644
index 57ac6a289a08..000000000000
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ /dev/null
@@ -1,179 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-#include <linux/module.h>
-#include <linux/types.h>
-#include <linux/slab.h>
-#include <linux/delay.h>
-
-#include "vchiq_if.h"
-#include "../vchi/vchi.h"
-#include "vchiq.h"
-
-/***********************************************************
- * Name: vchi_held_msg_release
- *
- * Arguments:  unsgined handle
- *	       struct vchiq_header *message
- *
- * Description: Routine to release a held message (after it has been read with
- *              vchi_msg_hold)
- *
- * Returns: int - success == 0
- *
- ***********************************************************/
-int vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
-{
-	/*
-	 * Convert the service field pointer back to an
-	 * unsigned int which is an int.
-	 * This pointer is opaque to everything except
-	 * vchi_msg_hold which simply upcasted the int
-	 * to a pointer.
-	 */
-
-	vchiq_release_message(handle, message);
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_held_msg_release);
-
-/***********************************************************
- * Name: vchi_msg_hold
- *
- * Arguments:  struct vchi_service *service,
- *             void **data,
- *             unsigned *msg_size,
- *             struct vchiq_header **message
- *
- * Description: Routine to return a pointer to the current message (to allow
- *              in place processing). The message is dequeued - don't forget
- *              to release the message using vchi_held_msg_release when you're
- *              finished.
- *
- * Returns: int - success == 0
- *
- ***********************************************************/
-struct vchiq_header *vchi_msg_hold(unsigned handle)
-{
-	return vchiq_msg_hold(handle);
-}
-EXPORT_SYMBOL(vchi_msg_hold);
-
-/***********************************************************
- * Name: vchi_initialise
- *
- * Arguments: struct vchiq_instance **instance
- *
- * Description: Initialises the hardware but does not transmit anything
- *              When run as a Host App this will be called twice hence the need
- *              to malloc the state information
- *
- * Returns: 0 if successful, failure otherwise
- *
- ***********************************************************/
-
-int vchi_initialise(struct vchiq_instance **instance)
-{
-	return vchiq_initialise(instance);
-}
-EXPORT_SYMBOL(vchi_initialise);
-
-/***********************************************************
- * Name: vchi_connect
- *
- * Arguments: struct vchiq_instance *instance
- *
- * Description: Starts the command service on each connection,
- *              causing INIT messages to be pinged back and forth
- *
- * Returns: 0 if successful, failure otherwise
- *
- ***********************************************************/
-int vchi_connect(struct vchiq_instance *instance)
-{
-	return vchiq_connect(instance);
-}
-EXPORT_SYMBOL(vchi_connect);
-
-/***********************************************************
- * Name: vchi_disconnect
- *
- * Arguments: struct vchiq_instance *instance
- *
- * Description: Stops the command service on each connection,
- *              causing DE-INIT messages to be pinged back and forth
- *
- * Returns: 0 if successful, failure otherwise
- *
- ***********************************************************/
-int vchi_disconnect(struct vchiq_instance *instance)
-{
-	return vchiq_shutdown(instance);
-}
-EXPORT_SYMBOL(vchi_disconnect);
-
-/***********************************************************
- * Name: vchi_service_open
- * Name: vchi_service_create
- *
- * Arguments: struct vchiq_instance *instance
- *            struct service_creation *setup,
- *            unsigned *handle
- *
- * Description: Routine to open a service
- *
- * Returns: int - success == 0
- *
- ***********************************************************/
-
-int vchi_service_open(struct vchiq_instance *instance,
-		      struct vchiq_service_params *params,
-		      unsigned *handle)
-{
-	return vchiq_open_service(instance, params, handle);
-}
-EXPORT_SYMBOL(vchi_service_open);
-
-int vchi_service_close(unsigned handle)
-{
-	return vchiq_close_service(handle);
-}
-EXPORT_SYMBOL(vchi_service_close);
-
-int vchi_get_peer_version(unsigned handle, short *peer_version)
-{
-	return vchiq_get_peer_version(handle, peer_version);
-}
-EXPORT_SYMBOL(vchi_get_peer_version);
-
-/***********************************************************
- * Name: vchi_service_use
- *
- * Arguments: unsigned handle
- *
- * Description: Routine to increment refcount on a service
- *
- * Returns: void
- *
- ***********************************************************/
-int vchi_service_use(unsigned handle)
-{
-	return vchiq_use_service(handle);
-}
-EXPORT_SYMBOL(vchi_service_use);
-
-/***********************************************************
- * Name: vchi_service_release
- *
- * Arguments: unsigned handle
- *
- * Description: Routine to decrement refcount on a service
- *
- * Returns: void
- *
- ***********************************************************/
-int vchi_service_release(unsigned handle)
-{
-	return vchiq_release_service(handle);
-}
-EXPORT_SYMBOL(vchi_service_release);
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index fcef607e9446..572068538a4c 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -1516,7 +1516,7 @@ static void vc_sm_connected_init(void)
 	 * Initialize and create a VCHI connection for the shared memory service
 	 * running on videocore.
 	 */
-	ret = vchi_initialise(&instance);
+	ret = vchiq_initialise(&instance);
 	if (ret) {
 		pr_err("[%s]: failed to initialise VCHI instance (ret=%d)\n",
 		       __func__, ret);
@@ -1524,7 +1524,7 @@ static void vc_sm_connected_init(void)
 		return;
 	}
 
-	ret = vchi_connect(instance);
+	ret = vchiq_connect(instance);
 	if (ret) {
 		pr_err("[%s]: failed to connect VCHI instance (ret=%d)\n",
 		       __func__, ret);
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index dc8c469b37d2..1ff165c05706 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -183,13 +183,13 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 	while (1) {
 		if (svc_use)
-			vchi_service_release(instance->service_handle);
+			vchiq_release_service(instance->service_handle);
 		svc_use = 0;
 
 		if (wait_for_completion_interruptible(&instance->io_cmplt))
 			continue;
 
-		vchi_service_use(instance->service_handle);
+		vchiq_use_service(instance->service_handle);
 		svc_use = 1;
 
 		do {
@@ -234,7 +234,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 		} while (1);
 
 		while (1) {
-			message = vchi_msg_hold(instance->service_handle);
+			message = vchiq_msg_hold(instance->service_handle);
 			if (!message)
 				break;
 			reply = (struct vc_sm_result_t *)message->data;
@@ -250,7 +250,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 						      reply_len);
 			}
 
-			vchi_held_msg_release(instance->service_handle, message);
+			vchiq_release_message(instance->service_handle, message);
 		}
 
 		/* Go through the dead list and free them */
@@ -323,7 +323,8 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 	params.userdata = instance;
 
 	/* Open the VCHI service connections */
-	status = vchi_service_open(vchiq_instance, &params, &instance->service_handle);
+	status = vchiq_open_service(vchiq_instance, &params,
+				    &instance->service_handle);
 	if (status) {
 		pr_err("%s: failed to open VCHI service (%d)",
 		       __func__, status);
@@ -347,7 +348,7 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 	return instance;
 
 err_close_services:
-	vchi_service_close(instance->service_handle);
+	vchiq_close_service(instance->service_handle);
 	kfree(instance);
 	pr_debug("%s: FAILED", __func__);
 	return NULL;
@@ -369,8 +370,8 @@ int vc_sm_cma_vchi_stop(struct sm_instance **handle)
 
 	instance = *handle;
 
-	vchi_service_use(instance->service_handle);
-	vchi_service_close(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
+	vchiq_close_service(instance->service_handle);
 
 	kfree(instance);
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h
index 09ef0fc59566..ba86610b8d3f 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h
@@ -13,8 +13,6 @@
 #ifndef __VC_SM_CMA_VCHI_H__INCLUDED__
 #define __VC_SM_CMA_VCHI_H__INCLUDED__
 
-#include "interface/vchi/vchi.h"
-
 #include "vc_sm_defs.h"
 
 /*
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 664547c8e4a9..c5f59d71badf 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -33,7 +33,6 @@
 #include "vc-sm-cma/vc_sm_knl.h"
 
 #include "interface/vchiq_arm/vchiq_if.h"
-#include "interface/vchi/vchi.h"
 
 /*
  * maximum number of components supported.
@@ -292,7 +291,7 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 		/* Dummy receive to ensure the buffers remain in order */
 		len = 8;
 	/* queue the bulk submission */
-	vchi_service_use(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
 	ret = vchiq_bulk_receive(instance->service_handle,
 				 msg_context->u.bulk.buffer->buffer,
 			         /* Actual receive needs to be a multiple
@@ -302,7 +301,7 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 			         msg_context,
 			         VCHIQ_BULK_MODE_CALLBACK);
 
-	vchi_service_release(instance->service_handle);
+	vchiq_release_service(instance->service_handle);
 
 	if (ret != 0)
 		pr_err("%s: ctx: %p, vchiq_bulk_receive failed %d\n",
@@ -450,13 +449,13 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	/* no payload in message */
 	m.u.buffer_from_host.payload_in_message = 0;
 
-	vchi_service_use(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
 
 	ret = vchiq_queue_kernel_message(instance->service_handle, &m,
 					 sizeof(struct mmal_msg_header) +
 					 sizeof(m.u.buffer_from_host));
 
-	vchi_service_release(instance->service_handle);
+	vchiq_release_service(instance->service_handle);
 
 	return ret;
 }
@@ -803,13 +802,13 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	DBG_DUMP_MSG(msg, (sizeof(struct mmal_msg_header) + payload_len),
 		     ">>> sync message");
 
-	vchi_service_use(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
 
 	ret = vchiq_queue_kernel_message(instance->service_handle, msg,
 					 sizeof(struct mmal_msg_header) +
 					 payload_len);
 
-	vchi_service_release(instance->service_handle);
+	vchiq_release_service(instance->service_handle);
 
 	if (ret) {
 		pr_err("error %d queuing message\n", ret);
@@ -2066,9 +2065,9 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 	if (mutex_lock_interruptible(&instance->vchiq_mutex))
 		return -EINTR;
 
-	vchi_service_use(instance->service_handle);
+	vchiq_use_service(instance->service_handle);
 
-	status = vchi_service_close(instance->service_handle);
+	status = vchiq_close_service(instance->service_handle);
 	if (status != 0)
 		pr_err("mmal-vchiq: VCHIQ close failed\n");
 
@@ -2114,14 +2113,14 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	BUILD_BUG_ON(sizeof(struct mmal_port) != 64);
 
 	/* create a vchi instance */
-	status = vchi_initialise(&vchiq_instance);
+	status = vchiq_initialise(&vchiq_instance);
 	if (status) {
 		pr_err("Failed to initialise VCHI instance (status=%d)\n",
 		       status);
 		return -EIO;
 	}
 
-	status = vchi_connect(vchiq_instance);
+	status = vchiq_connect(vchiq_instance);
 	if (status) {
 		pr_err("Failed to connect VCHI instance (status=%d)\n", status);
 		return -EIO;
@@ -2146,22 +2145,22 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	if (!instance->bulk_wq)
 		goto err_free;
 
-	status = vchi_service_open(vchiq_instance, &params,
-				   &instance->service_handle);
+	status = vchiq_open_service(vchiq_instance, &params,
+				    &instance->service_handle);
 	if (status) {
 		pr_err("Failed to open VCHI service connection (status=%d)\n",
 		       status);
 		goto err_close_services;
 	}
 
-	vchi_service_release(instance->service_handle);
+	vchiq_release_service(instance->service_handle);
 
 	*out_instance = instance;
 
 	return 0;
 
 err_close_services:
-	vchi_service_close(instance->service_handle);
+	vchiq_close_service(instance->service_handle);
 	destroy_workqueue(instance->bulk_wq);
 err_free:
 	vfree(instance->bulk_scratch);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
