Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED072FA362
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 15:44:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1767852F6;
	Mon, 18 Jan 2021 14:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIlTEctGYhzX; Mon, 18 Jan 2021 14:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80CB484DD4;
	Mon, 18 Jan 2021 14:44:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7215C1BF3C2
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BA392047E
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjjt62TnT8fh for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 14:44:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp111.iad3b.emailsrvr.com (smtp111.iad3b.emailsrvr.com
 [146.20.161.111])
 by silver.osuosl.org (Postfix) with ESMTPS id 5EB7720029
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 14:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1610981056;
 bh=ojE7qRpJ/eGd9j/lv9xG53t9A1JvGeC2NrMb31s3Gns=;
 h=From:To:Subject:Date:From;
 b=fr0E3r9/8hLA5LWQsFj6UWMn798yfWhV1lt/dp99nmcBpuLhCqSxcGhz4GywKmoFY
 JU57C161U3sz38iHR5a0GeZcNgjXmQsvCh/zM9Vq5J/SEuwTteJzuFKK7O3yEDgCy/
 SM03hakaVgMhLfmEb5muazjXRRxXUwaMbefJPoX8=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id E425E60218; 
 Mon, 18 Jan 2021 09:44:15 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 2/2] staging: comedi: adv_pci_dio: Support falling edge
 triggers
Date: Mon, 18 Jan 2021 14:43:59 +0000
Message-Id: <20210118144359.378730-3-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118144359.378730-1-abbotti@mev.co.uk>
References: <20210118144359.378730-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 8c5cf951-5880-4237-8386-e602c086236d-3-1
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
 Ian Abbott <abbotti@mev.co.uk>, Bernd Harries <bha@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The interrupt support for Advantech PCI-1730 currrently supports only
rising edge inputs for the trigger sources.  Each of four interrupt
sources (each with its own Comedi subdevice) can be set to trigger on
either a rising edge or a falling edge.  Add support for choosing the
edge during set-up of the asynchronous command for the subdevice, using
the `CR_INVERT` bit of `scan_begin_arg` to indicate falling edge when
set, or rising edge when clear.  Also allow the `CR_EDGE` bit to be set,
but ignore it.  All other bits of `scan_begin_arg` must be zero.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/adv_pci_dio.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/adv_pci_dio.c b/drivers/staging/comedi/drivers/adv_pci_dio.c
index a894d0844a81..8e222b6ff2b4 100644
--- a/drivers/staging/comedi/drivers/adv_pci_dio.c
+++ b/drivers/staging/comedi/drivers/adv_pci_dio.c
@@ -227,6 +227,7 @@ struct pci_dio_dev_private_data {
 	int boardtype;
 	int irq_subd;
 	unsigned short int_ctrl;
+	unsigned short int_rf;
 };
 
 struct pci_dio_sd_private_data {
@@ -313,7 +314,15 @@ static int pci_dio_asy_cmdtest(struct comedi_device *dev,
 	/* Step 3: check if arguments are trivially valid */
 
 	err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
-	err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
+	/*
+	 * For scan_begin_arg, the trigger number must be 0 and the only
+	 * allowed flags are CR_EDGE and CR_INVERT.  CR_EDGE is ignored,
+	 * CR_INVERT sets the trigger to falling edge.
+	 */
+	if (cmd->scan_begin_arg & ~(CR_EDGE | CR_INVERT)) {
+		cmd->scan_begin_arg &= (CR_EDGE | CR_INVERT);
+		err |= -EINVAL;
+	}
 	err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
 	err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
 					   cmd->chanlist_len);
@@ -335,12 +344,18 @@ static int pci_dio_asy_cmd(struct comedi_device *dev,
 	struct pci_dio_dev_private_data *dev_private = dev->private;
 	struct pci_dio_sd_private_data *sd_priv = s->private;
 	const struct dio_boardtype *board = dev->board_ptr;
+	struct comedi_cmd *cmd = &s->async->cmd;
 	unsigned long cpu_flags;
 	unsigned short int_en;
 
 	int_en = board->sdirq[s->index - dev_private->irq_subd].int_en;
 
 	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	if (cmd->scan_begin_arg & CR_INVERT)
+		dev_private->int_rf |= int_en;	/* falling edge */
+	else
+		dev_private->int_rf &= ~int_en;	/* rising edge */
+	outb(dev_private->int_rf, dev->iobase + PCI173X_INT_RF_REG);
 	dev_private->int_ctrl |= int_en;	/* enable interrupt source */
 	outb(dev_private->int_ctrl, dev->iobase + PCI173X_INT_EN_REG);
 	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
@@ -483,7 +498,8 @@ static int pci_dio_reset(struct comedi_device *dev, unsigned long cardtype)
 		/* Reset all 4 Int Flags */
 		outb(0x0f, dev->iobase + PCI173X_INT_CLR_REG);
 		/* Rising Edge => IRQ . On all 4 Pins */
-		outb(0x00, dev->iobase + PCI173X_INT_RF_REG);
+		dev_private->int_rf = 0x00;
+		outb(dev_private->int_rf, dev->iobase + PCI173X_INT_RF_REG);
 		break;
 	case TYPE_PCI1739:
 	case TYPE_PCI1750:
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
