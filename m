Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C985322C62
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:32:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E744F87248;
	Tue, 23 Feb 2021 14:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAc47TDuu4qV; Tue, 23 Feb 2021 14:32:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 735FC87230;
	Tue, 23 Feb 2021 14:32:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63C561BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60F3285BC4
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 98UMrKzYQPm3 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp65.ord1c.emailsrvr.com (smtp65.ord1c.emailsrvr.com
 [108.166.43.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E558387233
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090692;
 bh=SwI/427sUurhMxVPbt+IS0TXTvWKq8I9Hvd1IU1Ny6M=;
 h=From:To:Subject:Date:From;
 b=IxOL4m9E+0Lt7ZBr1GPNXEYizNyOqFOI12ZVQe7jz6OQXx6uAtSSg+8NQMRO/mJv7
 pAf/QmildYlz9MdeS0rfgyC58LBStBZSHchypAIFzZLoGz3TJ+3ty8YeOQpMIamOBn
 rTTOLO/i4A8o8hQnM7cXKVe790I5x/0uXMMCyDds=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id A99F9200D6; 
 Tue, 23 Feb 2021 09:31:31 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 13/14] staging: comedi: ni_65xx: Use 16-bit 0 for interrupt
 data
Date: Tue, 23 Feb 2021 14:30:54 +0000
Message-Id: <20210223143055.257402-14-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-14-1
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

The ni_65xx driver has an "interrupt" subdevice that supports Comedi
asynchronous commands, placing a value in the Comedi buffer for each
interrupt.  The subdevice uses Comedi's 16-bit sample format but the
interrupt handler is calling `comedi_buf_write_samples()` with the
address of a 32-bit integer `&s->state`.  On bigendian machines, this
will copy 2 bytes from the wrong end of the 32-bit integer.  This isn't
really a problem since `s->state` will always be 0 for this subdevice,
but clean it up by using a 16-bit variable initialized to 0 to pass the
value.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/ni_65xx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_65xx.c b/drivers/staging/comedi/drivers/ni_65xx.c
index eb3f9f7109da..7cd8497420f2 100644
--- a/drivers/staging/comedi/drivers/ni_65xx.c
+++ b/drivers/staging/comedi/drivers/ni_65xx.c
@@ -472,6 +472,7 @@ static irqreturn_t ni_65xx_interrupt(int irq, void *d)
 	struct comedi_device *dev = d;
 	struct comedi_subdevice *s = dev->read_subdev;
 	unsigned int status;
+	unsigned short val = 0;
 
 	status = readb(dev->mmio + NI_65XX_STATUS_REG);
 	if ((status & NI_65XX_STATUS_INT) == 0)
@@ -482,7 +483,7 @@ static irqreturn_t ni_65xx_interrupt(int irq, void *d)
 	writeb(NI_65XX_CLR_EDGE_INT | NI_65XX_CLR_OVERFLOW_INT,
 	       dev->mmio + NI_65XX_CLR_REG);
 
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
