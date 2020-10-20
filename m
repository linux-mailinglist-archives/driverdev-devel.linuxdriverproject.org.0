Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8812129454A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 00:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD38086505;
	Tue, 20 Oct 2020 22:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LT6mR-lEBMQU; Tue, 20 Oct 2020 22:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A177864BD;
	Tue, 20 Oct 2020 22:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 119901BF393
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 22:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EDA0C2E8FC
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 22:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NhP-ptOMQkyj for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 22:58:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 47FA92E90A
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 21:53:10 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-213-FDpc4XWSONmUnr5iOVCXlw-1; Tue, 20 Oct 2020 22:53:05 +0100
X-MC-Unique: FDpc4XWSONmUnr5iOVCXlw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 20 Oct 2020 22:53:04 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 20 Oct 2020 22:53:04 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Dafna Hirschfeld' <dafna.hirschfeld@collabora.com>, 'Colin King'
 <colin.king@canonical.com>, Helen Koike <helen.koike@collabora.com>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Subject: RE: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
Thread-Topic: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
Thread-Index: AQHWpu/g1aA4z1vvvE6vSt76+nNaDamgnL6wgAAMVoCAAF2rAA==
Date: Tue, 20 Oct 2020 21:53:04 +0000
Message-ID: <c4cc1bd62e52419eb00631e539a6e703@AcuMS.aculab.com>
References: <20201020144655.53251-1-colin.king@canonical.com>
 <d5663dec063440129bf6c373aa252d51@AcuMS.aculab.com>
 <cec23fd3-15c1-8e52-3f4d-300d6149d89c@collabora.com>
In-Reply-To: <cec23fd3-15c1-8e52-3f4d-300d6149d89c@collabora.com>
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

From: Dafna Hirschfeld
> Sent: 20 October 2020 18:10
> 
> Am 20.10.20 um 17:29 schrieb David Laight:
> > From: Colin King
> >> Sent: 20 October 2020 15:47
> >>
> >> From: Colin Ian King <colin.king@canonical.com>
> >>
...
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-
> >> resizer.c
> >> index 1687d82e6c68..7ca5b47c5bf5 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> @@ -763,8 +763,10 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
> >>
> >>   static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
> >>   {
> >> -	const char * const dev_names[] = {RKISP1_RSZ_MP_DEV_NAME,
> >> -					  RKISP1_RSZ_SP_DEV_NAME};
> >> +	static const char * const dev_names[] = {
> >> +		RKISP1_RSZ_MP_DEV_NAME,
> >> +		RKISP1_RSZ_SP_DEV_NAME
> >> +	};
> >>   	struct media_pad *pads = rsz->pads;
> >>   	struct v4l2_subdev *sd = &rsz->sd;
> >>   	int ret;
> >
> > Don't look at what that code is actually doing....
> > It is rather horrid.
> > rkisp1_rsz_register() is called for each entry in an array (twice).
> > The array index is written into rsz->id.
> > The value is then used to select one of the two strings.
> > But rsz->id is actually an enum type.
> 
> Hi,
> Is it that bad to use enum as an array index?
> we use it in many places in the driver.

You'd normally use a constant from the enum to size the array definition.
In this case you've an enum, an array [2] and the dev_names[]
all of which have to match 'by magic'.

There is a loop that half implies you might add a third type.
but then the following code only works for the two types.
You've complex error recovery in case one of the calls to 
rkisp1_rsz_register() fails - but since there can only ever
be two calls the code could be much simpler.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
