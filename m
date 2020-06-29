Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CAB20CF60
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F6B7893E8;
	Mon, 29 Jun 2020 15:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ES7DBVUnfyF; Mon, 29 Jun 2020 15:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 935C1893C7;
	Mon, 29 Jun 2020 15:10:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 474ED1BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 431D888798
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bM80nLpM93Ne for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:09:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CF8788783
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:09:58 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id A6990AF63;
 Mon, 29 Jun 2020 15:09:56 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 09/47] staging: vchi: Get rid of all useless callback
 reasons
Date: Mon, 29 Jun 2020 17:09:07 +0200
Message-Id: <20200629150945.10720-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629150945.10720-1-nsaenzjulienne@suse.de>
References: <20200629150945.10720-1-nsaenzjulienne@suse.de>
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
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
