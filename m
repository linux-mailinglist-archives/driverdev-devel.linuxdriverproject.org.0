Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F8E1BC422
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 17:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0725B87635;
	Tue, 28 Apr 2020 15:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m9GZ73CdZMsM; Tue, 28 Apr 2020 15:53:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A75D587618;
	Tue, 28 Apr 2020 15:53:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B2781BF2EB
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 15:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 67793879CD
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 15:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ox-L3++9yNUj for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 15:53:09 +0000 (UTC)
X-Greylist: delayed 00:05:17 by SQLgrey-1.7.6
Received: from mx-relay32-hz1.antispameurope.com
 (mx-relay32-hz1.antispameurope.com [94.100.133.208])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BADCB8791E
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 15:53:08 +0000 (UTC)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
 mx-relay32-hz1.antispameurope.com; Tue, 28 Apr 2020 17:47:45 +0200
Received: from mail.iis.fraunhofer.de (mail03.iis.fhg.de [153.96.171.212])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 5753B2400081;
 Tue, 28 Apr 2020 17:47:43 +0200 (CEST)
Received: from mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) by
 mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a) with Microsoft SMTP
 Server (TLS) id 15.0.1395.4; Tue, 28 Apr 2020 17:47:42 +0200
Received: from mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e]) by
 mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e%12]) with mapi id
 15.00.1395.000; Tue, 28 Apr 2020 17:47:43 +0200
From: "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Thread-Topic: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Thread-Index: AQHWFA15mQXQpLHKR0emWdXVXY2Gm6iOf4GAgAAfkIA=
Date: Tue, 28 Apr 2020 15:47:42 +0000
Message-ID: <6e93bbcb4ba85b4cc143aa8e3e7254071b3c8bdb.camel@iis-extern.fraunhofer.de>
References: <1507296707.2915.14.camel@iis-extern.fraunhofer.de>
 <20200416163830.30623-1-manuel.stahl@iis-extern.fraunhofer.de>
 <20200428135443.GA1437053@kroah.com>
In-Reply-To: <20200428135443.GA1437053@kroah.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [153.96.171.210]
Content-ID: <D39F72C96BB4444ABA239FB076F618CD@iis.fhg.de>
MIME-Version: 1.0
X-cloud-security-sender: manuel.stahl@iis-extern.fraunhofer.de
X-cloud-security-recipient: devel@driverdev.osuosl.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay32-hz1.antispameurope.com with 77CD98C539A
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
 IP=153.96.172.4
X-cloud-security: scantime:.2623
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "hjk@linutronix.de" <hjk@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sojkam1@fel.cvut.cz" <sojkam1@fel.cvut.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Di, 2020-04-28 at 15:54 +0200, greg k-h wrote:
> On Thu, Apr 16, 2020 at 06:38:30PM +0200, Manuel Stahl wrote:
> > This device combines the uio_pci_generic driver and the uio_dmem_genirq
> > driver since PCI uses a slightly different API for interrupts.
> > A fixed number of DMA capable memory regions can be defined using the
> > module parameter "dmem_sizes". The memory is not allocated until the uio
> > device file is opened for the first time. When the device file is closed,
> > the allocated memory block is freed. Physical (DMA) addresses for the
> > dynamic regions are provided to the userspace via
> > /sys/class/uio/uioX/maps/mapY/addr
> > When no processes are holding the device file open, the address returned
> > to userspace is DMA_ERROR_CODE.
> > 
> > Signed-off-by: Manuel Stahl <manuel.stahl@iis.fraunhofer.de>
> > ---
> >  MAINTAINERS                       |   6 +
> >  drivers/uio/Kconfig               |   9 +
> >  drivers/uio/Makefile              |   1 +
> >  drivers/uio/uio_pci_dmem_genirq.c | 351 ++++++++++++++++++++++++++++++
> >  4 files changed, 367 insertions(+)
> >  create mode 100644 drivers/uio/uio_pci_dmem_genirq.c
> 
> What changed from previous versions?  Always put that below the ---
> line.

