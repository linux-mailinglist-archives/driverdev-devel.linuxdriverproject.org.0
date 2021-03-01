Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F7328594
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:59:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80804430CD;
	Mon,  1 Mar 2021 16:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNMIKpSbWKqX; Mon,  1 Mar 2021 16:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1FAD430A9;
	Mon,  1 Mar 2021 16:59:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B54DD1BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A49134F290
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cDV9_sW2c1q for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
 [173.203.187.70])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D9674F28F
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617889;
 bh=dqFy+j/3ktpTzOQgvZ0vK+umYHX9Vy2mfkjsUuhRObM=;
 h=From:To:Subject:Date:From;
 b=b2wgFKkuRYzb3O21psGV5oh4qcx+LOy84MxPxnX1QSMlAlzsk7khKK42gIgfJrFpc
 ZlvNWr0C1RSo6q1ehipFBDeyGOqmkjmrh3PGA8LQo+saz3jap3CQyuzsJn1tYRNSex
 4z9FaEZtZ0ZJlbUwMqOMDKKTcFH1a03XNcY5MKoM=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 2658843AE; 
 Mon,  1 Mar 2021 11:58:09 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 4/6] staging: comedi: dt2814: Fix asynchronous command
 interrupt handling
Date: Mon,  1 Mar 2021 16:57:55 +0000
Message-Id: <20210301165757.243065-5-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210301165757.243065-1-abbotti@mev.co.uk>
References: <20210301165757.243065-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-5-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The support for asynchronous commands in this driver is currently
broken.  If interrupts are enabled, the interrupt handler is called at
the end of every A/D conversion.  A/D conversions could be due to
software-triggered conversions resulting from Comedi `INSN_READ`
instruction handling, or due to timer-trigger conversions enabled when
a Comedi asynchronous command is set up.  We only want the interrupt
handler to read a sample from the A/D Data register for timer-triggered
conversions, but currently it always reads the A/D Data register.  Since
the A/D Data register is read twice (to read a 12-bit value from an
8-bit register), that probably interferes with the reading for
software-triggered conversions.

The interrupt handler does not currently do anything with the data, it
just ignores it.  It should be written to the Comedi buffer if handling
an asynchronous command.

Other problems are that the driver has no Comedi `cancel` handler to
call when the asynchronous command is being stopped manually, and it
does not handle "infinite" acquisitions (when the command's `stop_src ==
TRIG_NONE`) properly.

Change the interrupt handler to check the timer enable (ENB) bit to
check the asynchronous command is active and return early if not
enabled.  Also check the error (ERR) and "conversion complete" (FINISH)
bits, and return early if neither is set.  Then the sample can be read
from the A/D Data register to clear the ERR and FINISH bits.  If the ERR
bit was set, terminate the acquisition with an error, otherwise write
the data to the Comedi buffer and check for end of acquisition.  Replace
the current check for end of acquisition, using the count of completed
scans in `scans_done` (updated by calls to `comedi_buf_write_samples()`)
when `stop_src == TRIG_COUNT`) and allowing "infinite" acquisitions when
`stop_src == TRIG_NONE`.

Add a `cancel` handler function `dt2814_ai_cancel()` that will be called
when the end of acquisition event is processed and when the acquisition
is stopped manually.  It turns off the timer enable (ENB) bit in the
Control register, leaving the current channel selected.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2814.c | 72 ++++++++++++++++++++++---
 1 file changed, 65 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index da4dc4df3a95..6f6d0b2bb44b 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -223,30 +223,87 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	return 0;
 }
 
+static int dt2814_ai_cancel(struct comedi_device *dev,
+			    struct comedi_subdevice *s)
+{
+	unsigned int status;
+	unsigned long flags;
+
+	spin_lock_irqsave(&dev->spinlock, flags);
+	status = inb(dev->iobase + DT2814_CSR);
+	if (status & DT2814_ENB) {
+		/*
+		 * Clear the timed trigger enable bit.
+		 *
+		 * Note: turning off timed mode triggers another
+		 * sample.  This will be mopped up by the calls to
+		 * dt2814_ai_clear().
+		 */
+		outb(status & DT2814_CHANMASK, dev->iobase + DT2814_CSR);
+	}
+	spin_unlock_irqrestore(&dev->spinlock, flags);
+	return 0;
+}
+
 static irqreturn_t dt2814_interrupt(int irq, void *d)
 {
 	struct comedi_device *dev = d;
-	struct dt2814_private *devpriv = dev->private;
 	struct comedi_subdevice *s = dev->read_subdev;
+	struct comedi_async *async;
+	unsigned int lo, hi;
+	unsigned short data;
+	unsigned int status;
 
 	if (!dev->attached) {
 		dev_err(dev->class_dev, "spurious interrupt\n");
 		return IRQ_HANDLED;
 	}
 
-	inb(dev->iobase + DT2814_DATA);
-	inb(dev->iobase + DT2814_DATA);
+	async = s->async;
 
-	if (!(--devpriv->ntrig)) {
-		outb(0, dev->iobase + DT2814_CSR);
+	spin_lock(&dev->spinlock);
+
+	status = inb(dev->iobase + DT2814_CSR);
+	if (!(status & DT2814_ENB)) {
+		/* Timed acquisition not enabled.  Nothing to do. */
+		spin_unlock(&dev->spinlock);
+		return IRQ_HANDLED;
+	}
+
+	if (!(status & (DT2814_FINISH | DT2814_ERR))) {
+		/* Spurious interrupt? */
+		spin_unlock(&dev->spinlock);
+		return IRQ_HANDLED;
+	}
+
+	/* Read data or clear error. */
+	hi = inb(dev->iobase + DT2814_DATA);
+	lo = inb(dev->iobase + DT2814_DATA);
+
+	data = (hi << 4) | (lo >> 4);
+
+	if (status & DT2814_ERR) {
+		async->events |= COMEDI_CB_ERROR;
+	} else {
+		comedi_buf_write_samples(s, &data, 1);
+		if (async->cmd.stop_src == TRIG_COUNT &&
+		    async->scans_done >=  async->cmd.stop_arg) {
+			async->events |= COMEDI_CB_EOA;
+		}
+	}
+	if (async->events & COMEDI_CB_CANCEL_MASK) {
 		/*
+		 * Disable timed mode.
+		 *
 		 * Note: turning off timed mode triggers another
 		 * sample.  This will be mopped up by the calls to
 		 * dt2814_ai_clear().
 		 */
-
-		s->async->events |= COMEDI_CB_EOA;
+		outb(status & DT2814_CHANMASK, dev->iobase + DT2814_CSR);
 	}
+
+	spin_unlock(&dev->spinlock);
+
 	comedi_handle_events(dev, s);
 	return IRQ_HANDLED;
 }
@@ -295,6 +352,7 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 		s->len_chanlist = 1;
 		s->do_cmd = dt2814_ai_cmd;
 		s->do_cmdtest = dt2814_ai_cmdtest;
+		s->cancel = dt2814_ai_cancel;
 	}
 
 	return 0;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
