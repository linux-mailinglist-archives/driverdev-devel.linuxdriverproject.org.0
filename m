Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C633D8326A
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 15:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D069786995;
	Tue,  6 Aug 2019 13:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id egZNbiw6s-X6; Tue,  6 Aug 2019 13:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 869E886762;
	Tue,  6 Aug 2019 13:12:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A4ED1BF28A
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 13:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4039C86767
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 13:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IhbHJWElU-HJ for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 13:12:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B20EA86762
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 13:12:03 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-31-8SN7SsMjODOE3pGV42hYng-1; Tue, 06 Aug 2019 14:10:15 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 6 Aug 2019 14:10:14 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 6 Aug 2019 14:10:14 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Dan Carpenter' <dan.carpenter@oracle.com>, Jose Carlos Cazarin Filho
 <joseespiriki@gmail.com>
Subject: RE: [PATCH] rtl8712: rtl871x_ioctl_linux.c: fix unnecessary typecast
Thread-Topic: [PATCH] rtl8712: rtl871x_ioctl_linux.c: fix unnecessary typecast
Thread-Index: AQHVTE2Sh/UbLvavCEKXN3OpolxoRabuFsqQ
Date: Tue, 6 Aug 2019 13:10:14 +0000
Message-ID: <8d6c6714f9ca46ab90b2a747c05b899b@AcuMS.aculab.com>
References: <20190806013329.28574-1-joseespiriki@gmail.com>
 <20190806115305.GF1974@kadam>
In-Reply-To: <20190806115305.GF1974@kadam>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: 8SN7SsMjODOE3pGV42hYng-1
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
 "florian.c.schilhabel@googlemail.com"
 <florian.c.schilhabel@googlemail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkcamp@lists.libreplanetbr.org" <lkcamp@lists.libreplanetbr.org>,
 "Larry.Finger@lwfinger.net" <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter
> Sent: 06 August 2019 12:53
> On Mon, Aug 05, 2019 at 10:33:29PM -0300, Jose Carlos Cazarin Filho wrote:
> > Fix checkpath warning:
> > WARNING: Unnecessary typecast of c90 int constant
> >
> > Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> > ---
> >  Hello all!
> >  This is my first commit to the Linux Kernel, I'm doing this to learn and be able
> >  to contribute more in the future
> >  Peace all!
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index 944336e0d..da371072e 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -665,8 +665,8 @@ static int r8711_wx_set_freq(struct net_device *dev,
> >
> >  /* If setting by frequency, convert to a channel */
> >  	if ((fwrq->e == 1) &&
> > -	  (fwrq->m >= (int) 2.412e8) &&
> > -	  (fwrq->m <= (int) 2.487e8)) {
> > +	  (fwrq->m >= 2.412e8) &&
> > +	  (fwrq->m <= 2.487e8)) {
> 
> I don't think we can do this.  You're not allowed to use floats in the
> kernel (because they make context switching slow).  I could have sworn
> that we use the -nofp to stop the compile when people use floats but
> this compiles fine for me.

My guess is the 'c90 int constant' text.

It rather implies that '2.412e8' has become the same as '2141200000'.
Which is rather worrying because suddenly 'int_var * 2.4e8' might
be an integer multiply rather than a double one and overflow.
Have the standard people broken code again?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
