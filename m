Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBCA1BD691
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 09:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F09A87746;
	Wed, 29 Apr 2020 07:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qpPVlbQDwqRV; Wed, 29 Apr 2020 07:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8F5F876FD;
	Wed, 29 Apr 2020 07:51:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 835F71BF361
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 07:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B65D882C4
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 07:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rrO-xF3UQmlF for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 07:51:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx-relay78-hz1.antispameurope.com
 (mx-relay78-hz1.antispameurope.com [94.100.133.239])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61AE687A6E
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 07:51:14 +0000 (UTC)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
 mx-relay78-hz1.antispameurope.com; Wed, 29 Apr 2020 09:51:09 +0200
Received: from mail.iis.fraunhofer.de (mail01.iis.fhg.de [153.96.171.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id A532B2400082;
 Wed, 29 Apr 2020 09:51:02 +0200 (CEST)
Received: from mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) by
 mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) with Microsoft SMTP
 Server (TLS) id 15.0.1395.4; Wed, 29 Apr 2020 09:51:02 +0200
Received: from mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e]) by
 mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e%12]) with mapi id
 15.00.1395.000; Wed, 29 Apr 2020 09:51:02 +0200
From: "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Thread-Topic: [PATCH v4] Add new uio device for PCI with dynamic memory
 allocation
Thread-Index: AQHWFA15mQXQpLHKR0emWdXVXY2Gm6iOf4GAgAEst4A=
Date: Wed, 29 Apr 2020 07:51:01 +0000
Message-ID: <eb405ab3782844e379629a655a3dcaf38dd2552d.camel@iis-extern.fraunhofer.de>
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
Content-ID: <DB6D30FED112BA498DF5E122F00C71C2@iis.fhg.de>
MIME-Version: 1.0
X-cloud-security-sender: manuel.stahl@iis-extern.fraunhofer.de
X-cloud-security-recipient: devel@driverdev.osuosl.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay78-hz1.antispameurope.com with F356414813EE
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
 IP=153.96.172.4
X-cloud-security: scantime:.2600
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, "Stahl,
 Manuel" <manuel.stahl@iis-extern.fraunhofer.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sojkam1@fel.cvut.cz" <sojkam1@fel.cvut.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Di, 2020-04-28 at 15:54 +0200, gregkh @ linuxfoundation . org wrote:
> On Thu, Apr 16, 2020 at 06:38:30PM +0200, Manuel Stahl wrote:
> > 
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

You're right, seemed to be the simplest solution back when we started developing this driver. I will try to change it to sysfs, so that one can add regions while the module is already loaded.

Regards,
Manuel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
