Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC441BDF9B
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 15:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32EA088427;
	Wed, 29 Apr 2020 13:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VIZcTD6EZePz; Wed, 29 Apr 2020 13:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8571D87C88;
	Wed, 29 Apr 2020 13:53:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1396D1BF32E
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 13:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E85C883DA
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 13:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RnuuG8abr7w2 for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 13:53:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx-relay77-hz1.antispameurope.com
 (mx-relay77-hz1.antispameurope.com [94.100.132.239])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6389887C88
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 13:53:09 +0000 (UTC)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
 mx-relay77-hz1.antispameurope.com; Wed, 29 Apr 2020 15:53:05 +0200
Received: from mail.iis.fraunhofer.de (mail03.iis.fhg.de [153.96.171.212])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 8733D2400082;
 Wed, 29 Apr 2020 15:53:02 +0200 (CEST)
Received: from mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) by
 mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a) with Microsoft SMTP
 Server (TLS) id 15.0.1395.4; Wed, 29 Apr 2020 15:53:02 +0200
Received: from mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e]) by
 mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e%12]) with mapi id
 15.00.1395.000; Wed, 29 Apr 2020 15:53:02 +0200
From: "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Thread-Topic: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Thread-Index: AQHWFA15mQXQpLHKR0emWdXVXY2Gm6iOf4GAgAEst4CAAB7rgIAARjmA
Date: Wed, 29 Apr 2020 13:53:02 +0000
Message-ID: <03b6755c07fb19420a7fb21b434b137aaa238893.camel@iis-extern.fraunhofer.de>
References: <1507296707.2915.14.camel@iis-extern.fraunhofer.de>
 <20200416163830.30623-1-manuel.stahl@iis-extern.fraunhofer.de>
 <20200428135443.GA1437053@kroah.com>
 <eb405ab3782844e379629a655a3dcaf38dd2552d.camel@iis-extern.fraunhofer.de>
 <20200429094141.GB2080576@kroah.com>
In-Reply-To: <20200429094141.GB2080576@kroah.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [153.96.171.210]
Content-ID: <360A9EF8EDE7BB4B89D615F459782861@iis.fhg.de>
MIME-Version: 1.0
X-cloud-security-sender: manuel.stahl@iis-extern.fraunhofer.de
X-cloud-security-recipient: devel@driverdev.osuosl.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay77-hz1.antispameurope.com with AED91602119
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
 IP=153.96.172.4
X-cloud-security: scantime:.3293
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sojkam1@fel.cvut.cz" <sojkam1@fel.cvut.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mi, 2020-04-29 at 11:41 +0200, gregkh@linuxfoundation.org wrote:
> On Wed, Apr 29, 2020 at 07:51:01AM +0000, Stahl, Manuel wrote:
> > On Di, 2020-04-28 at 15:54 +0200, gregkh @ linuxfoundation . org wrote:
> > > On Thu, Apr 16, 2020 at 06:38:30PM +0200, Manuel Stahl wrote:
> > > > 
> > > > + *
> > > > + * Since the driver does not declare any device ids, you must allocate
> > > > + * id and bind the device to the driver yourself.  For example:
> > > > + *
> > > > + * # echo "8086 10f5" > /sys/bus/pci/drivers/uio_pci_dmem_genirq/new_id
> > > > + * # echo -n 0000:00:19.0 > /sys/bus/pci/drivers/e1000e/unbind
> > > > + * # echo -n 0000:00:19.0 > /sys/bus/pci/drivers/uio_pci_dmem_genirq/bind
> > > > + * # ls -l /sys/bus/pci/devices/0000:00:19.0/driver
> > > > + * .../0000:00:19.0/driver -> ../../../bus/pci/drivers/uio_pci_dmem_genirq
> > > > + *
> > > > + * Or use a modprobe alias:
> > > > + * # alias pci:v000010EEd00001000sv*sd*sc*i* uio_pci_dmem_genirq
> > > > + *
> > > > + * Driver won't bind to devices which do not support the Interrupt Disable Bit
> > > > + * in the command register. All devices compliant to PCI 2.3 (circa 2002) and
> > > > + * all compliant PCI Express devices should support this bit.
> > > > + *
> > > > + * The DMA mask bits and sizes of dynamic regions are derived from module
> > > > + * parameters.
> > > > + *
> > > > + * The format for specifying dynamic region sizes in module parameters
> > > > + * is as follows:
> > > > + *
> > > > + * uio_pci_dmem_genirq.dmem_sizes := <uio_dmem_sizes_def>[;<uio_dmem_sizes_def>]
> > > > + * <uio_dmem_sizes_def>           := <pci_id>:<size>[,<size>]
> > > > + * <pci_id>                       := <vendor>:<device>
> > > > + * <size>                         := standard linux memsize
> > > > + *
> > > > + * Examples:
> > > > + *
> > > > + * 1) UIO dmem device with 3 dynamic regions:
> > > > + * uio_pci_dmem_genirq.dmem_sizes=8086:10f5:4K,16K,4M
> > > > + *
> > > > + * 2) Two UIO dmem devices with different number of dynamic regions:
> > > > + * uio_pci_dmem_genirq.dmem_sizes=8086:10f5:4K,16K,4M;1234:0001:8K
> > > 
> > > Module parameters are horrid, are you sure there is no other way?
> > 
> > You're right, seemed to be the simplest solution back when we started developing this driver. I will try to change it to sysfs, so that one can add regions while the module is already loaded.
> 
> /me hands you some \n characters...
> 
> Anyway, configfs is for configuring stuff, don't make a sysfs file that
> you have to somehow "parse" please.

Looking back at this driver after some years I realized again the reason
for using kernel parameters:

The current UIO API needs the information about available memory maps when
registering a new UIO device with __uio_register_device(), which obviously
needs to be called during probe() in uio_pci_dmem_genirq. Otherwise there
is no device file in /dev to open for user space applications.

After that there is no function to update the uio_map info. So we can either
keep the module parameters and allocate the DMA memory during probe() or
allocate the DMA memory during mmap() and
  a) replicate parts of uio_dev_add_attributes() in this driver to update sysfs
  b) add a function in uio.c to allow updates to the uio_map

Which way would you go?

Best regards,
Manuel Stahl
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