Only rebased to the latest kernel version and incorporated changes from uio_pci_generic and uio_dmem_genirq.
No recommendations were made about other required changes, the discussion stopped about the fact if such a driver (UIO with DMA) should be allowed at all. For me such a driver allows me to quickly
test different FPGA designs on computers that don't have specific security requirements.

> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index e64e5db31497..446931530dbc 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -7149,6 +7149,12 @@ L:	kvm@vger.kernel.org
> >  S:	Supported
> >  F:	drivers/uio/uio_pci_generic.c
> >  
> > +GENERIC UIO DRIVER FOR PCI DEVICES WITH DMA
> > +M:	"Manuel Stahl" <manuel.stahl@iis.fraunhofer.de>
> > +L:	kvm@vger.kernel.org
> > +S:	Supported
> > +F:	drivers/uio/uio_pci_dmem_genirq.c
> > +
> >  GENERIC VDSO LIBRARY
> >  M:	Andy Lutomirski <luto@kernel.org>
> >  M:	Thomas Gleixner <tglx@linutronix.de>
> > diff --git a/drivers/uio/Kconfig b/drivers/uio/Kconfig
> > index 202ee81cfc2b..0d3f8a01ec74 100644
> > --- a/drivers/uio/Kconfig
> > +++ b/drivers/uio/Kconfig
> > @@ -94,6 +94,15 @@ config UIO_PCI_GENERIC
> >  	  primarily, for virtualization scenarios.
> >  	  If you compile this as a module, it will be called uio_pci_generic.
> >  
> > +config UIO_PCI_DMEM_GENIRQ
> > +	tristate "Generic driver for PCI 2.3 and PCI Express cards with DMA"
> > +	depends on PCI
> > +	help
> > +	  Generic driver that you can bind, dynamically, to any
> > +	  PCI 2.3 compliant and PCI Express card. It is useful
> > +	  for FPGAs with DMA capability connected via PCI.
> > +	  If you compile this as a module, it will be called uio_pci_dmem_genirq.
> > +
> >  config UIO_NETX
> >  	tristate "Hilscher NetX Card driver"
> >  	depends on PCI
> > diff --git a/drivers/uio/Makefile b/drivers/uio/Makefile
> > index c285dd2a4539..202d6bfdd5aa 100644
> > --- a/drivers/uio/Makefile
> > +++ b/drivers/uio/Makefile
> > @@ -6,6 +6,7 @@ obj-$(CONFIG_UIO_DMEM_GENIRQ)	+= uio_dmem_genirq.o
> >  obj-$(CONFIG_UIO_AEC)	+= uio_aec.o
> >  obj-$(CONFIG_UIO_SERCOS3)	+= uio_sercos3.o
> >  obj-$(CONFIG_UIO_PCI_GENERIC)	+= uio_pci_generic.o
> > +obj-$(CONFIG_UIO_PCI_DMEM_GENIRQ)	+= uio_pci_dmem_genirq.o
> >  obj-$(CONFIG_UIO_NETX)	+= uio_netx.o
> >  obj-$(CONFIG_UIO_PRUSS)         += uio_pruss.o
> >  obj-$(CONFIG_UIO_MF624)         += uio_mf624.o
> > diff --git a/drivers/uio/uio_pci_dmem_genirq.c b/drivers/uio/uio_pci_dmem_genirq.c
> > new file mode 100644
> > index 000000000000..be1bdcc552fe
> > --- /dev/null
> > +++ b/drivers/uio/uio_pci_dmem_genirq.c
> > @@ -0,0 +1,351 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* uio_pci_generic - generic UIO driver for PCI 2.3 devices with DMA memory
> > + *
> > + * Copyright (C) 2016 Fraunhofer IIS
> > + * Author: Manuel Stahl <manuel.stahl@iis.fraunhofer.de>
> > + *
> > + * Based on uio_pci_generic.c by Michael S. Tsirkin
> > + * and uio_dmem_genirq.c by Damian Hobson-Garcia.
> > + *
> > + * Since the driver does not declare any device ids, you must allocate
> > + * id and bind the device to the driver yourself.  For example:
> > + *
> > + * # echo "8086 10f5" > /sys/bus/pci/drivers/uio_pci_dmem_genirq/new_id
> > + * # echo -n 0000:00:19.0 > /sys/bus/pci/drivers/e1000e/unbind
> > + * # echo -n 0000:00:19.0 > /sys/bus/pci/drivers/uio_pci_dmem_genirq/bind
> > + * # ls -l /sys/bus/pci/devices/0000:00:19.0/driver
> > + * .../0000:00:19.0/driver -> ../../../bus/pci/drivers/uio_pci_dmem_genirq
> > + *
> > + * Or use a modprobe alias:
> > + * # alias pci:v000010EEd00001000sv*sd*sc*i* uio_pci_dmem_genirq
> > + *
> > + * Driver won't bind to devices which do not support the Interrupt Disable Bit
> > + * in the command register. All devices compliant to PCI 2.3 (circa 2002) and
> > + * all compliant PCI Express devices should support this bit.
> > + *
> > + * The DMA mask bits and sizes of dynamic regions are derived from module
> > + * parameters.
> > + *
> > + * The format for specifying dynamic region sizes in module parameters
> > + * is as follows:
> > + *
> > + * uio_pci_dmem_genirq.dmem_sizes := <uio_dmem_sizes_def>[;<uio_dmem_sizes_def>]
> > + * <uio_dmem_sizes_def>           := <pci_id>:<size>[,<size>]
> > + * <pci_id>                       := <vendor>:<device>
> > + * <size>                         := standard linux memsize
> > + *
> > + * Examples:
> > + *
> > + * 1) UIO dmem device with 3 dynamic regions:
> > + * uio_pci_dmem_genirq.dmem_sizes=8086:10f5:4K,16K,4M
> > + *
> > + * 2) Two UIO dmem devices with different number of dynamic regions:
> > + * uio_pci_dmem_genirq.dmem_sizes=8086:10f5:4K,16K,4M;1234:0001:8K
> 
> Module parameters are horrid, are you sure there is no other way?
> 
> 
> > + */
> > +
> > +#include <linux/device.h>
> > +#include <linux/module.h>
> > +#include <linux/pci.h>
> > +#include <linux/slab.h>
> > +#include <linux/uio_driver.h>
> > +#include <linux/bitops.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/stringify.h>
> > +#include <linux/dma-mapping.h>
> > +
> > +#define DRIVER_VERSION  "0.01.0"
> > +#define DRIVER_AUTHOR   "Manuel Stahl <manuel.stahl@iis.fraunhofer.de>"
> > +#define DRIVER_DESC "Generic UIO driver for PCI 2.3 devices with DMA memory"
> > +#define DRIVER_NAME "uio_pci_dmem_genirq"
> > +#define DMEM_MAP_ERROR (~0)
> > +
> > +struct uio_pci_dmem_dev {
> > +	struct uio_info info;
> > +	struct pci_dev *pdev;
> > +	void *dmem_region_vaddr[MAX_UIO_MAPS];
> > +	unsigned int refcnt;
> > +	struct mutex alloc_lock; /* mutex for dmem_region_vaddr and refcnt */
> > +};
> > +
> > +static inline struct uio_pci_dmem_dev *
> > +to_uio_pci_dmem_dev(struct uio_info *info)
> > +{
> > +	return container_of(info, struct uio_pci_dmem_dev, info);
> > +}
> > +
> > +static int open(struct uio_info *info, struct inode *inode)
> > +{
> > +	struct uio_pci_dmem_dev *priv = to_uio_pci_dmem_dev(info);
> > +	struct uio_mem *uiomem;
> > +	int dmem_region = 0;
> > +
> > +	uiomem = &priv->info.mem[dmem_region];
> > +
> > +	mutex_lock(&priv->alloc_lock);
> > +	while (!priv->refcnt && uiomem < &priv->info.mem[MAX_UIO_MAPS]) {
> > +		void *addr;
> > +
> > +		if (!uiomem->size)
> > +			break;
> > +
> > +		addr = dma_alloc_coherent(&priv->pdev->dev, uiomem->size,
> > +					  (dma_addr_t *)&uiomem->addr,
> > +					  GFP_KERNEL);
> > +		if (!addr)
> > +			uiomem->addr = DMEM_MAP_ERROR;
> > +
> > +		priv->dmem_region_vaddr[dmem_region++] = addr;
> > +		++uiomem;
> > +	}
> > +	if (pci_check_and_mask_intx(priv->pdev))
> > +		dev_info(&priv->pdev->dev, "Found pending interrupt");
> > +
> > +	if (!priv->refcnt)
> > +		pci_set_master(priv->pdev);
> > +
> > +	priv->refcnt++;
> > +
> > +	mutex_unlock(&priv->alloc_lock);
> > +
> > +	return 0;
> > +}
> > +
> > +static int release(struct uio_info *info, struct inode *inode)
> > +{
> > +	struct uio_pci_dmem_dev *priv = to_uio_pci_dmem_dev(info);
> > +	struct uio_mem *uiomem;
> > +	int dmem_region = 0;
> > +
> > +	uiomem = &priv->info.mem[dmem_region];
> > +
> > +	mutex_lock(&priv->alloc_lock);
> > +
> > +	priv->refcnt--;
> > +	while (!priv->refcnt && uiomem < &priv->info.mem[MAX_UIO_MAPS]) {
> > +		if (!uiomem->size)
> > +			break;
> > +		if (priv->dmem_region_vaddr[dmem_region]) {
> > +			dma_free_coherent(&priv->pdev->dev, uiomem->size,
> > +					  priv->dmem_region_vaddr[dmem_region],
> > +					  uiomem->addr);
> > +		}
> > +		uiomem->addr = DMEM_MAP_ERROR;
> > +		++dmem_region;
> > +		++uiomem;
> > +	}
> > +	if (pci_check_and_mask_intx(priv->pdev))
> > +		dev_info(&priv->pdev->dev, "Found pending interrupt");
> > +
> > +	if (!priv->refcnt)
> > +		pci_clear_master(priv->pdev);
> > +
> > +	mutex_unlock(&priv->alloc_lock);
> > +	return 0;
> > +}
> > +
> > +static int dmem_mmap(struct uio_info *info, struct vm_area_struct *vma)
> > +{
> > +	struct uio_pci_dmem_dev *gdev = to_uio_pci_dmem_dev(info->priv);
> > +	struct uio_mem *uiomem;
> > +	int mi = vma->vm_pgoff;
> > +
> > +	if (mi >= MAX_UIO_MAPS)
> > +		return -EINVAL;
> > +
> > +	uiomem = &info->mem[mi];
> > +	if (uiomem->memtype != UIO_MEM_PHYS)
> > +		return -EINVAL;
> > +	if (!uiomem->size)
> > +		return -EINVAL;
> > +
> > +	/* DMA address */
> > +	vma->vm_pgoff = 0;
> > +	return dma_mmap_coherent(&gdev->pdev->dev, vma,
> > +				 gdev->dmem_region_vaddr[mi],
> > +				 uiomem->addr, uiomem->size);
> > +}
> > +
> > +/* Interrupt handler. Read/modify/write the command register to disable the
> > + * interrupt.
> > + */
> > +static irqreturn_t irqhandler(int irq, struct uio_info *info)
> > +{
> > +	struct uio_pci_dmem_dev *gdev = to_uio_pci_dmem_dev(info);
> > +
> > +	if (!pci_check_and_mask_intx(gdev->pdev))
> > +		return IRQ_NONE;
> > +
> > +	/* UIO core will signal the user process. */
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static unsigned int uio_dmem_dma_bits = 32;
> > +static char uio_dmem_sizes[256];
> > +
> > +static int parse_dmem_entries(struct pci_dev *pdev,
> > +			      const struct pci_device_id *id,
> > +			      struct uio_pci_dmem_dev *gdev)
> > +{
> > +	int ret;
> > +	u32 regions = 0;
> > +	u32 vendor, device;
> > +	char *s, *tok, *sizes = NULL;
> > +	unsigned long long size;
> > +	struct uio_mem *uiomem;
> > +	char * const buf = kstrdup(uio_dmem_sizes, GFP_KERNEL);
> > +
> > +	if (!buf)
> > +		return -ENOMEM;
> > +
> > +	/* Find-out start and end of sizes list */
> > +	s = buf;
> > +	while (*s != '\0') {
> > +		sizes = NULL;
> > +		tok = strsep(&s, ":");
> > +		if (!tok)
> > +			break;
> > +		ret = kstrtou32(tok, 16, &vendor);
> > +		if (ret)
> > +			break;
> > +		tok = strsep(&s, ":");
> > +		if (!tok)
> > +			break;
> > +		ret = kstrtou32(tok, 16, &device);
> > +		if (ret)
> > +			break;
> > +		sizes = strsep(&s, ";");
> > +		if (vendor == id->vendor && device == id->device)
> > +			break;
> > +	}
> > +
> > +	memset(gdev->info.mem, 0, sizeof(gdev->info.mem));
> > +	if (sizes) {
> > +		dev_info(&pdev->dev, "Regions: %s\n", sizes);
> 
> When drivers are working, they should not spit out any messages, make
> this, and the other dev_info() calls in here, dev_dbg() at the most.
> 
> > +
> > +		/* Parse dynamic regions from sizes list */
> > +		regions = 0;
> > +		size = 0;
> > +		s = sizes;
> > +		while (s && (regions < MAX_UIO_MAPS)) {
> > +			tok = strsep(&s, ",");
> > +			if (!tok)
> > +				break;
> > +
> > +			size = memparse(tok, NULL);
> > +			if (size) {
> > +				uiomem = &gdev->info.mem[regions];
> > +				uiomem->memtype = UIO_MEM_PHYS;
> > +				/* Will be allocated in open() call */
> > +				uiomem->addr = DMEM_MAP_ERROR;
> > +				uiomem->size = size;
> > +				regions++;
> > +			}
> > +		}
> > +		if (s)
> > +			dev_warn(&pdev->dev, "device has more than "
> > +					__stringify(MAX_UIO_MAPS)
> > +					" dynamic memory regions.\n");
> > +	}
> > +	dev_info(&pdev->dev, "Found %d regions\n", regions);
> > +
> > +	kfree(buf);
> > +	return ret;
> > +}
> > +
> > +static int probe(struct pci_dev *pdev, const struct pci_device_id *id)
> > +{
> > +	struct uio_pci_dmem_dev *gdev;
> > +	int err;
> > +
> > +	dev_info(&pdev->dev, "Probe %s for %04x:%04x\n", DRIVER_NAME,
> > +		 id->vendor, id->device);
> > +
> > +	err = pci_enable_device(pdev);
> > +	if (err) {
> > +		dev_err(&pdev->dev, "%s: pci_enable_device failed: %d\n",
> > +			__func__, err);
> 
> __func__ is not needed for any dev_* call.
> 
> > +		return err;
> > +	}
> > +	pci_set_master(pdev);
> > +
> > +	dev_info(&pdev->dev, "Legacy IRQ: %i", pdev->irq);
> 
> Again, remove, be quiet :)

Use dev_dbg() or remove completely?

Best regards,
Manuel Stahl
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
