Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A6036564C
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 12:38:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 215AD60A79;
	Tue, 20 Apr 2021 10:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ugxaz26eJFo4; Tue, 20 Apr 2021 10:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5882260895;
	Tue, 20 Apr 2021 10:38:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB1141BF2A9
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 10:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA95983AB7
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 10:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bvR12J33TWUn for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 10:38:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBF1E83A42
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 10:38:02 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-191-YHdEDlu2P2KuNLjymnM4BQ-1; Tue, 20 Apr 2021 11:36:32 +0100
X-MC-Unique: YHdEDlu2P2KuNLjymnM4BQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 20 Apr 2021 11:36:32 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Tue, 20 Apr 2021 11:36:32 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Dan Carpenter' <dan.carpenter@oracle.com>
Subject: RE: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Thread-Topic: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Thread-Index: AQHXM7teiyJWcTifxUyFg0sAh0Hgi6q5OhAggAPtUoCAABHiYA==
Date: Tue, 20 Apr 2021 10:36:32 +0000
Message-ID: <ee70a3553f3143fe9d64ec20688782d2@AcuMS.aculab.com>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan>
 <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
 <20210420102747.GB1981@kadam>
In-Reply-To: <20210420102747.GB1981@kadam>
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
 Ashish Kalra <eashishkalra@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 'Mauro Carvalho Chehab' <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter
> Sent: 20 April 2021 11:28
> 
> On Sat, Apr 17, 2021 at 09:31:32PM +0000, David Laight wrote:
> > From: Mauro Carvalho Chehab
> > > Sent: 17 April 2021 19:56
> > >
> > > Em Sat, 17 Apr 2021 21:06:27 +0530
> > > Ashish Kalra <eashishkalra@gmail.com> escreveu:
> > >
> > > > Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> > > > for this file.  Logical and bitwise OR are basically the same in this
> > > > context so it doesn't cause a runtime bug.  But let's change it to
> > > > logical OR to make it cleaner and silence the Sparse warning.
> >
> > The old code is very likely to by slightly more efficient.
> >
> > It may not matter here, but it might in a really hot path.
> >
> > Since !x | !y and !x || !y always have the same value
> > why is sparse complaining at all.
> >
> 
> Smatch doesn't warn about | vs || if both sides are true/false.  But
> I've occasionally asked people if they were trying to do a fast path
> optimization but it's always just a typo.

The problem is with people blindly patching code to 'fix'
these warnings.
It might just be a fast path optimisation - which they break.

Trying to beat the compiler into submission can be hard though.
Getting it to 'or' together the outputs from a series of x86
'setne' instructions isn't for the faint hearted.
Not helped by the instruction only setting %al.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
