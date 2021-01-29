Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2753090C4
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 00:54:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 410D2872D2;
	Fri, 29 Jan 2021 23:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nPyIVeNrNJ35; Fri, 29 Jan 2021 23:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 995A4872BA;
	Fri, 29 Jan 2021 23:54:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9F51BF9B2
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 23:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 682F0872B3
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 23:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JdzduBfKXxyW for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 23:54:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4021186D92
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 23:54:46 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-29-6edYh7Y8NwSD3Bzf9GiMrw-1; Fri, 29 Jan 2021 23:54:41 +0000
X-MC-Unique: 6edYh7Y8NwSD3Bzf9GiMrw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 29 Jan 2021 23:54:41 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 29 Jan 2021 23:54:41 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Emmanuel Arias' <eamanu@yaerobi.com>, "m.tretter@pengutronix.de"
 <m.tretter@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mchehab@kernel.org" <mchehab@kernel.org>
Subject: RE: [PATCH] media: allegro-dvt: Use __packed sentence
Thread-Topic: [PATCH] media: allegro-dvt: Use __packed sentence
Thread-Index: AQHW9nn+Eu7GW6k8EESnigV6OI4+Q6o/RrGQ
Date: Fri, 29 Jan 2021 23:54:41 +0000
Message-ID: <63a4ed5c2ef54c09b2df9d6234b68711@AcuMS.aculab.com>
References: <YBRpstkOi685uHef@debian>
In-Reply-To: <YBRpstkOi685uHef@debian>
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Emmanuel Arias
> Sent: 29 January 2021 20:02
> 
> Fix coding style using __packed sentece instead of
> __attribute__((__packed__)).
> 
> Signed-off-by: Emmanuel Arias <eamanu@yaerobi.com>
> ---
>  drivers/staging/media/allegro-dvt/allegro-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-
> dvt/allegro-core.c
> index 9f718f43282b..cee624dac61a 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -670,7 +670,7 @@ static ssize_t allegro_mbox_read(struct allegro_mbox *mbox,
>  	struct {
>  		u16 length;
>  		u16 type;
> -	} __attribute__ ((__packed__)) *header;
> +	} __packed *header;
>  	struct regmap *sram = mbox->dev->sram;

Does this actually need to be packed?
The only reason would be if the structure could exist on a 2n+1
boundary.
But that is only likely if part of some binary sequence.
In which case I'd expect it to be marked __be or __le.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
