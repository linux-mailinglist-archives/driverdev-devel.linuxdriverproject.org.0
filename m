Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CFBEDC05
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 11:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 224758AA83;
	Mon,  4 Nov 2019 10:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wr7991lDnw5d; Mon,  4 Nov 2019 10:02:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 498B28A971;
	Mon,  4 Nov 2019 10:02:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A3431BF47F
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5459C8A538
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:02:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7Z1pQkYa4dZ for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 10:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0EA5289E69
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 10:02:32 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9B449E000F;
 Mon,  4 Nov 2019 10:02:28 +0000 (UTC)
Date: Mon, 4 Nov 2019 11:02:28 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/3] media: cedrus: Properly signal size in mode register
Message-ID: <20191104100228.GD502900@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191026074959.1073512-2-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2165406401599952781=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2165406401599952781==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o0ZfoUVt4BxPQnbU"
Content-Disposition: inline


--o0ZfoUVt4BxPQnbU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> Mode register also holds information if video width is bigger than 2048
> and if it is equal to 4096.
>=20
> Rework cedrus_engine_enable() to properly signal this properties.

Thanks for the patch, looks good to me!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

One minor thing: maybe we should have a way to set the maximum dimensions
depending on the generation of the engine in use and the actual maximum
supported by the hardware.

Maybe either as dedicated new fields in struct cedrus_variant or as
capability flags.

Anyway that can be done later since we were already hardcoding this.

Cheers,

Paul

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_h264.c  | 2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus_h265.c  | 2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 9 +++++++--
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.h    | 2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c | 2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus_regs.h  | 2 ++
>  6 files changed, 13 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h264.c
> index 7487f6ab7576..d2c854ecdf15 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -485,7 +485,7 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
>  {
>  	struct cedrus_dev *dev =3D ctx->dev;
> =20
> -	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
> +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H264);
> =20
>  	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
>  	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h265.c
> index 9bc921866f70..6945dc74e1d7 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> @@ -276,7 +276,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
>  	}
> =20
>  	/* Activate H265 engine. */
> -	cedrus_engine_enable(dev, CEDRUS_CODEC_H265);
> +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H265);
> =20
>  	/* Source offset and length in bits. */
> =20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/sta=
ging/media/sunxi/cedrus/cedrus_hw.c
> index 570a9165dd5d..3acfa21bc124 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -30,7 +30,7 @@
>  #include "cedrus_hw.h"
>  #include "cedrus_regs.h"
> =20
> -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
> +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec)
>  {
>  	u32 reg =3D 0;
> =20
> @@ -58,7 +58,12 @@ int cedrus_engine_enable(struct cedrus_dev *dev, enum =
cedrus_codec codec)
>  		return -EINVAL;
>  	}
> =20
> -	cedrus_write(dev, VE_MODE, reg);
> +	if (ctx->src_fmt.width =3D=3D 4096)
> +		reg |=3D VE_MODE_PIC_WIDTH_IS_4096;
> +	if (ctx->src_fmt.width > 2048)
> +		reg |=3D VE_MODE_PIC_WIDTH_MORE_2048;
> +
> +	cedrus_write(ctx->dev, VE_MODE, reg);
> =20
>  	return 0;
>  }
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h b/drivers/sta=
ging/media/sunxi/cedrus/cedrus_hw.h
> index 27d0882397aa..604ff932fbf5 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> @@ -16,7 +16,7 @@
>  #ifndef _CEDRUS_HW_H_
>  #define _CEDRUS_HW_H_
> =20
> -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec=
);
> +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec=
);
>  void cedrus_engine_disable(struct cedrus_dev *dev);
> =20
>  void cedrus_dst_format_set(struct cedrus_dev *dev,
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c b/drivers/=
staging/media/sunxi/cedrus/cedrus_mpeg2.c
> index 13c34927bad5..8bcd6b8f9e2d 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> @@ -96,7 +96,7 @@ static void cedrus_mpeg2_setup(struct cedrus_ctx *ctx, =
struct cedrus_run *run)
>  	quantization =3D run->mpeg2.quantization;
> =20
>  	/* Activate MPEG engine. */
> -	cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);
> +	cedrus_engine_enable(ctx, CEDRUS_CODEC_MPEG2);
> =20
>  	/* Set intra quantization matrix. */
> =20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/s=
taging/media/sunxi/cedrus/cedrus_regs.h
> index 4275a307d282..ace3d49fcd82 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> @@ -35,6 +35,8 @@
> =20
>  #define VE_MODE					0x00
> =20
> +#define VE_MODE_PIC_WIDTH_IS_4096		BIT(22)
> +#define VE_MODE_PIC_WIDTH_MORE_2048		BIT(21)
>  #define VE_MODE_REC_WR_MODE_2MB			(0x01 << 20)
>  #define VE_MODE_REC_WR_MODE_1MB			(0x00 << 20)
>  #define VE_MODE_DDR_MODE_BW_128			(0x03 << 16)
> --=20
> 2.23.0
>=20

--o0ZfoUVt4BxPQnbU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2/9zQACgkQ3cLmz3+f
v9EubAgAmUIZeySh71s8rHkCSlkdX+UHT6XXaoe+hv3ONRwlmpfPCj+EV1Mrw45E
Goi0n/i1MK9LemXtxLB0ZK1pC5rQX2MfF+6qtFHVHYKya1wq/V9Y1j0Pl+Pun2q8
xCRg0HerWiI7KtQbNlZYXTVoPC8CQKIU1mq3t4aJfeUacygESgR1sHkS9d4XioEN
yP8hfRdePwpkgel46F++Cl84z4qGS+GrKEtvKMtHLiPunkc7IBa2PqwfYkgdKJzW
uOWAqrOx6MLqtuXjrERD6zvwIU7GV+0FR8YKVPIIdYAZgC1PuW3e8HRqhL1ZZ4T8
ucGvXZ4OzlmoGUDghjbT+7HLXLXX0A==
=HSxM
-----END PGP SIGNATURE-----

--o0ZfoUVt4BxPQnbU--

--===============2165406401599952781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2165406401599952781==--
