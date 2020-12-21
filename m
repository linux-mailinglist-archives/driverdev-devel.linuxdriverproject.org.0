Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 170882DFA46
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 10:27:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9ADB9879B6;
	Mon, 21 Dec 2020 09:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1M4P0nruAOFN; Mon, 21 Dec 2020 09:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53768877EC;
	Mon, 21 Dec 2020 09:27:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE49E1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 09:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E9B6287BEF
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 09:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tfG2pxsTqM+p for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 09:27:06 +0000 (UTC)
X-Greylist: delayed 00:11:05 by SQLgrey-1.7.6
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 819A287B31
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 09:27:06 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Anjandev Momi <anjan@momi.ca>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: octeon-usb: octeon-hcd: fixed indent and ending with
 brace coding style issue
Message-Id: <20201221091508.17280-1-anjan@momi.ca>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: anjan@momi.ca
Date: Mon, 21 Dec 2020 09:15:57 GMT
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Anjandev Momi <anjan@momi.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed coding style issues

Signed-off-by: Anjandev Momi <anjan@momi.ca>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 96 ++++++++++++-------------
 1 file changed, 46 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index e2f8b6b67f75..d8b099f8b83a 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -1258,7 +1258,7 @@ static void cvmx_usb_poll_tx_fifo(struct octeon_hcd *usb)
 		union cvmx_usbcx_hptxsts tx_status;
 
 		tx_status.u32 = cvmx_usb_read_csr32(usb,
-					CVMX_USBCX_HPTXSTS(usb->index));
+						    CVMX_USBCX_HPTXSTS(usb->index));
 		if (cvmx_usb_fill_tx_hw(usb, &usb->periodic,
 					tx_status.s.ptxfspcavail))
 			USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
@@ -1272,7 +1272,7 @@ static void cvmx_usb_poll_tx_fifo(struct octeon_hcd *usb)
 		union cvmx_usbcx_gnptxsts tx_status;
 
 		tx_status.u32 = cvmx_usb_read_csr32(usb,
-					CVMX_USBCX_GNPTXSTS(usb->index));
+						    CVMX_USBCX_GNPTXSTS(usb->index));
 		if (cvmx_usb_fill_tx_hw(usb, &usb->nonperiodic,
 					tx_status.s.nptxfspcavail))
 			USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
@@ -1298,13 +1298,13 @@ static void cvmx_usb_fill_tx_fifo(struct octeon_hcd *usb, int channel)
 
 	/* We only need to fill data on outbound channels */
 	hcchar.u32 = cvmx_usb_read_csr32(usb,
-			CVMX_USBCX_HCCHARX(channel, usb->index));
+					 CVMX_USBCX_HCCHARX(channel, usb->index));
 	if (hcchar.s.epdir != CVMX_USB_DIRECTION_OUT)
 		return;
 
 	/* OUT Splits only have data on the start and not the complete */
 	usbc_hcsplt.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCSPLTX(channel, usb->index));
+					      CVMX_USBCX_HCSPLTX(channel, usb->index));
 	if (usbc_hcsplt.s.spltena && usbc_hcsplt.s.compsplt)
 		return;
 
@@ -1313,7 +1313,7 @@ static void cvmx_usb_fill_tx_fifo(struct octeon_hcd *usb, int channel)
 	 * words.
 	 */
 	usbc_hctsiz.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCTSIZX(channel, usb->index));
+					      CVMX_USBCX_HCTSIZX(channel, usb->index));
 	if (!usbc_hctsiz.s.xfersize)
 		return;
 
@@ -1360,7 +1360,7 @@ static void cvmx_usb_start_channel_control(struct octeon_hcd *usb,
 	union cvmx_usbcx_hctsizx usbc_hctsiz;
 
 	usbc_hctsiz.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCTSIZX(channel, usb->index));
