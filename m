Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B514F328595
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 17:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B95E83C86;
	Mon,  1 Mar 2021 16:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0FzLq-ke0xDW; Mon,  1 Mar 2021 16:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AE4E83C0E;
	Mon,  1 Mar 2021 16:59:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD3A1BF29A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3F2C83C0E
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 16:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cUjhDdGwMKVa for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 16:58:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
 [173.203.187.70])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69F0182A26
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 16:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614617890;
 bh=Gy7sjUvCTRP2xauHcDuO7drWK4HfTtDSbQasgVuTroc=;
 h=From:To:Subject:Date:From;
 b=F4h5Sgxn56JjKZ1QlEUr2fhUtf+wAQwAtSSpCnm3fboNAtn3KDI5F2fYNkyFZ1xQa
 7M/r4u+ADJk9sItBMrOZmEzazaEICHxvXFvv5B8dy8obO6wVBtJ20BvZTihWcVnUXY
 YwQ7o8J4yM4X08ARAAGN+hgPdDlGnSZxi94xcnyY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 186815541; 
 Mon,  1 Mar 2021 11:58:10 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 5/6] staging: comedi: dt2814: Remove struct dt2814_private
Date: Mon,  1 Mar 2021 16:57:56 +0000
Message-Id: <20210301165757.243065-6-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210301165757.243065-1-abbotti@mev.co.uk>
References: <20210301165757.243065-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 373a6dd9-c77b-428d-ab7d-8dacbfd07151-6-1
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

The `ntrig` member of the `struct dt2814_private` pointed to by
`dev->private` is no longer used as a counter to determine the end of
acquisition for a Comedi asynchronous command.  The other member
`curadscan` is also unused.  Remove the allocation of the private data
during initialization and remove the definition of `struct
dt2814_private` since they are no longer needed.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/dt2814.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
index 6f6d0b2bb44b..d18f9a5a9fb1 100644
--- a/drivers/staging/comedi/drivers/dt2814.c
+++ b/drivers/staging/comedi/drivers/dt2814.c
@@ -44,11 +44,6 @@
 #define DT2814_ENB 0x10
 #define DT2814_CHANMASK 0x0f
 
-struct dt2814_private {
-	int ntrig;
-	int curadchan;
-};
-
 #define DT2814_TIMEOUT 10
 #define DT2814_MAX_SPEED 100000	/* Arbitrary 10 khz limit */
 
@@ -207,7 +202,6 @@ static int dt2814_ai_cmdtest(struct comedi_device *dev,
 
 static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 {
-	struct dt2814_private *devpriv = dev->private;
 	struct comedi_cmd *cmd = &s->async->cmd;
 	int chan;
 	int trigvar;
@@ -217,7 +211,6 @@ static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 
 	chan = CR_CHAN(cmd->chanlist[0]);
 
-	devpriv->ntrig = cmd->stop_arg;
 	outb(chan | DT2814_ENB | (trigvar << 5), dev->iobase + DT2814_CSR);
 
 	return 0;
@@ -310,7 +303,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
 
 static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 {
-	struct dt2814_private *devpriv;
 	struct comedi_subdevice *s;
 	int ret;
 
@@ -335,10 +327,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
 	if (ret)
 		return ret;
 
-	devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
-	if (!devpriv)
-		return -ENOMEM;
-
 	s = &dev->subdevices[0];
 	s->type = COMEDI_SUBD_AI;
 	s->subdev_flags = SDF_READABLE | SDF_GROUND;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
