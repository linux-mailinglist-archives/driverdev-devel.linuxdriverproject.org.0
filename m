Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE5D2FA361
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 15:44:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A94B28706A;
	Mon, 18 Jan 2021 14:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6CTlaViVYNCl; Mon, 18 Jan 2021 14:44:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E98386FEF;
	Mon, 18 Jan 2021 14:44:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCFC71BF3C2
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:44:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C61B520107
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 14:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HsbYG4ak-ScZ for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 14:44:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp106.iad3b.emailsrvr.com (smtp106.iad3b.emailsrvr.com
 [146.20.161.106])
 by silver.osuosl.org (Postfix) with ESMTPS id 434F62001A
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 14:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1610981055;
 bh=nXazQdOY7iEMcOAZomydWmeAD37+L0E4JSSgONcyadc=;
 h=From:To:Subject:Date:From;
 b=Y95gEzAgFPbx5moBCQZPqVAnHhXuIpP/Wq59KqSzmS90zGKLtjhmHAFiEWPOZEW0A
 aFlXr2oi7fc8QJcZtMG7oY8XkfCE762kbS+SNfyn795rrOtop7grW1UpG5Vvdcv2rZ
 E6ryedEYOS3Xcxu1feBze8Gy7fh0JABzaBlyLBZ4=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 941EA6022F; 
 Mon, 18 Jan 2021 09:44:14 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/2] staging: comedi: adv_pci_dio: Add interrupt handling for
 PCI-1730
Date: Mon, 18 Jan 2021 14:43:58 +0000
Message-Id: <20210118144359.378730-2-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118144359.378730-1-abbotti@mev.co.uk>
References: <20210118144359.378730-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: 8c5cf951-5880-4237-8386-e602c086236d-2-1
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

On the Advantech PCI-1730, four digital inputs (DI0, DI1, IDI0 and IDI1)
can be used as external interrupt sources.  Each input can be programmed
to latch an interrupt bit on either a rising edge or a falling edge (but
not both).

Add a new Comedi subdevice for each interrupt source, supporting the
asynchronous command interface.  Subdevices 5, 6, 7 and 8 are for
interrupt sources DI0, DI1, IDI0 and IDI1.  They each write the state of
16 digital inputs to the subdevice's data buffer each time the
corresponding interrupt occurs.  (For DI0 and DI1, use the 16
non-isolated digital inputs.  For IDI0 and IDI1, use the 16 isolated
digital inputs.)

Currently, only rising edge triggers are supported.  Support could be
added for the PCI-1733 and PCI-1736.

Signed-off-by: Bernd Harries <bha@gmx.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/staging/comedi/drivers/adv_pci_dio.c | 273 ++++++++++++++++++-
 1 file changed, 261 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/comedi/drivers/adv_pci_dio.c b/drivers/staging/comedi/drivers/adv_pci_dio.c
index 0df28ec00f37..a894d0844a81 100644
--- a/drivers/staging/comedi/drivers/adv_pci_dio.c
+++ b/drivers/staging/comedi/drivers/adv_pci_dio.c
@@ -34,9 +34,15 @@
  */
 
 /* PCI-1730, PCI-1733, PCI-1736 interrupt control registers */
-#define PCI173X_INT_EN_REG	0x08	/* R/W: enable/disable */
-#define PCI173X_INT_RF_REG	0x0c	/* R/W: falling/rising edge */
-#define PCI173X_INT_CLR_REG	0x10	/* R/W: clear */
+#define PCI173X_INT_EN_REG	0x0008	/* R/W: enable/disable */
+#define PCI173X_INT_RF_REG	0x000c	/* R/W: falling/rising edge */
+#define PCI173X_INT_FLAG_REG	0x0010	/* R: status */
+#define PCI173X_INT_CLR_REG	0x0010	/* W: clear */
+
+#define PCI173X_INT_IDI0 0x01  /* IDI0 edge occurred */
+#define PCI173X_INT_IDI1 0x02  /* IDI1 edge occurred */
+#define PCI173X_INT_DI0  0x04  /* DI0 edge occurred */
+#define PCI173X_INT_DI1  0x08  /* DI1 edge occurred */
 
 /* PCI-1739U, PCI-1750, PCI1751 interrupt control registers */
 #define PCI1750_INT_REG		0x20	/* R/W: status/control */
@@ -63,6 +69,7 @@
 #define PCI_DIO_MAX_DI_SUBDEVS	2	/* 2 x 8/16/32 input channels max */
 #define PCI_DIO_MAX_DO_SUBDEVS	2	/* 2 x 8/16/32 output channels max */
 #define PCI_DIO_MAX_DIO_SUBDEVG	2	/* 2 x any number of 8255 devices max */