+					      CVMX_USBCX_HCTSIZX(channel, usb->index));
 
 	switch (transaction->stage) {
 	case CVMX_USB_STAGE_NON_CONTROL:
@@ -1517,7 +1517,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
 
 		/* Clear all channel status bits */
 		usbc_hcint.u32 = cvmx_usb_read_csr32(usb,
-					CVMX_USBCX_HCINTX(channel, usb->index));
+						     CVMX_USBCX_HCINTX(channel, usb->index));
 
 		cvmx_usb_write_csr32(usb,
 				     CVMX_USBCX_HCINTX(channel, usb->index),
@@ -1552,7 +1552,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
 
 		/* Enable the channel interrupt to propagate */
 		usbc_haintmsk.u32 = cvmx_usb_read_csr32(usb,
-					CVMX_USBCX_HAINTMSK(usb->index));
+							CVMX_USBCX_HAINTMSK(usb->index));
 		usbc_haintmsk.s.haintmsk |= 1 << channel;
 		cvmx_usb_write_csr32(usb, CVMX_USBCX_HAINTMSK(usb->index),
 				     usbc_haintmsk.u32);
@@ -1797,15 +1797,13 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
 			 */
 			if (pipe->transfer_dir == CVMX_USB_DIRECTION_OUT) {
 				if (pipe->multi_count < 2) /* Need DATA0 */
-					USB_SET_FIELD32(
-						CVMX_USBCX_HCTSIZX(channel,
-								   usb->index),
-						cvmx_usbcx_hctsizx, pid, 0);
+					USB_SET_FIELD32(CVMX_USBCX_HCTSIZX(channel,
+									   usb->index),
+							cvmx_usbcx_hctsizx, pid, 0);
 				else /* Need MDATA */
-					USB_SET_FIELD32(
-						CVMX_USBCX_HCTSIZX(channel,
-								   usb->index),
-						cvmx_usbcx_hctsizx, pid, 3);
+					USB_SET_FIELD32(CVMX_USBCX_HCTSIZX(channel,
+									   usb->index),
+							cvmx_usbcx_hctsizx, pid, 3);
 			}
 		}
 		break;
