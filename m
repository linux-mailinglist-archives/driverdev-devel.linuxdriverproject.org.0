Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 176EB322C4F
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 15:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB56B85F83;
	Tue, 23 Feb 2021 14:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcN656soY3XZ; Tue, 23 Feb 2021 14:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C39185F77;
	Tue, 23 Feb 2021 14:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211461BF36B
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3FBC8724C
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 14:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLHEi7bDP6uA for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 14:31:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp71.ord1c.emailsrvr.com (smtp71.ord1c.emailsrvr.com
 [108.166.43.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF6548723E
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 14:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1614090681;
 bh=/4hCyAy4rwu/yZTJptATBSKRQoImtoZ5GnCJxesSnUI=;
 h=From:To:Subject:Date:From;
 b=Paoahx4syx5vnCIqEBkKwxiDNo4Inv90IxdHSmo34bTXmLiwdMRFOSSBA27brG0+l
 R242i4CqXGaJr2ObxG9tS37+EDxeNWjVQPZVII4SWPYqg/DtI/BxExazjFyoi9tsJh
 A/NaCFesWmNJQ98emVWCdio8UXrZ6IZkS0FXCD4k=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5FD89201AD; 
 Tue, 23 Feb 2021 09:31:20 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 03/14] staging: comedi: adv_pci1710: Fix endian problem for AI
 command data
Date: Tue, 23 Feb 2021 14:30:44 +0000
Message-Id: <20210223143055.257402-4-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210223143055.257402-1-abbotti@mev.co.uk>
References: <20210223143055.257402-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: a7362777-437e-4132-9c26-de9af4db62d3-4-1
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
 Ian Abbott <abbotti@mev.co.uk>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The analog input subdevice supports Comedi asynchronous commands that
use Comedi's 16-bit sample format.  However, the calls to
`comedi_buf_write_samples()` are passing the address of a 32-bit integer
variable.  On bigendian machines, this will copy 2 bytes from the wrong
end of the 32-bit value.  Fix it by changing the type of the variables
holding the sample value to `unsigned short`.  The type of the `val`
parameter of `pci1710_ai_read_sample()` is changed to `unsigned short *`
accordingly.  The type of the `val` variable in `pci1710_ai_insn_read()`
is also changed to `unsigned short` since its address is passed to
`pci1710_ai_read_sample()`.

Fixes: a9c3a015c12f ("staging: comedi: adv_pci1710: use comedi_buf_write_samples()")
Cc: <stable@vger.kernel.org> # 4.0+
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/adv_pci1710.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/adv_pci1710.c b/drivers/staging/comedi/drivers/adv_pci1710.c
index 692893c7e5c3..090607760be6 100644
--- a/drivers/staging/comedi/drivers/adv_pci1710.c
+++ b/drivers/staging/comedi/drivers/adv_pci1710.c
@@ -300,11 +300,11 @@ static int pci1710_ai_eoc(struct comedi_device *dev,
 static int pci1710_ai_read_sample(struct comedi_device *dev,
 				  struct comedi_subdevice *s,
 				  unsigned int cur_chan,
-				  unsigned int *val)
+				  unsigned short *val)
 {
 	const struct boardtype *board = dev->board_ptr;
 	struct pci1710_private *devpriv = dev->private;
-	unsigned int sample;
+	unsigned short sample;
 	unsigned int chan;
 
 	sample = inw(dev->iobase + PCI171X_AD_DATA_REG);
@@ -345,7 +345,7 @@ static int pci1710_ai_insn_read(struct comedi_device *dev,
 	pci1710_ai_setup_chanlist(dev, s, &insn->chanspec, 1, 1);
 
 	for (i = 0; i < insn->n; i++) {
-		unsigned int val;
+		unsigned short val;
 
 		/* start conversion */
 		outw(0, dev->iobase + PCI171X_SOFTTRG_REG);
@@ -395,7 +395,7 @@ static void pci1710_handle_every_sample(struct comedi_device *dev,
 {
 	struct comedi_cmd *cmd = &s->async->cmd;
 	unsigned int status;
-	unsigned int val;
+	unsigned short val;
 	int ret;
 
 	status = inw(dev->iobase + PCI171X_STATUS_REG);
@@ -455,7 +455,7 @@ static void pci1710_handle_fifo(struct comedi_device *dev,
 	}
 
 	for (i = 0; i < devpriv->max_samples; i++) {
-		unsigned int val;
+		unsigned short val;
 		int ret;
 
 		ret = pci1710_ai_read_sample(dev, s, s->async->cur_chan, &val);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
