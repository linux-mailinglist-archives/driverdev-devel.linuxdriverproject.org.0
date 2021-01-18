Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4B92FA2F0
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 15:26:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90F9E8673C;
	Mon, 18 Jan 2021 14:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBmt8bwjL9f4; Mon, 18 Jan 2021 14:26:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4864A86715;
	Mon, 18 Jan 2021 14:26:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 368591BF3C2
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3338D85344
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X1PhLHE0-x0k for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 14:26:46 +0000 (UTC)
X-Greylist: delayed 00:07:56 by SQLgrey-1.7.6
Received: from smtp113.iad3b.emailsrvr.com (smtp113.iad3b.emailsrvr.com
 [146.20.161.113])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD71185F4B
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 14:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1610979529;
 bh=MO/bomMJAMqXsawMIiznwJS49VMlb2FDV0XhvGMm94Y=;
 h=From:To:Subject:Date:From;
 b=j2X4E1fQJYvnr5Fk/QVcB/hlz1tD4DNKWn9g09NRz4QwweG6CGxNWLY3nHm7co+J1
 I7bVG6TcAQ8cm7L2IJdX+h4dOYpdLfhRpo3OzR4v1eYKL55s6//mbDtJ27j3qNVfkM
 aS6dYuTgRrgnX1FSNEvekcAfb4avoBic39lAPbgI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp7.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 4ED026016A; 
 Mon, 18 Jan 2021 09:18:48 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: comedi: adl_pci7x3x: Add interrupt handling for
 PCI-7230
Date: Mon, 18 Jan 2021 14:18:29 +0000
Message-Id: <20210118141829.376505-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Classification-ID: a89740c1-a963-46b5-907a-02b1494eaa84-1-1
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

From: Bernd Harries <bha@gmx.de>

On the ADLink PCI-7230, digital input channels 0 and 1 can be used as
external interrupt sources.  A rising edge on each input latches a
corresponding local interrupt input of the PCI interface chip.  Writing
a "clear IRQ" register clears both latches.

Add a new Comedi subdevice for each interrupt source, supporting the
asynchronous command interface.  This writes the state of the 16 digital
inputs to the subdevice's data buffer each time the corresponding
interrupt occurs.

This could be adapted to support the PCI-7233, PCI-7432 and PCI-7433
boards too.  They all have two interrupt sources, although for PCI-7233
each interrupt source is triggered by a change of state of 16 digital
inputs (0-15 and 16-31).  The "clear IRQ" register is at a different
offset for some boards.

Signed-off-by: Bernd Harries <bha@gmx.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/adl_pci7x3x.c | 284 ++++++++++++++++++-
 1 file changed, 274 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/comedi/drivers/adl_pci7x3x.c b/drivers/staging/comedi/drivers/adl_pci7x3x.c
index d0081897fe47..8fc45638ff59 100644
--- a/drivers/staging/comedi/drivers/adl_pci7x3x.c
+++ b/drivers/staging/comedi/drivers/adl_pci7x3x.c
@@ -19,14 +19,15 @@
  *   PCI-7234 (adl_pci7234), PCI-7432 (adl_pci7432), PCI-7433 (adl_pci7433),
  *   PCI-7434 (adl_pci7434)
  * Author: H Hartley Sweeten <hsweeten@visionengravers.com>
- * Updated: Thu, 02 Aug 2012 14:27:46 -0700
- * Status: untested
+ * Updated: Fri, 20 Nov 2020 14:49:36 +0000
+ * Status: works (tested on PCI-7230)
  *
  * One or two subdevices are setup by this driver depending on
  * the number of digital inputs and/or outputs provided by the
  * board. Each subdevice has a maximum of 32 channels.
  *
- *	PCI-7230 - 2 subdevices: 0 - 16 input, 1 - 16 output
+ *	PCI-7230 - 4 subdevices: 0 - 16 input, 1 - 16 output,
+ *	                         2 - IRQ_IDI0, 3 - IRQ_IDI1
  *	PCI-7233 - 1 subdevice: 0 - 32 input
  *	PCI-7234 - 1 subdevice: 0 - 32 output
  *	PCI-7432 - 2 subdevices: 0 - 32 input, 1 - 32 output
@@ -37,8 +38,9 @@
  * interrupt signals on digital input channels 0 and 1. The PCI-7233
  * has dual-interrupt sources for change-of-state (COS) on any 16
  * digital input channels of LSB and for COS on any 16 digital input
- * lines of MSB. Interrupts are not currently supported by this
- * driver.
+ * lines of MSB.
+ *
+ * Currently, this driver only supports interrupts for PCI-7230.
  *
  * Configuration Options: not applicable, uses comedi PCI auto config
  */
