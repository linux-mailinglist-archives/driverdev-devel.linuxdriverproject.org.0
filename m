Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF07F32F14
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 13:55:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3285185BE4;
	Mon,  3 Jun 2019 11:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJTFlrz-NQLC; Mon,  3 Jun 2019 11:55:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1F6A85B18;
	Mon,  3 Jun 2019 11:55:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82C611BF287
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 11:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E2B984BF1
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 11:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pULcar47Fm91 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 11:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBEEE84B8F
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 11:55:41 +0000 (UTC)
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E0F012000E;
 Mon,  3 Jun 2019 11:55:36 +0000 (UTC)
Date: Mon, 3 Jun 2019 13:55:36 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/7] media: cedrus: Fix decoding for some H264 videos
Message-ID: <20190603115536.j5lan6wtmbxpoe2k@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-4-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1341883216645369653=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1341883216645369653==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vveoqlv6ysvji45v"
Content-Disposition: inline


--vveoqlv6ysvji45v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 11:15:12PM +0200, Jernej Skrabec wrote:
> It seems that for some H264 videos at least one bitstream parsing
> trigger must be called in order to be decoded correctly. There is no
> explanation why this helps, but it was observed that two sample videos
> with this fix are now decoded correctly and there is no regression with
> others.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
> I have two samples which are fixed by this:
> http://jernej.libreelec.tv/videos/h264/test.mkv
> http://jernej.libreelec.tv/videos/h264/Dredd%20%E2%80%93%20DTS%20Sound%20Check%20DTS-HD%20MA%207.1.m2ts
>
> Although second one also needs support for multi-slice frames, which is not yet implemented here.
>
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 22 ++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> index cc8d17f211a1..d0ee3f90ff46 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -6,6 +6,7 @@
>   * Copyright (c) 2018 Bootlin
>   */
>
> +#include <linux/delay.h>
>  #include <linux/types.h>
>
>  #include <media/videobuf2-dma-contig.h>
> @@ -289,6 +290,20 @@ static void cedrus_write_pred_weight_table(struct cedrus_ctx *ctx,
>  	}
>  }

We should have a comment here explaining why that is needed

> +static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
> +{
> +	for (; num > 32; num -= 32) {
> +		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (32 << 8));

Using defines here would be great

> +		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
> +			udelay(1);
> +	}

A new line here would be great

> +	if (num > 0) {
> +		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (num << 8));
> +		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
> +			udelay(1);
> +	}

Can't we make that a bit simpler by not duplicating the loop?

Something like:

int current = 0;

while (current < num) {
    int tmp = min(num - current, 32);

    cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (current << 8))
    while (...)
       ...

    current += tmp;
}

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--vveoqlv6ysvji45v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUKuAAKCRDj7w1vZxhR
xa7AAP9ziESwTw+9Wv7wL7C0BfDMaT38Drny6yfPw3LoggkqrwEAxQK0/0WKA7bE
Ny7/W1EpBNFeb58M3ZPKD2rZ9JmR3Qw=
=ESPy
-----END PGP SIGNATURE-----

--vveoqlv6ysvji45v--

--===============1341883216645369653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1341883216645369653==--
