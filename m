Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 678D6179354
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 16:26:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0C7552047D;
	Wed,  4 Mar 2020 15:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GYDgbezw3yJi; Wed,  4 Mar 2020 15:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C8F2B2049B;
	Wed,  4 Mar 2020 15:26:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 470F71BF83B
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 15:26:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 436C787152
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 15:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyrhzrkjEAC1 for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 15:26:05 +0000 (UTC)
X-Greylist: delayed 00:06:00 by SQLgrey-1.7.6
Received: from mx-relay77-hz1.antispameurope.com
 (mx-relay77-hz1.antispameurope.com [94.100.132.239])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 27B6386EB1
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 15:26:04 +0000 (UTC)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
 mx-relay77-hz1.antispameurope.com; Wed, 04 Mar 2020 16:19:59 +0100
Received: from mail.iis.fraunhofer.de (mail01.iis.fhg.de [153.96.171.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 9E2F82400083;
 Wed,  4 Mar 2020 16:19:56 +0100 (CET)
Received: from mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) by
 mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e) with Microsoft SMTP
 Server (TLS) id 15.0.1395.4; Wed, 4 Mar 2020 16:19:56 +0100
Received: from mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e]) by
 mail01.iis.fhg.de ([fe80::fd91:8c2a:e4a5:e74e%12]) with mapi id
 15.00.1395.000; Wed, 4 Mar 2020 16:19:56 +0100
From: "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de>
To: "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] uio: Prefer MSI(X) interrupts in PCI drivers
Thread-Topic: [PATCH 2/2] uio: Prefer MSI(X) interrupts in PCI drivers
Thread-Index: AQHTPqe0AewtzyOB0kiu6siMSnXwqaLWtAAAgAABSQCAABKaAIAV3VwAgAACLgCFUTs3gA==
Date: Wed, 4 Mar 2020 15:19:55 +0000
Message-ID: <9ba3cdd6d330486a91cb5c376f012b5b963c4eae.camel@iis-extern.fraunhofer.de>
References: <1507296707.2915.14.camel@iis-extern.fraunhofer.de>
 <1507296804.2915.16.camel@iis-extern.fraunhofer.de>
 <20171006134550.GA1626@kroah.com>
 <1507297826.2915.18.camel@iis-extern.fraunhofer.de>
 <20171006075700.587a5e22@xeon-e3> <20171020125044.GA8634@kroah.com>
 <1508504312.3128.23.camel@iis-extern.fraunhofer.de>
In-Reply-To: <1508504312.3128.23.camel@iis-extern.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [153.96.171.210]
Content-ID: <D7AB6DFC20E36C47BA570DC2F3116EC5@iis.fhg.de>
MIME-Version: 1.0
X-cloud-security-sender: manuel.stahl@iis-extern.fraunhofer.de
X-cloud-security-recipient: devel@driverdev.osuosl.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay77-hz1.antispameurope.com with C3591600930
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
 IP=153.96.172.4
X-cloud-security: scantime:.3309
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

Hi Greg,

so somehow this discussion stopped without any instructions how to proceed.
I think this kind of driver helps every FPGA developer to interface his design via PCIe to a Linux PC.
So if there is any chance to get this code merged, I'm glad to rebase this onto the latest kernel release.

Best regards,
Manuel Stahl

On Fr, 2017-10-20 at 14:58 +0200, Manuel Stahl wrote:
> Hi Greg,
> 
> it just uses MSI-X or MSI when available and falls back to legacy IRQ otherwise.
> 
> Regards,
> Manuel
> 
> On Fr, 2017-10-20 at 14:50 +0200, gregkh@linuxfoundation.org wrote:
> > On Fri, Oct 06, 2017 at 07:57:00AM -0700, Stephen Hemminger wrote:
> > > On Fri, 6 Oct 2017 13:50:44 +0000
> > > "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de> wrote:
> > > 
> > > > MSI(X) interrupts are not shared between devices. So when available
> > > > those should be preferred over legacy interrupts.
> > > > 
> > > > Signed-off-by: Manuel Stahl <manuel.stahl@iis.fraunhofer.de>
> > > > ---
> > > >  drivers/uio/uio_pci_dmem_genirq.c | 27 ++++++++++++++++++++-------
> > > >  drivers/uio/uio_pci_generic.c     | 24 ++++++++++++++++++------
> > > >  2 files changed, 38 insertions(+), 13 deletions(-)
> > > 
> > > The last time I tried to do MSI-X with pci-generic it got rejected
> > > by the maintainer.
> > 
> > Hm, yeah, this would break users today that do not have msi-x, right?
> > 
> > Not good, Manuel, how well did you test this?
> > 
> > thanks,
> > 
> > greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
