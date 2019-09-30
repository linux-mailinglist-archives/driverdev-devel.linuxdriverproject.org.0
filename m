Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFDEC21E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 15:25:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D412A85EC6;
	Mon, 30 Sep 2019 13:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DsX4SzOW8tE; Mon, 30 Sep 2019 13:25:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92B7085C97;
	Mon, 30 Sep 2019 13:25:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C1221BF3B1
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 13:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6852820242
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 13:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3N+7uXIgvNUk for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 13:25:17 +0000 (UTC)
X-Greylist: delayed 00:06:39 by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [146.101.78.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 9227020130
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 13:25:16 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-207-hnslXOvPO-C_5kCPTbZeHQ-1; Mon, 30 Sep 2019 14:18:32 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 30 Sep 2019 14:18:32 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 30 Sep 2019 14:18:32 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Denis Efremov' <efremov@linux.com>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Subject: RE: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Thread-Topic: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Thread-Index: AQHVd36LU5ikVLKK6EuvH5wLNYQtMKdEMyLw
Date: Mon, 30 Sep 2019 13:18:32 +0000
Message-ID: <37b195b700394e95aa8329afc9f60431@AcuMS.aculab.com>
References: <20190930110141.29271-1-efremov@linux.com>
In-Reply-To: <20190930110141.29271-1-efremov@linux.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: hnslXOvPO-C_5kCPTbZeHQ-1
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
Cc: Jes Sorensen <jes.sorensen@gmail.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Denis Efremov
> Sent: 30 September 2019 12:02
> memcpy() in phy_ConfigBBWithParaFile() and PHY_ConfigRFWithParaFile() is
> called with "src == NULL && len == 0". This is an undefined behavior.

I'm pretty certain it is well defined (to do nothing).

> Moreover this if pre-condition "pBufLen && (*pBufLen == 0) && !pBuf"
> is constantly false because it is a nested if in the else brach, i.e.,
> "if (cond) { ... } else { if (cond) {...} }". This patch alters the
> if condition to check "pBufLen && pBuf" pointers are not NULL.
> 
...
> ---
> Not tested. I don't have the hardware. The fix is based on my guess.
> 
>  drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
> index 6539bee9b5ba..0902dc3c1825 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
> @@ -2320,7 +2320,7 @@ int phy_ConfigBBWithParaFile(
>  			}
>  		}
>  	} else {
> -		if (pBufLen && (*pBufLen == 0) && !pBuf) {
> +		if (pBufLen && pBuf) {
>  			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);

The existing code is clearly garbage.
It only ever does memcpy(tgt, NULL, 0).

Under the assumption that the code has been tested the copy clearly isn't needed at all
and can be deleted completely!

OTOH if the code hasn't been tested maybe the entire source file should be removed :-)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
