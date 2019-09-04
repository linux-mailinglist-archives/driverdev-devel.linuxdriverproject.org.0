Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A4CA7F91
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 11:39:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2086E882AF;
	Wed,  4 Sep 2019 09:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1Yi9HzIrMc1; Wed,  4 Sep 2019 09:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE1C087C9F;
	Wed,  4 Sep 2019 09:39:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B6F91BF40B
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 09:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17E4B81E5E
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 09:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B828Flu-UNJz for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 09:39:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3C74811FC
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 09:39:00 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-106-MP-yMEjzODqKT_VQfSISUA-1; Wed, 04 Sep 2019 10:38:55 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 4 Sep 2019 10:38:55 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 4 Sep 2019 10:38:55 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: =?iso-8859-2?Q?=27Valentin_Vidi=E6=27?= <vvidic@valentin-vidic.from.hr>,
 Al Viro <viro@zeniv.linux.org.uk>
Subject: RE: [PATCH] staging: exfat: cleanup braces for if/else statements
Thread-Topic: [PATCH] staging: exfat: cleanup braces for if/else statements
Thread-Index: AQHVYoMgt2lCAY06IEWAL3uRVSEYfacbQ6fg
Date: Wed, 4 Sep 2019 09:38:55 +0000
Message-ID: <d14cda319c584db9b8aa35b15b542f89@AcuMS.aculab.com>
References: <20190903164732.14194-1-vvidic@valentin-vidic.from.hr>
 <20190903173249.GL1131@ZenIV.linux.org.uk>
 <20190903181208.GA8469@valentin-vidic.from.hr>
In-Reply-To: <20190903181208.GA8469@valentin-vidic.from.hr>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: MP-yMEjzODqKT_VQfSISUA-1
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Valentin Vidic
> Sent: 03 September 2019 19:12
> On Tue, Sep 03, 2019 at 06:32:49PM +0100, Al Viro wrote:
> > On Tue, Sep 03, 2019 at 06:47:32PM +0200, Valentin Vidic wrote:
> > > +			} else if (uni == 0xFFFF) {
> > >  				skip = TRUE;
> >
> > While we are at it, could you get rid of that 'TRUE' macro?
> 
> Sure, but maybe in a separate patch since TRUE/FALSE has more
> calls than just this.

I bet you can get rid of the 'skip' variable and simplify the code
by using continue/break/return (or maybe goto).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
