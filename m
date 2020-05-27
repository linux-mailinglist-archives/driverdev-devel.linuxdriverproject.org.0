Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCAA1E409B
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3002886D1D;
	Wed, 27 May 2020 11:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JlOaZFZAjucT; Wed, 27 May 2020 11:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B59086D2A;
	Wed, 27 May 2020 11:54:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29C971BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2638F88751
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPUqoYBxeakh for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 959E488738
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:17 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A26A8ACF2;
 Wed, 27 May 2020 11:54:18 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 05/50] staging: vchi: Get rid of vchi_service_set_option()
Date: Wed, 27 May 2020 13:53:10 +0200
Message-Id: <20200527115400.31391-6-nsaenzjulienne@suse.de>
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

There are no users for that function.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  5 ---
 .../interface/vchiq_arm/vchiq_shim.c          | 31 -------------------
 2 files changed, 36 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 62d9d3efa755..1e8d17531e9d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -100,11 +100,6 @@ extern int32_t vchi_service_use(const struct vchi_service_handle *handle);
 // Routine to decrement ref count on a named service
 extern int32_t vchi_service_release(const struct vchi_service_handle *handle);
 
-// Routine to set a control option for a named service
-extern int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
-				       enum vchi_service_option option,
-				       int value);
-
 /* Routine to send a message from kernel memory across a service */
 extern int
 vchi_queue_kernel_message(struct vchi_service_handle *handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 081ab67ad6fd..429b0c71e455 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -567,37 +567,6 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
-				enum vchi_service_option option,
-				int value)
-{
-	int32_t ret = -1;
-	struct shim_service *service = (struct shim_service *)handle;
-	enum vchiq_service_option vchiq_option;
-
-	switch (option) {
-	case VCHI_SERVICE_OPTION_TRACE:
-		vchiq_option = VCHIQ_SERVICE_OPTION_TRACE;
-		break;
-	case VCHI_SERVICE_OPTION_SYNCHRONOUS:
-		vchiq_option = VCHIQ_SERVICE_OPTION_SYNCHRONOUS;
-		break;
-	default:
-		service = NULL;
-		break;
-	}
-	if (service) {
-		enum vchiq_status status =
-			vchiq_set_service_option(service->handle,
-						vchiq_option,
-						value);
-
-		ret = vchiq_status_to_vchi(status);
-	}
-	return ret;
-}
-EXPORT_SYMBOL(vchi_service_set_option);
-
 int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *peer_version)
 {
 	int32_t ret = -1;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
