Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B7E292368
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 10:09:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AFDB8760E;
	Mon, 19 Oct 2020 08:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VmEY2OoAYWj; Mon, 19 Oct 2020 08:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E29CA875FE;
	Mon, 19 Oct 2020 08:09:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6FC21BF368
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 08:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 84A3D2038A
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 08:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ne3O6FMp+Zeu for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 08:09:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by silver.osuosl.org (Postfix) with ESMTPS id BE7872036B
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 08:09:24 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-172-DH4pvv-uOUyEe9KpmauANQ-1; Mon, 19 Oct 2020 09:09:19 +0100
X-MC-Unique: DH4pvv-uOUyEe9KpmauANQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 19 Oct 2020 09:09:19 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 19 Oct 2020 09:09:19 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Joe Perches' <joe@perches.com>, Colin King <colin.king@canonical.com>,
 =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Subject: RE: [PATCH] staging: wfx: make a const array static, makes object
 smaller
Thread-Topic: [PATCH] staging: wfx: make a const array static, makes object
 smaller
Thread-Index: AQHWpEyScXzNIHcPFUeKDbuJ6I0Y36melJgA
Date: Mon, 19 Oct 2020 08:09:19 +0000
Message-ID: <048fded745634e369fa2646f87a05ec4@AcuMS.aculab.com>
References: <20201016223303.687278-1-colin.king@canonical.com>
 <09cd7e609324d460afdf14829baf3c2f1a9cb9cd.camel@perches.com>
In-Reply-To: <09cd7e609324d460afdf14829baf3c2f1a9cb9cd.camel@perches.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Joe Perches
> Sent: 17 October 2020 01:12
> 
> On Fri, 2020-10-16 at 23:33 +0100, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> >
> > Don't populate const array filter_ies on the stack but instead
> > make it static. Makes the object code smaller by 261 bytes.
> >
> > Before:
> >    text	   data	    bss	    dec	    hex	filename
> >   21674	   3166	    448	  25288	   62c8	drivers/staging/wfx/sta.o
> >
> > After:
> >    text	   data	    bss	    dec	    hex	filename
> >   21349	   3230	    448	  25027	   61c3	drivers/staging/wfx/sta.o
> 
> Thanks.
> 
> It's odd to me it's so large a change as it's only
> 24 bytes of initialization. (3 entries, each 8 bytes)

Perhaps the 'stack protector' crap?

Interestingly, loading the data from the 'readonly' section
is probably a data cache miss.
Which might end up being slower than the extra code to
update the on-stack data.
The extra code might get prefetched...

	David
 

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
