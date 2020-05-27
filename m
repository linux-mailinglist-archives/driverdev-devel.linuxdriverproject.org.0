Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A021E40A4
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B10482474E;
	Wed, 27 May 2020 11:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id utEJTd+0YVz1; Wed, 27 May 2020 11:54:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F12924912;
	Wed, 27 May 2020 11:54:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD8C1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C79A875E0
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myY5Hl47j7J0 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7113E875B4
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 77FDCAF16;
 Wed, 27 May 2020 11:54:22 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 10/50] staging: vchiq: Get rid of VCHIQ_SERVICE_OPENEND callback
 reason
Date: Wed, 27 May 2020 13:53:15 +0200
Message-Id: <20200527115400.31391-11-nsaenzjulienne@suse.de>
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

Nobody uses it and it's routinely discarded in vchi.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c       | 9 ---------
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c       | 4 ----
 2 files changed, 13 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ef31e541c902..ae9183db44ee 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1484,15 +1484,6 @@ parse_open(struct vchiq_state *state, struct vchiq_header *header)
 					: VCHIQ_SRVSTATE_OPEN);
 			}
 
-			service->remoteport = remoteport;
-			service->client_id = ((int *)header->data)[1];
-			if (make_service_callback(service, VCHIQ_SERVICE_OPENED,
-				NULL, NULL) == VCHIQ_RETRY) {
-				/* Bail out if not ready */
-				service->remoteport = VCHIQ_PORT_FREE;
-				goto bail_not_ready;
-			}
-
 			/* Success - the message has been dealt with */
 			unlock_service(service);
 			return 1;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 55f9e34ea50e..75d87b6992c4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -461,10 +461,6 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 				  VCHI_CALLBACK_SERVICE_CLOSED, NULL);
 		break;
 
-	case VCHIQ_SERVICE_OPENED:
-		/* No equivalent VCHI reason */
-		break;
-
 	case VCHIQ_BULK_TRANSMIT_ABORTED:
 		service->callback(service->callback_param,
 				  VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
