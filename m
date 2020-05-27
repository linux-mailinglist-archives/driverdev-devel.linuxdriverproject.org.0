Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 473041E409C
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A45886D64;
	Wed, 27 May 2020 11:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JzFkCnjXGqYC; Wed, 27 May 2020 11:54:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6342C86D36;
	Wed, 27 May 2020 11:54:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29E2C1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2687C88751
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFN1jk9k3kzq for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5BAC388738
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:18 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6073FAD17;
 Wed, 27 May 2020 11:54:19 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 06/50] staging: vchi: Get rid of vchiq_status_to_vchi()
Date: Wed, 27 May 2020 13:53:11 +0200
Message-Id: <20200527115400.31391-7-nsaenzjulienne@suse.de>
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

vchiq functions return an enum and vchi's ints. Those are compatible, no
need to explicitly cast them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_shim.c          | 25 ++++++++-----------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 429b0c71e455..0fc5fa05c6c2 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -9,8 +9,6 @@
 
 #include "vchiq_util.h"
 
-#define vchiq_status_to_vchi(status) ((int32_t)status)
-
 struct shim_service {
 	unsigned int handle;
 
@@ -105,7 +103,7 @@ int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
 		msleep(1);
 	}
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
@@ -146,7 +144,7 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 		break;
 	default:
 		WARN(1, "unsupported message\n");
-		return vchiq_status_to_vchi(VCHIQ_ERROR);
+		return VCHIQ_ERROR;
 	}
 
 	while (1) {
@@ -163,7 +161,7 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 		msleep(1);
 	}
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_bulk_queue_receive);
 
@@ -207,7 +205,7 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 		break;
 	default:
 		WARN(1, "unsupported message\n");
-		return vchiq_status_to_vchi(VCHIQ_ERROR);
+		return VCHIQ_ERROR;
 	}
 
 	while (1) {
@@ -225,7 +223,7 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 		msleep(1);
 	}
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 
@@ -372,7 +370,7 @@ int32_t vchi_initialise(struct vchi_instance_handle **instance_handle)
 
 	*instance_handle = (struct vchi_instance_handle *)instance;
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_initialise);
 
@@ -410,7 +408,7 @@ int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle)
 {
 	struct vchiq_instance *instance = (struct vchiq_instance *)instance_handle;
 
-	return vchiq_status_to_vchi(vchiq_shutdown(instance));
+	return vchiq_shutdown(instance);
 }
 EXPORT_SYMBOL(vchi_disconnect);
 
@@ -561,7 +559,7 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 		if (status == VCHIQ_SUCCESS)
 			service_free(service);
 
-		ret = vchiq_status_to_vchi(status);
+		ret = status;
 	}
 	return ret;
 }
@@ -576,7 +574,7 @@ int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *p
 		enum vchiq_status status;
 
 		status = vchiq_get_peer_version(service->handle, peer_version);
-		ret = vchiq_status_to_vchi(status);
+		ret = status;
 	}
 	return ret;
 }
@@ -598,7 +596,7 @@ int32_t vchi_service_use(const struct vchi_service_handle *handle)
 
 	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
-		ret = vchiq_status_to_vchi(vchiq_use_service(service->handle));
+		ret = vchiq_use_service(service->handle);
 	return ret;
 }
 EXPORT_SYMBOL(vchi_service_use);
@@ -619,8 +617,7 @@ int32_t vchi_service_release(const struct vchi_service_handle *handle)
 
 	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
-		ret = vchiq_status_to_vchi(
-			vchiq_release_service(service->handle));
+		ret = vchiq_release_service(service->handle);
 	return ret;
 }
 EXPORT_SYMBOL(vchi_service_release);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
