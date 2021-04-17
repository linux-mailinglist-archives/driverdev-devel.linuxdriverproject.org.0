Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C99C736327E
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Apr 2021 23:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B79F82C7D;
	Sat, 17 Apr 2021 21:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S3eBR1ajiqiY; Sat, 17 Apr 2021 21:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F139F82C33;
	Sat, 17 Apr 2021 21:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8981BF2B1
 for <devel@linuxdriverproject.org>; Sat, 17 Apr 2021 21:31:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AC03403C6
 for <devel@linuxdriverproject.org>; Sat, 17 Apr 2021 21:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fIPSGuvIZHNW for <devel@linuxdriverproject.org>;
 Sat, 17 Apr 2021 21:31:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BB97403C2
 for <devel@driverdev.osuosl.org>; Sat, 17 Apr 2021 21:31:37 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-220-berY7wNPPR-CGAsjwcAdkw-1; Sat, 17 Apr 2021 22:31:33 +0100
X-MC-Unique: berY7wNPPR-CGAsjwcAdkw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Sat, 17 Apr 2021 22:31:32 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Sat, 17 Apr 2021 22:31:32 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Mauro Carvalho Chehab' <mchehab@kernel.org>, Ashish Kalra
 <eashishkalra@gmail.com>
Subject: RE: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Thread-Topic: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Thread-Index: AQHXM7teiyJWcTifxUyFg0sAh0Hgi6q5OhAg
Date: Sat, 17 Apr 2021 21:31:32 +0000
Message-ID: <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan>
In-Reply-To: <20210417205613.5c1aac74@coco.lan>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mauro Carvalho Chehab
> Sent: 17 April 2021 19:56
> 
> Em Sat, 17 Apr 2021 21:06:27 +0530
> Ashish Kalra <eashishkalra@gmail.com> escreveu:
> 
> > Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> > for this file.  Logical and bitwise OR are basically the same in this
> > context so it doesn't cause a runtime bug.  But let's change it to
> > logical OR to make it cleaner and silence the Sparse warning.

The old code is very likely to by slightly more efficient.

It may not matter here, but it might in a really hot path.

Since !x | !y and !x || !y always have the same value
why is sparse complaining at all.

	David

> >
> > Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
> > ---
> >  .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > index 358cb7d2cd4c..3b850bb2d39d 100644
> > --- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > +++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > @@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
> >  	unsigned int ds_log2 = 0;
> >  	unsigned int out_width;
> >
> > -	if ((!out_info) | (!vf_info))
> > +	if ((!out_info) || (!vf_info))
> 
> 
> While here, please get rid of the unneeded parenthesis:
> 
> 	if (!out_info || !vf_info)
> 
> 
> >  		return -EINVAL;
> >
> >  	out_width = out_info->res.width;
> 
> 
> 
> Thanks,
> Mauro

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
