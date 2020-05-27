Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D924C1E409F
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8EF8C887B1;
	Wed, 27 May 2020 11:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LeV67ZQZMsil; Wed, 27 May 2020 11:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FA2B8876A;
	Wed, 27 May 2020 11:54:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BB3E1BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 251FB2322B
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M4IWaL6xMUAY for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 1FD812045E
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:22 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 37455AF38;
 Wed, 27 May 2020 11:54:23 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 11/50] staging: vchi: Get rid of all useless callback reasons
Date: Wed, 27 May 2020 13:53:16 +0200
Message-Id: <20200527115400.31391-12-nsaenzjulienne@suse.de>
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

They are neither produced nor expected, so just delete them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchi/vchi_common.h              | 40 ++-----------------
 1 file changed, 3 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 7fc04e38936d..0f79bea4757d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -31,8 +31,6 @@ enum vchi_crc_control {
 
 //callback reasons when an event occurs on a service
 enum vchi_callback_reason {
-	VCHI_CALLBACK_REASON_MIN,
-
 	/*
 	 * This indicates that there is data available handle is the msg id that
 	 * was transmitted with the data
@@ -41,44 +39,12 @@ enum vchi_callback_reason {
 	 * Tasks get kicked by the callback, reset their event and try and read
 	 * from the fifo until it fails
 	 */
+	VCHI_CALLBACK_SERVICE_CLOSED,
 	VCHI_CALLBACK_MSG_AVAILABLE,
-	VCHI_CALLBACK_MSG_SENT,
-	VCHI_CALLBACK_MSG_SPACE_AVAILABLE, // XXX not yet implemented
-
-	// This indicates that a transfer from the other side has completed
-	VCHI_CALLBACK_BULK_RECEIVED,
-	//This indicates that data queued up to be sent has now gone
-	//handle is the msg id that was used when sending the data
 	VCHI_CALLBACK_BULK_SENT,
-	VCHI_CALLBACK_BULK_RX_SPACE_AVAILABLE, // XXX not yet implemented
-	VCHI_CALLBACK_BULK_TX_SPACE_AVAILABLE, // XXX not yet implemented
-
-	VCHI_CALLBACK_SERVICE_CLOSED,
-
-	/*
-	 * this side has sent XOFF to peer due to lack of data consumption by
-	 * service (suggests the service may need to take some recovery action
-	 * if it has been deliberately holding off consuming data)
-	 */
-	VCHI_CALLBACK_SENT_XOFF,
-	VCHI_CALLBACK_SENT_XON,
-
-	// indicates that a bulk transfer has finished reading the source buffer
-	VCHI_CALLBACK_BULK_DATA_READ,
-
-	// power notification events (currently host side only)
-	VCHI_CALLBACK_PEER_OFF,
-	VCHI_CALLBACK_PEER_SUSPENDED,
-	VCHI_CALLBACK_PEER_ON,
-	VCHI_CALLBACK_PEER_RESUMED,
-	VCHI_CALLBACK_FORCED_POWER_OFF,
-
-	// some extra notifications provided by vchiq_arm
-	VCHI_CALLBACK_SERVICE_OPENED,
-	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
+	VCHI_CALLBACK_BULK_RECEIVED,
 	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-
-	VCHI_CALLBACK_REASON_MAX
+	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
 };
 
 // service control options
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
