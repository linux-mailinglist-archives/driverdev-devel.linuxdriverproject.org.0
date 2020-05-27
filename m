Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA7D1E40AE
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2481686DA3;
	Wed, 27 May 2020 11:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KpfvmmTx1bT6; Wed, 27 May 2020 11:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCAFE86D2E;
	Wed, 27 May 2020 11:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 981401BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 952A387DC7
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJzh1n3iZm63 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E8B487DC2
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:37 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 29337AE2D;
 Wed, 27 May 2020 11:54:38 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 25/50] staging: vchiq: Introduce vchiq_validate_params()
Date: Wed, 27 May 2020 13:53:30 +0200
Message-Id: <20200527115400.31391-26-nsaenzjulienne@suse.de>
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

When adding a new service validate the configuration parameters
provided, and remove unnecessary checks in vchi, now that we have
validated service's config.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_core.c              | 15 +++++++++++++++
 .../interface/vchiq_arm/vchiq_shim.c              |  4 ----
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ae9183db44ee..46b09b7154f8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2265,6 +2265,16 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	return VCHIQ_ERROR;
 }
 
+static int vchiq_validate_params(const struct vchiq_service_params *params)
+{
+	if (!params->callback || !params->fourcc) {
+		vchiq_loud_error("Can't add service, invalid params\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /* Called from application thread when a client or server service is created. */
 struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
@@ -2275,8 +2285,13 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	struct vchiq_service *service;
 	struct vchiq_service __rcu **pservice = NULL;
 	struct vchiq_service_quota *service_quota;
+	int ret;
 	int i;
 
+	ret = vchiq_validate_params(params);
+	if (ret)
+		return NULL;
+
 	service = kmalloc(sizeof(*service), GFP_KERNEL);
 	if (!service)
 		return service;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index e09c595d6f9d..dcf8776834b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -271,15 +271,11 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	struct vchi_service *service =
 		(struct vchi_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
 
-	if (!service->callback)
-		goto release;
-
 	if (reason == VCHIQ_MESSAGE_AVAILABLE)
 		vchiu_queue_push(&service->queue, header);
 
 	service->callback(service->callback_param, reason, bulk_user);
 
-release:
 	return VCHIQ_SUCCESS;
 }
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
