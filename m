Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA942293F96
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:29:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78BA586A6C;
	Tue, 20 Oct 2020 15:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIPeeQA44Ndz; Tue, 20 Oct 2020 15:29:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36E38868B6;
	Tue, 20 Oct 2020 15:29:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EB7C1BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B0B6868B6
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0QH9o2atdFLA for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:29:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CD6E86868
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:29:52 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-90-Cn_Z6BHWNUmFgv53TMgdvw-1; Tue, 20 Oct 2020 16:29:47 +0100
X-MC-Unique: Cn_Z6BHWNUmFgv53TMgdvw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 20 Oct 2020 16:29:46 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 20 Oct 2020 16:29:46 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Colin King' <colin.king@canonical.com>, Helen Koike
 <helen.koike@collabora.com>, Dafna Hirschfeld
 <dafna.hirschfeld@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: RE: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
Thread-Topic: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
Thread-Index: AQHWpu/g1aA4z1vvvE6vSt76+nNaDamgnL6w
Date: Tue, 20 Oct 2020 15:29:46 +0000
Message-ID: <d5663dec063440129bf6c373aa252d51@AcuMS.aculab.com>
References: <20201020144655.53251-1-colin.king@canonical.com>
In-Reply-To: <20201020144655.53251-1-colin.king@canonical.com>
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

From: Colin King
> Sent: 20 October 2020 15:47
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> Don't populate the const array dev_names on the stack but instead it
> static. Makes the object code smaller by 15 bytes.
> 
> Before:
>    text	   data	    bss	    dec	    hex	filename
>   17091	   2648	     64	  19803	   4d5b	media/rkisp1/rkisp1-resizer.o
> 
> After:
>    text	   data	    bss	    dec	    hex	filename
>   17012	   2712	     64	  19788	   4d4c	media/rkisp1/rkisp1-resizer.o
> 
> (gcc version 10.2.0)
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-
> resizer.c
> index 1687d82e6c68..7ca5b47c5bf5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -763,8 +763,10 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
> 
>  static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  {
> -	const char * const dev_names[] = {RKISP1_RSZ_MP_DEV_NAME,
> -					  RKISP1_RSZ_SP_DEV_NAME};
> +	static const char * const dev_names[] = {
> +		RKISP1_RSZ_MP_DEV_NAME,
> +		RKISP1_RSZ_SP_DEV_NAME
> +	};
>  	struct media_pad *pads = rsz->pads;
>  	struct v4l2_subdev *sd = &rsz->sd;
>  	int ret;

Don't look at what that code is actually doing....
It is rather horrid.
rkisp1_rsz_register() is called for each entry in an array (twice).
The array index is written into rsz->id.
The value is then used to select one of the two strings.
But rsz->id is actually an enum type.

rkisp1_rsz_register() should probably just be called twice with some
extra parameters.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
