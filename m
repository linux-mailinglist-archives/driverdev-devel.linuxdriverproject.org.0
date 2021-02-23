Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C21322C61
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:32:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBD6383AA9;
	Tue, 23 Feb 2021 14:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQRexvB66vJL; Tue, 23 Feb 2021 14:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC29983AAF;
	Tue, 23 Feb 2021 14:32:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EBF71BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 55F5785F51
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jj6G_8tvrJB2 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp69.ord1c.emailsrvr.com (smtp69.ord1c.emailsrvr.com
 [108.166.43.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D943D85F4D
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090690;
 bh=FIxc+GYR8zSlfu/0tCm77n3Lt9j4nkeb47VStR0WtuM=;
 h=From:To:Subject:Date:From;
 b=OJgIgWvhoiJoLaTKj7G9CUrcF/hQpzZ34wRaZiPnW1XZwoJmbLIvxr8Oh2HOVrXXL
 8m7uGFlN8F/1VC3bnhyPYbbNKlH8/D8+Nq35iBkRlKnl0uGDqjpr3k6vW1uVpmy/5U
 KMswR1omgX4foNcrUae4l2jfpbOpLp5Z7hky8wJA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 938382009D; 
 Tue, 23 Feb 2021 09:31:29 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 11/14] staging: comedi: comedi_parport: Use 16-bit 0 for
 interrupt data
Date: Tue, 23 Feb 2021 14:30:52 +0000
Message-Id: <20210223143055.257402-12-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-12-1
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

The comedi_parport driver has an "interrupt" subdevice that supports
Comedi asynchronous commands, placing a value in the Comedi buffer for
each interrupt.  The subdevice uses Comedi's 16-bit sample format but
the interrupt handler is calling `comedi_buf_write_samples()` with the
address of a 32-bit integer `&s->state`.  On bigendian machines, this
will copy 2 bytes from the wrong end of the 32-bit integer.  This isn't
really a problem since `s->state` will always be 0 for this subdevice,
but clean it up by using a 16-bit variable initialized to 0 to pass the
value.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/comedi_parport.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/comedi_parport.c b/drivers/staging/comedi/drivers/comedi_parport.c
index 9361b2dcf949..5338b5eea440 100644
--- a/drivers/staging/comedi/drivers/comedi_parport.c
+++ b/drivers/staging/comedi/drivers/comedi_parport.c
@@ -210,12 +210,13 @@ static irqreturn_t parport_interrupt(int irq, void *d)
 	struct comedi_device *dev = d;
 	struct comedi_subdevice *s = dev->read_subdev;
 	unsigned int ctrl;
+	unsigned short val = 0;
 
 	ctrl = inb(dev->iobase + PARPORT_CTRL_REG);
 	if (!(ctrl & PARPORT_CTRL_IRQ_ENA))
 		return IRQ_NONE;
 
-	comedi_buf_write_samples(s, &s->state, 1);
+	comedi_buf_write_samples(s, &val, 1);
 	comedi_handle_events(dev, s);
 
 	return IRQ_HANDLED;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