@@ -1836,7 +1834,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
  * Returns: Pipe or NULL if none are ready
  */
 static struct cvmx_usb_pipe *cvmx_usb_find_ready_pipe(struct octeon_hcd *usb,
-		enum cvmx_usb_transfer xfer_type)
+						      enum cvmx_usb_transfer xfer_type)
 {
 	struct list_head *list = usb->active_pipes + xfer_type;
 	u64 current_frame = usb->frame_number;
@@ -2119,17 +2117,17 @@ static void cvmx_usb_complete(struct octeon_hcd *usb,
  *
  * Returns: Transaction or NULL on failure.
  */
-static struct cvmx_usb_transaction *cvmx_usb_submit_transaction(
-				struct octeon_hcd *usb,
-				struct cvmx_usb_pipe *pipe,
-				enum cvmx_usb_transfer type,
-				u64 buffer,
-				int buffer_length,
-				u64 control_header,
-				int iso_start_frame,
-				int iso_number_packets,
-				struct cvmx_usb_iso_packet *iso_packets,
-				struct urb *urb)
+static struct cvmx_usb_transaction *cvmx_usb_submit_transaction(struct octeon_hcd *usb,
+								struct cvmx_usb_pipe *pipe,
+								enum cvmx_usb_transfer type,
+								u64 buffer,
+								int buffer_length,
+								u64 control_header,
+								int iso_start_frame,
+								int iso_number_packets,
+								struct cvmx_usb_iso_packet
+								*iso_packets,
+								struct urb *urb)
 {
 	struct cvmx_usb_transaction *transaction;
 
@@ -2180,10 +2178,9 @@ static struct cvmx_usb_transaction *cvmx_usb_submit_transaction(
  *
  * Returns: A submitted transaction or NULL on failure.
  */
-static struct cvmx_usb_transaction *cvmx_usb_submit_bulk(
-						struct octeon_hcd *usb,
-						struct cvmx_usb_pipe *pipe,
-						struct urb *urb)
+static struct cvmx_usb_transaction *cvmx_usb_submit_bulk(struct octeon_hcd *usb,
+							 struct cvmx_usb_pipe *pipe,
+							 struct urb *urb)
 {
 	return cvmx_usb_submit_transaction(usb, pipe, CVMX_USB_TRANSFER_BULK,
 					   urb->transfer_dma,
@@ -2204,10 +2201,9 @@ static struct cvmx_usb_transaction *cvmx_usb_submit_bulk(
  *
  * Returns: A submitted transaction or NULL on failure.
  */
-static struct cvmx_usb_transaction *cvmx_usb_submit_interrupt(
-						struct octeon_hcd *usb,
-						struct cvmx_usb_pipe *pipe,
-						struct urb *urb)
+static struct cvmx_usb_transaction *cvmx_usb_submit_interrupt(struct octeon_hcd *usb,
+							      struct cvmx_usb_pipe *pipe,
+							      struct urb *urb)
 {
 	return cvmx_usb_submit_transaction(usb, pipe,
 					   CVMX_USB_TRANSFER_INTERRUPT,
@@ -2229,10 +2225,9 @@ static struct cvmx_usb_transaction *cvmx_usb_submit_interrupt(
  *
  * Returns: A submitted transaction or NULL on failure.
  */
-static struct cvmx_usb_transaction *cvmx_usb_submit_control(
-						struct octeon_hcd *usb,
-						struct cvmx_usb_pipe *pipe,
-						struct urb *urb)
+static struct cvmx_usb_transaction *cvmx_usb_submit_control(struct octeon_hcd *usb,
+							    struct cvmx_usb_pipe *pipe,
+							    struct urb *urb)
 {
 	int buffer_length = urb->transfer_buffer_length;
 	u64 control_header = urb->setup_dma;
@@ -2260,10 +2255,9 @@ static struct cvmx_usb_transaction *cvmx_usb_submit_control(
  *
  * Returns: A submitted transaction or NULL on failure.
  */
-static struct cvmx_usb_transaction *cvmx_usb_submit_isochronous(
-						struct octeon_hcd *usb,
-						struct cvmx_usb_pipe *pipe,
-						struct urb *urb)
+static struct cvmx_usb_transaction *cvmx_usb_submit_isochronous(struct octeon_hcd *usb,
+								struct cvmx_usb_pipe *pipe,
+								struct urb *urb)
 {
 	struct cvmx_usb_iso_packet *packets;
 
@@ -2309,7 +2303,8 @@ static int cvmx_usb_cancel(struct octeon_hcd *usb,
 		CVMX_SYNCW;
 
 		usbc_hcchar.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCCHARX(pipe->channel, usb->index));
+						      CVMX_USBCX_HCCHARX(pipe->channel,
+									 usb->index));
 		/*
 		 * If the channel isn't enabled then the transaction already
 		 * completed.
@@ -2605,11 +2600,12 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
 
 	/* Read the interrupt status bits for the channel */
 	usbc_hcint.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCINTX(channel, usb->index));
+					     CVMX_USBCX_HCINTX(channel, usb->index));
 
 	if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA) {
 		usbc_hcchar.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCCHARX(channel, usb->index));
+						      CVMX_USBCX_HCCHARX(channel,
+									 usb->index));
 
 		if (usbc_hcchar.s.chena && usbc_hcchar.s.chdis) {
 			/*
@@ -2688,9 +2684,9 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
 	 * transferred
 	 */
 	usbc_hcchar.u32 = cvmx_usb_read_csr32(usb,
-			CVMX_USBCX_HCCHARX(channel, usb->index));
+					      CVMX_USBCX_HCCHARX(channel, usb->index));
 	usbc_hctsiz.u32 = cvmx_usb_read_csr32(usb,
-			CVMX_USBCX_HCTSIZX(channel, usb->index));
+					      CVMX_USBCX_HCTSIZX(channel, usb->index));
 
 	/*
 	 * Calculating the number of bytes successfully transferred is dependent
@@ -3010,7 +3006,7 @@ static int cvmx_usb_poll(struct octeon_hcd *usb)
 		union cvmx_usbcx_haint usbc_haint;
 
 		usbc_haint.u32 = cvmx_usb_read_csr32(usb,
-					CVMX_USBCX_HAINT(usb->index));
+						     CVMX_USBCX_HAINT(usb->index));
 		while (usbc_haint.u32) {
 			int channel;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
