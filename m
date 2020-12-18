Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E222DE12C
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 11:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9D6387AD2;
	Fri, 18 Dec 2020 10:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGLW4xLLSbTC; Fri, 18 Dec 2020 10:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 396B787A67;
	Fri, 18 Dec 2020 10:38:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D54601BF385
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 10:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1E45878B9
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 10:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NsUuqWJA05A0 for <devel@linuxdriverproject.org>;
 Fri, 18 Dec 2020 10:38:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9FC11878B7
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 10:38:39 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-197-PIVC8sKqNfOkRnhW4ZbtOA-1; Fri, 18 Dec 2020 10:38:35 +0000
X-MC-Unique: PIVC8sKqNfOkRnhW4ZbtOA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 18 Dec 2020 10:38:35 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 18 Dec 2020 10:38:35 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Joe Perches' <joe@perches.com>, Daniel West <daniel.west.dev@gmail.com>, 
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] staging: most: video: fixed a parentheses coding style
 issue.
Thread-Topic: [PATCH] staging: most: video: fixed a parentheses coding style
 issue.
Thread-Index: AQHW1NDTd/J3KnGAs0yZSrCCE0TdLqn8mvVQgAAG7ICAAAdwsA==
Date: Fri, 18 Dec 2020 10:38:35 +0000
Message-ID: <934cbebcb57a49fd8761cc8b3aaffbfa@AcuMS.aculab.com>
References: <20201217234501.351725-1-daniel.west.dev@gmail.com>
 <04c331f6bfce57c253cb86208ebd28f6363e04c0.camel@perches.com>
 <d5993e314b134e038a1e4eeba32833ce@AcuMS.aculab.com>
 <c09401d003360cff41c949ccaea8ae9dc7b2c733.camel@perches.com>
In-Reply-To: <c09401d003360cff41c949ccaea8ae9dc7b2c733.camel@perches.com>
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
 "mchehab+huawei@kernel.org" <mchehab+huawei@kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
 "christian.gromm@microchip.com" <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Joe Perches
> Sent: 18 December 2020 10:09
> On Fri, 2020-12-18 at 09:49 +0000, David Laight wrote:
> > From: Joe Perches
> > checkpatch probably shouldn't complain about lines that end in (
> > if they are function definitions.
> 
> Opinons vary.
> 
> Very few function declaration/definitions in the linux kernel use the
> one line per argument style (gnu indent -bfde)
> 
> type function(
> 	type argument1,
> 	type argument2,
> 	...
> 	)
> {
> 	...
> }
> 
> It probably shouldn't be encouraged.

The only excuse for anything like that is if there are comments for
each parameter that are used to generate the interface documentation.

Using that style for function calls just wastes vertical space.
At least that doesn't happen in the kernel.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
