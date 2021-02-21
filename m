Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BBA320E90
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 00:44:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1813E83438;
	Sun, 21 Feb 2021 23:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YPKAiYZGWGbz; Sun, 21 Feb 2021 23:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C0DA83005;
	Sun, 21 Feb 2021 23:44:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66C191BF3BD
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 23:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55E1D82F41
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 23:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffGk2PGARVvf for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 23:44:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0704C82F40
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 23:44:27 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id w1so1292631qto.2
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UAxYgTJ8xiP4XZVnDR92h/oyODoJt823YPaFX/5CcQk=;
 b=MNC9vbSHvJWv2tiNaNI4Sh+9m61qxX7TIuZEneH2uevxc9UC8s2Kt5b3lzpE2wlRpo
 tPPbDXwMogVAXeqKAxoZ5OKjeNHf4ZX9G03CMLZZSY5OAZFFaLSBiRemxu/HoDv/wEkE
 Nd5t+eWC8zSX3dNyzYmP4yKbAtCa07tH5+3t/FJvX4EJzxV9q1YJCd1eOuPfEq8DN5P6
 GQbmEpxFVpdnXcLNm5aZYXykMeM5zyYV9vrfsKQhK6rRlEefmQXVHRz7RN3itanA4Lzt
 5sy06oB1Gl9qAwZIQJAxxmhpMcyHsC/OkMdTG5OJOOLUqRLdUOltIxymImtDS0IogQTL
 J/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UAxYgTJ8xiP4XZVnDR92h/oyODoJt823YPaFX/5CcQk=;
 b=E3AafgtGYeS+kJK0tGmcdvbe/slQ7tBFGJW42FB5/vcV5zuu/VTifPqBnZ0cVXeuiG
 G69uAghco5NnoosZXD7/QkQiDxx5zMkRhvPljYeH/PTlp//ZgcSD/jcnEoKT4S3NiAYn
 /anCECUy2hqrddatFsuc5SfieEr0FAGy3UuXWKCoj0wNBKGTGIjMoB/o6JJcHpKAwoUW
 jXvQvLpgRzq9tKHxnyMwpovo2cfKKF9wvu3Txn2E5dLJnxFMSHaYFG+XuB9HVae0r8TO
 pLk1sFuXwj+pBWo/CKpUKR7eBYQ17Wwb3Zfx/IUyAtln80MzTzn6kUCB7Cx8FEAnCl1x
 YO4g==
X-Gm-Message-State: AOAM5306isGfbXDT9HLQ+a1ad2xtcUcR1b0lFv1Hy2lkepM0WYa+C6md
 iviD8iq5NYME3rqQkrdnEd8=
X-Google-Smtp-Source: ABdhPJxroqdAssU2fHPbthFL7DOJD91d/CkdWfZc8gQF81uLfvIIV2JD0Wn81NVlTm/d6omlaWDm8w==
X-Received: by 2002:a05:622a:28d:: with SMTP id
 z13mr18057205qtw.87.1613951066691; 
 Sun, 21 Feb 2021 15:44:26 -0800 (PST)
Received: from mahak-Inspiron-7570 ([103.153.208.42])
 by smtp.gmail.com with ESMTPSA id o194sm11097316qke.101.2021.02.21.15.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 15:44:26 -0800 (PST)
From: Mahak Gupta <gmahak1@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Match alignment with open parenthesis
Date: Mon, 22 Feb 2021 05:14:09 +0530
Message-Id: <20210221234409.11627-1-gmahak1@gmail.com>
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
Cc: Mahak Gupta <gmahak1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patches fixes the checks- 'Alignment should match open parenthesis'
of 'checkpatch.pl'.

Signed-off-by: Mahak Gupta <gmahak1@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 32 +++++++++++++------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index e2f8b6b67f75..f27f20a4aa2d 100644
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
@@ -1836,7 +1836,7 @@ static void cvmx_usb_start_channel(struct octeon_hcd *usb, int channel,
  * Returns: Pipe or NULL if none are ready
  */
 static struct cvmx_usb_pipe *cvmx_usb_find_ready_pipe(struct octeon_hcd *usb,
-		enum cvmx_usb_transfer xfer_type)
+						      enum cvmx_usb_transfer xfer_type)
 {
 	struct list_head *list = usb->active_pipes + xfer_type;
 	u64 current_frame = usb->frame_number;
@@ -2309,7 +2309,8 @@ static int cvmx_usb_cancel(struct octeon_hcd *usb,
 		CVMX_SYNCW;
 
 		usbc_hcchar.u32 = cvmx_usb_read_csr32(usb,
-				CVMX_USBCX_HCCHARX(pipe->channel, usb->index));
+						      CVMX_USBCX_HCCHARX(pipe->channel,
+									 usb->index));
 		/*
 		 * If the channel isn't enabled then the transaction already
 		 * completed.
@@ -2605,11 +2606,12 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
 
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
@@ -2688,9 +2690,9 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
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
@@ -3010,7 +3012,7 @@ static int cvmx_usb_poll(struct octeon_hcd *usb)
 		union cvmx_usbcx_haint usbc_haint;
 
 		usbc_haint.u32 = cvmx_usb_read_csr32(usb,
-					CVMX_USBCX_HAINT(usb->index));
+						     CVMX_USBCX_HAINT(usb->index));
 		while (usbc_haint.u32) {
 			int channel;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
