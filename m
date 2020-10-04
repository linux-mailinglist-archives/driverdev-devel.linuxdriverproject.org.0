Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D845282A0D
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 12:01:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 797CF20475;
	Sun,  4 Oct 2020 10:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nXoWfvtgEu-p; Sun,  4 Oct 2020 10:01:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B66A820421;
	Sun,  4 Oct 2020 10:01:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDD261BF338
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 10:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7EF886061
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 10:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Aw1SDiHRW4bW for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 10:01:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 962D485CF0
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 10:01:28 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-261-Ghl-Rsi1Paaf30webE8vMA-1; Sun, 04 Oct 2020 11:01:23 +0100
X-MC-Unique: Ghl-Rsi1Paaf30webE8vMA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sun, 4 Oct 2020 11:01:23 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Sun, 4 Oct 2020 11:01:23 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Ross Schmidt' <ross.schm.dev@gmail.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH 1/8] staging: rtl8723bs: replace RND4 with round_up()
Thread-Topic: [PATCH 1/8] staging: rtl8723bs: replace RND4 with round_up()
Thread-Index: AQHWmew0DoS2fLKzG0OejM3ZccTfWamHNZkg
Date: Sun, 4 Oct 2020 10:01:23 +0000
Message-ID: <4f67bdfee5d74096b4ea0e92524e4951@AcuMS.aculab.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ross Schmidt
> Sent: 04 October 2020 02:18
> 
> Use round_up instead of define RND4.

RND4 was also particularly horrid!
...
> diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c
> b/drivers/staging/rtl8723bs/core/rtw_security.c
> index 7f74e1d05b3a..159d32ace2bc 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_security.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_security.c
> @@ -260,7 +260,7 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
>  				arcfour_encrypt(&mycontext, payload+length, crc, 4);
> 
>  				pframe += pxmitpriv->frag_len;
> -				pframe = (u8 *)RND4((SIZE_PTR)(pframe));
> +				pframe = (u8 *)round_up((SIZE_PTR)(pframe), 4);

I also suspect this is equivalent to:
				pframe == round_up(pxmitpriv->frag_len, 4);

Does make one wonder whether the skipped bytes need to be
zeroed though.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
