Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC774C378A
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 16:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23D8D879A6;
	Tue,  1 Oct 2019 14:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgY4edEQkpYi; Tue,  1 Oct 2019 14:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65A0685308;
	Tue,  1 Oct 2019 14:36:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DA0F1BF592
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 14:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 284EC20462
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 14:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4PR2Uk3529M for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 14:36:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [146.101.78.151])
 by silver.osuosl.org (Postfix) with ESMTPS id E479820763
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 14:36:14 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-217-OO_eyhEkOW2W7nALFS7WXw-1; Tue, 01 Oct 2019 15:36:10 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 1 Oct 2019 15:36:09 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 1 Oct 2019 15:36:09 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Dan Carpenter' <dan.carpenter@oracle.com>, Denis Efremov
 <efremov@linux.com>
Subject: RE: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Thread-Topic: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Thread-Index: AQHVd36LU5ikVLKK6EuvH5wLNYQtMKdEMyLwgAGeKE+AAAh2kA==
Date: Tue, 1 Oct 2019 14:36:09 +0000
Message-ID: <8d2e8196cae74ec4ae20e9c23e898207@AcuMS.aculab.com>
References: <20190930110141.29271-1-efremov@linux.com>
 <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
 <e4051dcb-10dc-ff17-ec0b-6f51dccdb5bf@linux.com>
 <20191001135649.GH22609@kadam>
In-Reply-To: <20191001135649.GH22609@kadam>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: OO_eyhEkOW2W7nALFS7WXw-1
X-Mimecast-Spam-Score: 0
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
 Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Dmitry Vyukov <dvyukov@google.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> From: Dan Carpenter
> Sent: 01 October 2019 14:57
> Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
...
> That's true for glibc memcpy() but not for the kernel memcpy().  In the
> kernel there are lots of places which do a zero size memcpy().

And probably from NULL (or even garbage) pointers.

After all a pointer to the end of an array (a + ARRAY_SIZE(a)) is valid
but must not be dereferenced - so memcpy() can't dereference it's
source address when the length is zero.

> The glibc attitude is "the standard allows us to put knives here" so
> let's put knives everywhere in the path.  And the GCC attitude is let's
> silently remove NULL checks instead of just printing a warning that the
> NULL check isn't required...  It could really make someone despondent.

gcc is the one that add knives...

This reminds me of me of a compiler that decided to optimise away
checks for function addresses being NULL.
At almost exactly the same time that ELF allowed for undefined weak symbols.
Checking whether a function was actually present was non-trivial.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