+#define PCI_DIO_MAX_IRQ_SUBDEVS	4	/* 4 x 1 input IRQ channels max */
 
 enum pci_dio_boardid {
 	TYPE_PCI1730,
@@ -84,7 +91,12 @@ enum pci_dio_boardid {
 
 struct diosubd_data {
 	int chans;		/*  num of chans or 8255 devices */
-	unsigned long addr;	/*  PCI address ofset */
+	unsigned long addr;	/*  PCI address offset */
+};
+
+struct dio_irq_subd_data {
+	unsigned short int_en;		/* interrupt enable/status bit */
+	unsigned long addr;		/* PCI address offset */
 };
 
 struct dio_boardtype {
@@ -93,6 +105,7 @@ struct dio_boardtype {
 	struct diosubd_data sdi[PCI_DIO_MAX_DI_SUBDEVS];
 	struct diosubd_data sdo[PCI_DIO_MAX_DO_SUBDEVS];
 	struct diosubd_data sdio[PCI_DIO_MAX_DIO_SUBDEVG];
+	struct dio_irq_subd_data sdirq[PCI_DIO_MAX_IRQ_SUBDEVS];
 	unsigned long id_reg;
 	unsigned long timer_regbase;
 	unsigned int is_16bit:1;
@@ -101,12 +114,17 @@ struct dio_boardtype {
 static const struct dio_boardtype boardtypes[] = {
 	[TYPE_PCI1730] = {
 		.name		= "pci1730",
-		.nsubdevs	= 5,
+		/* DI, IDI, DO, IDO, ID, IRQ_DI0, IRQ_DI1, IRQ_IDI0, IRQ_IDI1 */
+		.nsubdevs	= 9,
 		.sdi[0]		= { 16, 0x02, },	/* DI 0-15 */
 		.sdi[1]		= { 16, 0x00, },	/* ISO DI 0-15 */
 		.sdo[0]		= { 16, 0x02, },	/* DO 0-15 */
 		.sdo[1]		= { 16, 0x00, },	/* ISO DO 0-15 */
 		.id_reg		= 0x04,
+		.sdirq[0]	= { PCI173X_INT_DI0,  0x02, },	/* DI 0 */
+		.sdirq[1]	= { PCI173X_INT_DI1,  0x02, },	/* DI 1 */
+		.sdirq[2]	= { PCI173X_INT_IDI0, 0x00, },	/* ISO DI 0 */
+		.sdirq[3]	= { PCI173X_INT_IDI1, 0x00, },	/* ISO DI 1 */
 	},
 	[TYPE_PCI1733] = {
 		.name		= "pci1733",
@@ -205,6 +223,173 @@ static const struct dio_boardtype boardtypes[] = {
 	},
 };
 
+struct pci_dio_dev_private_data {
+	int boardtype;
+	int irq_subd;
+	unsigned short int_ctrl;
+};
+
+struct pci_dio_sd_private_data {
+	spinlock_t subd_slock;		/* spin-lock for cmd_running */
+	unsigned long port_offset;
+	short int cmd_running;
+};
+
+static void process_irq(struct comedi_device *dev, unsigned int subdev,
+			unsigned char irqflags)
+{
+	struct comedi_subdevice *s = &dev->subdevices[subdev];
+	struct pci_dio_sd_private_data *sd_priv = s->private;
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
+static irqreturn_t pci_dio_interrupt(int irq, void *p_device)
+{
+	struct comedi_device *dev = p_device;
+	struct pci_dio_dev_private_data *dev_private = dev->private;
+	const struct dio_boardtype *board = dev->board_ptr;
+	unsigned long cpu_flags;
+	unsigned char irqflags;
+	int i;
+
+	if (!dev->attached) {
+		/* Ignore interrupt before device fully attached. */
+		/* Might not even have allocated subdevices yet! */
+		return IRQ_NONE;
+	}
+
+	/* Check if we are source of interrupt */
+	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	irqflags = inb(dev->iobase + PCI173X_INT_FLAG_REG);
+	if (!(irqflags & 0x0F)) {
+		spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+		return IRQ_NONE;
+	}
+
+	/* clear all current interrupt flags */
+	outb(irqflags, dev->iobase + PCI173X_INT_CLR_REG);
+	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+
+	/* check irq subdevice triggers */
+	for (i = 0; i < PCI_DIO_MAX_IRQ_SUBDEVS; i++) {
+		if (irqflags & board->sdirq[i].int_en)
+			process_irq(dev, dev_private->irq_subd + i, irqflags);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int pci_dio_asy_cmdtest(struct comedi_device *dev,
+			       struct comedi_subdevice *s,
+			       struct comedi_cmd *cmd)
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
+static int pci_dio_asy_cmd(struct comedi_device *dev,
+			   struct comedi_subdevice *s)
+{
+	struct pci_dio_dev_private_data *dev_private = dev->private;
+	struct pci_dio_sd_private_data *sd_priv = s->private;
+	const struct dio_boardtype *board = dev->board_ptr;
+	unsigned long cpu_flags;
+	unsigned short int_en;
+
+	int_en = board->sdirq[s->index - dev_private->irq_subd].int_en;
+
+	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	dev_private->int_ctrl |= int_en;	/* enable interrupt source */
+	outb(dev_private->int_ctrl, dev->iobase + PCI173X_INT_EN_REG);
+	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+
+	spin_lock_irqsave(&sd_priv->subd_slock, cpu_flags);
+	sd_priv->cmd_running = 1;
+	spin_unlock_irqrestore(&sd_priv->subd_slock, cpu_flags);
+
+	return 0;
+}
+
+static int pci_dio_asy_cancel(struct comedi_device *dev,
+			      struct comedi_subdevice *s)
+{
+	struct pci_dio_dev_private_data *dev_private = dev->private;
+	struct pci_dio_sd_private_data *sd_priv = s->private;
+	const struct dio_boardtype *board = dev->board_ptr;
+	unsigned long cpu_flags;
+	unsigned short int_en;
+
+	spin_lock_irqsave(&sd_priv->subd_slock, cpu_flags);
+	sd_priv->cmd_running = 0;
+	spin_unlock_irqrestore(&sd_priv->subd_slock, cpu_flags);
+
+	int_en = board->sdirq[s->index - dev_private->irq_subd].int_en;
+
+	spin_lock_irqsave(&dev->spinlock, cpu_flags);
+	dev_private->int_ctrl &= ~int_en;
+	outb(dev_private->int_ctrl, dev->iobase + PCI173X_INT_EN_REG);
+	spin_unlock_irqrestore(&dev->spinlock, cpu_flags);
+
+	return 0;
+}
+
+/* same as _insn_bits_di_ because the IRQ-pins are the DI-ports  */
+static int pci_dio_insn_bits_dirq_b(struct comedi_device *dev,
+				    struct comedi_subdevice *s,
+				    struct comedi_insn *insn,
+				    unsigned int *data)
+{
+	struct pci_dio_sd_private_data *sd_priv = s->private;
+	unsigned long reg = (unsigned long)sd_priv->port_offset;
+	unsigned long iobase = dev->iobase + reg;
+
+	data[1] = inb(iobase);
+
+	return insn->n;
+}
+
 static int pci_dio_insn_bits_di_b(struct comedi_device *dev,
 				  struct comedi_subdevice *s,
 				  struct comedi_insn *insn,
@@ -283,6 +468,7 @@ static int pci_dio_insn_bits_do_w(struct comedi_device *dev,
 
 static int pci_dio_reset(struct comedi_device *dev, unsigned long cardtype)
 {
+	struct pci_dio_dev_private_data *dev_private = dev->private;
 	/* disable channel freeze function on the PCI-1752/1756 boards */
 	if (cardtype == TYPE_PCI1752 || cardtype == TYPE_PCI1756)
 		outw(0, dev->iobase + PCI1752_CFC_REG);
@@ -292,9 +478,12 @@ static int pci_dio_reset(struct comedi_device *dev, unsigned long cardtype)
 	case TYPE_PCI1730:
 	case TYPE_PCI1733:
 	case TYPE_PCI1736:
-		outb(0, dev->iobase + PCI173X_INT_EN_REG);
+		dev_private->int_ctrl = 0x00;
+		outb(dev_private->int_ctrl, dev->iobase + PCI173X_INT_EN_REG);
+		/* Reset all 4 Int Flags */
 		outb(0x0f, dev->iobase + PCI173X_INT_CLR_REG);
-		outb(0, dev->iobase + PCI173X_INT_RF_REG);
+		/* Rising Edge => IRQ . On all 4 Pins */
+		outb(0x00, dev->iobase + PCI173X_INT_RF_REG);
 		break;
 	case TYPE_PCI1739:
 	case TYPE_PCI1750:
@@ -346,8 +535,8 @@ static int pci_dio_auto_attach(struct comedi_device *dev,
 {
 	struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 	const struct dio_boardtype *board = NULL;
-	const struct diosubd_data *d;
 	struct comedi_subdevice *s;
+	struct pci_dio_dev_private_data *dev_private;
 	int ret, subdev, i, j;
 
 	if (context < ARRAY_SIZE(boardtypes))
@@ -357,6 +546,10 @@ static int pci_dio_auto_attach(struct comedi_device *dev,
 	dev->board_ptr = board;
 	dev->board_name = board->name;
 
+	dev_private = comedi_alloc_devpriv(dev, sizeof(*dev_private));
+	if (!dev_private)
+		return -ENOMEM;
+
 	ret = comedi_pci_enable(dev);
 	if (ret)
 		return ret;
@@ -365,15 +558,25 @@ static int pci_dio_auto_attach(struct comedi_device *dev,
 	else
 		dev->iobase = pci_resource_start(pcidev, 2);
 
+	dev_private->boardtype = context;
 	pci_dio_reset(dev, context);
 
+	/* request IRQ if device has irq subdevices */
+	if (board->sdirq[0].int_en && pcidev->irq) {
+		ret = request_irq(pcidev->irq, pci_dio_interrupt, IRQF_SHARED,
+				  dev->board_name, dev);
+		if (ret == 0)
+			dev->irq = pcidev->irq;
+	}
+
 	ret = comedi_alloc_subdevices(dev, board->nsubdevs);
 	if (ret)
 		return ret;
 
 	subdev = 0;
 	for (i = 0; i < PCI_DIO_MAX_DI_SUBDEVS; i++) {
-		d = &board->sdi[i];
+		const struct diosubd_data *d = &board->sdi[i];
+
 		if (d->chans) {
 			s = &dev->subdevices[subdev++];
 			s->type		= COMEDI_SUBD_DI;
@@ -385,11 +588,13 @@ static int pci_dio_auto_attach(struct comedi_device *dev,
 						? pci_dio_insn_bits_di_w
 						: pci_dio_insn_bits_di_b;
 			s->private	= (void *)d->addr;
+
 		}
 	}
 
 	for (i = 0; i < PCI_DIO_MAX_DO_SUBDEVS; i++) {
-		d = &board->sdo[i];
+		const struct diosubd_data *d = &board->sdo[i];
+
 		if (d->chans) {
 			s = &dev->subdevices[subdev++];
 			s->type		= COMEDI_SUBD_DO;
@@ -420,7 +625,8 @@ static int pci_dio_auto_attach(struct comedi_device *dev,
 	}
 
 	for (i = 0; i < PCI_DIO_MAX_DIO_SUBDEVG; i++) {
-		d = &board->sdio[i];
+		const struct diosubd_data *d = &board->sdio[i];
+
 		for (j = 0; j < d->chans; j++) {
 			s = &dev->subdevices[subdev++];
 			ret = subdev_8255_init(dev, s, NULL,
@@ -454,14 +660,57 @@ static int pci_dio_auto_attach(struct comedi_device *dev,
 		comedi_8254_subdevice_init(s, dev->pacer);
 	}
 
+	dev_private->irq_subd = subdev; /* first interrupt subdevice index */
+	for (i = 0; i < PCI_DIO_MAX_IRQ_SUBDEVS; ++i) {
+		struct pci_dio_sd_private_data *sd_priv = NULL;
+		const struct dio_irq_subd_data *d = &board->sdirq[i];
+
+		if (d->int_en) {
+			s = &dev->subdevices[subdev++];
+			s->type		= COMEDI_SUBD_DI;
+			s->subdev_flags	= SDF_READABLE;
+			s->n_chan	= 1;
+			s->maxdata	= 1;
+			s->range_table	= &range_digital;
+			s->insn_bits	= pci_dio_insn_bits_dirq_b;
+			sd_priv = comedi_alloc_spriv(s, sizeof(*sd_priv));
+			if (!sd_priv)
+				return -ENOMEM;
+
+			spin_lock_init(&sd_priv->subd_slock);
+			sd_priv->port_offset = d->addr;
+			sd_priv->cmd_running = 0;
+
+			if (dev->irq) {
+				dev->read_subdev = s;
+				s->type		= COMEDI_SUBD_DI;
+				s->subdev_flags	= SDF_READABLE | SDF_CMD_READ;
+				s->len_chanlist	= 1;
+				s->do_cmdtest	= pci_dio_asy_cmdtest;
+				s->do_cmd	= pci_dio_asy_cmd;
+				s->cancel	= pci_dio_asy_cancel;
+			}
+		}
+	}
+
 	return 0;
 }
 
+static void pci_dio_detach(struct comedi_device *dev)
+{
+	struct pci_dio_dev_private_data *dev_private = dev->private;
+	int boardtype = dev_private->boardtype;
+
+	if (dev->iobase)
+		pci_dio_reset(dev, boardtype);
+	comedi_pci_detach(dev);
+}
+
 static struct comedi_driver adv_pci_dio_driver = {
 	.driver_name	= "adv_pci_dio",
 	.module		= THIS_MODULE,
 	.auto_attach	= pci_dio_auto_attach,
-	.detach		= comedi_pci_detach,
+	.detach		= pci_dio_detach,
 };
 
 static unsigned long pci_dio_override_cardtype(struct pci_dev *pcidev,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