@@ -47,13 +49,22 @@
 
 #include "../comedi_pci.h"
 
+#include "plx9052.h"
+
 /*
  * Register I/O map (32-bit access only)
  */
-#define PCI7X3X_DIO_REG		0x00
-#define PCI743X_DIO_REG		0x04
+#define PCI7X3X_DIO_REG		0x0000	/* in the DigIO Port area */
+#define PCI743X_DIO_REG		0x0004
+
+#define ADL_PT_CLRIRQ		0x0040	/* in the DigIO Port area */
 
-enum apci1516_boardid {
+#define LINTI1_EN_ACT_IDI0 (PLX9052_INTCSR_LI1ENAB | PLX9052_INTCSR_LI1STAT)
+#define LINTI2_EN_ACT_IDI1 (PLX9052_INTCSR_LI2ENAB | PLX9052_INTCSR_LI2STAT)
+#define EN_PCI_LINT2H_LINT1H	\
+	(PLX9052_INTCSR_PCIENAB | PLX9052_INTCSR_LI2POL | PLX9052_INTCSR_LI1POL)
+
+enum adl_pci7x3x_boardid {
 	BOARD_PCI7230,
 	BOARD_PCI7233,
 	BOARD_PCI7234,
@@ -67,14 +78,16 @@ struct adl_pci7x3x_boardinfo {
 	int nsubdevs;
 	int di_nchan;
 	int do_nchan;
+	int irq_nchan;
 };
 
 static const struct adl_pci7x3x_boardinfo adl_pci7x3x_boards[] = {
 	[BOARD_PCI7230] = {
 		.name		= "adl_pci7230",
-		.nsubdevs	= 2,
+		.nsubdevs	= 4,  /* IDI, IDO, IRQ_IDI0, IRQ_IDI1 */
 		.di_nchan	= 16,
 		.do_nchan	= 16,
+		.irq_nchan	= 2,
 	},
 	[BOARD_PCI7233] = {
 		.name		= "adl_pci7233",
@@ -104,6 +117,178 @@ static const struct adl_pci7x3x_boardinfo adl_pci7x3x_boards[] = {
 	}
 };
 
+struct adl_pci7x3x_dev_private_data {
+	unsigned long lcr_io_base;
+	unsigned int int_ctrl;
+};
+
+struct adl_pci7x3x_sd_private_data {
+	spinlock_t subd_slock;		/* spin-lock for cmd_running */
+	unsigned long port_offset;
+	short int cmd_running;
+};
+
+static void process_irq(struct comedi_device *dev, unsigned int subdev,
+			unsigned short intcsr)
+{
+	struct comedi_subdevice *s = &dev->subdevices[subdev];
+	struct adl_pci7x3x_sd_private_data *sd_priv = s->private;
+	unsigned long reg = sd_priv->port_offset;
+	struct comedi_async *async_p = s->async;
+
+	if (async_p) {
+		unsigned short val = inw(dev->iobase + reg);
+
+		spin_lock(&sd_priv->subd_slock);
+		if (sd_priv->cmd_running)
+			comedi_buf_write_samples(s, &val, 1);
+		spin_unlock(&sd_priv->subd_slock);
+		comedi_handle_events(dev, s);
+	}
+}
+
+static irqreturn_t adl_pci7x3x_interrupt(int irq, void *p_device)
+{
+	struct comedi_device *dev = p_device;
+	struct adl_pci7x3x_dev_private_data *dev_private = dev->private;
+	unsigned long cpu_flags;
+	unsigned int intcsr;
+	bool li1stat, li2stat;
+
+	if (!dev->attached) {
+		/* Ignore interrupt before device fully attached. */
+		/* Might not even have allocated subdevices yet! */
+		return IRQ_NONE;
+	}
+
+	/* Check if we are source of interrupt */
+	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	intcsr = inl(dev_private->lcr_io_base + PLX9052_INTCSR);
+	li1stat = (intcsr & LINTI1_EN_ACT_IDI0) == LINTI1_EN_ACT_IDI0;
+	li2stat = (intcsr & LINTI2_EN_ACT_IDI1) == LINTI2_EN_ACT_IDI1;
+	if (li1stat || li2stat) {
+		/* clear all current interrupt flags */
+		/* Fixme: Reset all 2 Int Flags */
+		outb(0x00, dev->iobase + ADL_PT_CLRIRQ);
+	}
+	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+
+	/* SubDev 2, 3 = Isolated DigIn , on "SCSI2" jack!*/
+
+	if (li1stat)	/* 0x0005 LINTi1 is Enabled && IDI0 is 1 */
+		process_irq(dev, 2, intcsr);
+
+	if (li2stat)	/* 0x0028 LINTi2 is Enabled && IDI1 is 1 */
+		process_irq(dev, 3, intcsr);
+
+	return IRQ_RETVAL(li1stat || li2stat);
+}
+
+static int adl_pci7x3x_asy_cmdtest(struct comedi_device *dev,
+				   struct comedi_subdevice *s,
+				   struct comedi_cmd *cmd)
+{
+	int err = 0;
+
+	/* Step 1 : check if triggers are trivially valid */
+
+	err |= comedi_check_trigger_src(&cmd->start_src, TRIG_NOW);
+	err |= comedi_check_trigger_src(&cmd->scan_begin_src, TRIG_EXT);
+	err |= comedi_check_trigger_src(&cmd->convert_src, TRIG_FOLLOW);
+	err |= comedi_check_trigger_src(&cmd->scan_end_src, TRIG_COUNT);
+	err |= comedi_check_trigger_src(&cmd->stop_src, TRIG_NONE);
+
+	if (err)
+		return 1;
+
+	/* Step 2a : make sure trigger sources are unique */
+	/* Step 2b : and mutually compatible */
+
+	/* Step 3: check if arguments are trivially valid */
+
+	err |= comedi_check_trigger_arg_is(&cmd->start_arg, 0);
+	err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
+	err |= comedi_check_trigger_arg_is(&cmd->convert_arg, 0);
+	err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
+					   cmd->chanlist_len);
+	err |= comedi_check_trigger_arg_is(&cmd->stop_arg, 0);
+
+	if (err)
+		return 3;
+
+	/* Step 4: fix up any arguments */
+
+	/* Step 5: check channel list if it exists */
+
+	return 0;
+}
+
+static int adl_pci7x3x_asy_cmd(struct comedi_device *dev,
+			       struct comedi_subdevice *s)
+{
+	struct adl_pci7x3x_dev_private_data *dev_private = dev->private;
+	struct adl_pci7x3x_sd_private_data *sd_priv = s->private;
+	unsigned long cpu_flags;
+	unsigned int int_enab;
+
+	if (s->index == 2) {
+		/* enable LINTi1 == IDI sdi[0] Ch 0 IRQ ActHigh */
+		int_enab = PLX9052_INTCSR_LI1ENAB;
+	} else {
+		/* enable LINTi2 == IDI sdi[0] Ch 1 IRQ ActHigh */
+		int_enab = PLX9052_INTCSR_LI2ENAB;
+	}
+
+	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	dev_private->int_ctrl |= int_enab;
+	outl(dev_private->int_ctrl, dev_private->lcr_io_base + PLX9052_INTCSR);
+	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+
+	spin_lock_irqsave(&sd_priv->subd_slock, cpu_flags);
+	sd_priv->cmd_running = 1;
+	spin_unlock_irqrestore(&sd_priv->subd_slock, cpu_flags);
+
+	return 0;
+}
+
+static int adl_pci7x3x_asy_cancel(struct comedi_device *dev,
+				  struct comedi_subdevice *s)
+{
+	struct adl_pci7x3x_dev_private_data *dev_private = dev->private;
+	struct adl_pci7x3x_sd_private_data *sd_priv = s->private;
+	unsigned long cpu_flags;
+	unsigned int int_enab;
+
+	spin_lock_irqsave(&sd_priv->subd_slock, cpu_flags);
+	sd_priv->cmd_running = 0;
+	spin_unlock_irqrestore(&sd_priv->subd_slock, cpu_flags);
+	/* disable Interrupts */
+	if (s->index == 2)
+		int_enab = PLX9052_INTCSR_LI1ENAB;
+	else
+		int_enab = PLX9052_INTCSR_LI2ENAB;
+	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	dev_private->int_ctrl &= ~int_enab;
+	outl(dev_private->int_ctrl, dev_private->lcr_io_base + PLX9052_INTCSR);
+	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+
+	return 0;
+}
+
+/* same as _di_insn_bits because the IRQ-pins are the DI-ports  */
+static int adl_pci7x3x_dirq_insn_bits(struct comedi_device *dev,
+				      struct comedi_subdevice *s,
+				      struct comedi_insn *insn,
+				      unsigned int *data)
+{
+	struct adl_pci7x3x_sd_private_data *sd_priv = s->private;
+	unsigned long reg = (unsigned long)sd_priv->port_offset;
+
+	data[1] = inl(dev->iobase + reg);
+
+	return insn->n;
+}
+
 static int adl_pci7x3x_do_insn_bits(struct comedi_device *dev,
 				    struct comedi_subdevice *s,
 				    struct comedi_insn *insn,
@@ -143,15 +328,28 @@ static int adl_pci7x3x_di_insn_bits(struct comedi_device *dev,
 	return insn->n;
 }
 
+static int adl_pci7x3x_reset(struct comedi_device *dev)
+{
+	struct adl_pci7x3x_dev_private_data *dev_private = dev->private;
+
+	/* disable Interrupts */
+	dev_private->int_ctrl = 0x00;  /* Disable PCI + LINTi2 + LINTi1 */
+	outl(dev_private->int_ctrl, dev_private->lcr_io_base + PLX9052_INTCSR);
+
+	return 0;
+}
+
 static int adl_pci7x3x_auto_attach(struct comedi_device *dev,
 				   unsigned long context)
 {
 	struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 	const struct adl_pci7x3x_boardinfo *board = NULL;
 	struct comedi_subdevice *s;
+	struct adl_pci7x3x_dev_private_data *dev_private;
 	int subdev;
 	int nchan;
 	int ret;
+	int ic;
 
 	if (context < ARRAY_SIZE(adl_pci7x3x_boards))
 		board = &adl_pci7x3x_boards[context];
@@ -160,10 +358,34 @@ static int adl_pci7x3x_auto_attach(struct comedi_device *dev,
 	dev->board_ptr = board;
 	dev->board_name = board->name;
 
+	dev_private = comedi_alloc_devpriv(dev, sizeof(*dev_private));
+	if (!dev_private)
+		return -ENOMEM;
+
 	ret = comedi_pci_enable(dev);
 	if (ret)
 		return ret;
 	dev->iobase = pci_resource_start(pcidev, 2);
+	dev_private->lcr_io_base = pci_resource_start(pcidev, 1);
+
+	adl_pci7x3x_reset(dev);
+
+	if (board->irq_nchan) {
+		/* discard all evtl. old IRQs */
+		outb(0x00, dev->iobase + ADL_PT_CLRIRQ);
+
+		if (pcidev->irq) {
+			ret = request_irq(pcidev->irq, adl_pci7x3x_interrupt,
+					  IRQF_SHARED, dev->board_name, dev);
+			if (ret == 0) {
+				dev->irq = pcidev->irq;
+				/* 0x52 PCI + IDI Ch 1 Ch 0 IRQ Off ActHigh */
+				dev_private->int_ctrl = EN_PCI_LINT2H_LINT1H;
+				outl(dev_private->int_ctrl,
+				     dev_private->lcr_io_base + PLX9052_INTCSR);
+			}
+		}
+	}
 
 	ret = comedi_alloc_subdevices(dev, board->nsubdevs);
 	if (ret)
@@ -237,14 +459,56 @@ static int adl_pci7x3x_auto_attach(struct comedi_device *dev,
 		}
 	}
 
+	for (ic = 0; ic < board->irq_nchan; ++ic) {
+		struct adl_pci7x3x_sd_private_data *sd_priv;
+
+		nchan = 1;
+
+		s = &dev->subdevices[subdev];
+		/* Isolated digital inputs 0 or 1 */
+		s->type		= COMEDI_SUBD_DI;
+		s->subdev_flags	= SDF_READABLE;
+		s->n_chan	= nchan;
+		s->maxdata	= 1;
+		s->insn_bits	= adl_pci7x3x_dirq_insn_bits;
+		s->range_table	= &range_digital;
+
+		sd_priv = comedi_alloc_spriv(s, sizeof(*sd_priv));
+		if (!sd_priv)
+			return -ENOMEM;
+
+		spin_lock_init(&sd_priv->subd_slock);
+		sd_priv->port_offset = PCI7X3X_DIO_REG;
+		sd_priv->cmd_running = 0;
+
+		if (dev->irq) {
+			dev->read_subdev = s;
+			s->type		= COMEDI_SUBD_DI;
+			s->subdev_flags	= SDF_READABLE | SDF_CMD_READ;
+			s->len_chanlist	= 1;
+			s->do_cmdtest	= adl_pci7x3x_asy_cmdtest;
+			s->do_cmd	= adl_pci7x3x_asy_cmd;
+			s->cancel	= adl_pci7x3x_asy_cancel;
+		}
+
+		subdev++;
+	}
+
 	return 0;
 }
 
+static void adl_pci7x3x_detach(struct comedi_device *dev)
+{
+	if (dev->iobase)
+		adl_pci7x3x_reset(dev);
+	comedi_pci_detach(dev);
+}
+
 static struct comedi_driver adl_pci7x3x_driver = {
 	.driver_name	= "adl_pci7x3x",
 	.module		= THIS_MODULE,
 	.auto_attach	= adl_pci7x3x_auto_attach,
-	.detach		= comedi_pci_detach,
+	.detach		= adl_pci7x3x_detach,
 };
 
 static int adl_pci7x3x_pci_probe(struct pci_dev *dev,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
