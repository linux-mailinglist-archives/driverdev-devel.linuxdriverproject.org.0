Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 713FD124214
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 09:44:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3BF0022888;
	Wed, 18 Dec 2019 08:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrdcW--goHLF; Wed, 18 Dec 2019 08:44:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BD51F2048E;
	Wed, 18 Dec 2019 08:44:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB6F21BF3E9
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 08:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7F33883A6
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 08:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9FTR5-4euWhD for <devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 08:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFB5888378
 for <devel@driverdev.osuosl.org>; Wed, 18 Dec 2019 08:43:56 +0000 (UTC)
Received: from aptenodytes (unknown [109.190.253.16])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 183C6100008;
 Wed, 18 Dec 2019 08:43:49 +0000 (UTC)
Date: Wed, 18 Dec 2019 09:43:48 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 2/2] media: cedrus: hevc: Add luma bit depth
Message-ID: <20191218084348.GB2900@aptenodytes>
References: <20191213161516.54688-1-jernej.skrabec@siol.net>
 <20191213161516.54688-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191213161516.54688-3-jernej.skrabec@siol.net>
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5391581010385074723=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5391581010385074723==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ADZbWkCsHQ7r3kzd"
Content-Disposition: inline


--ADZbWkCsHQ7r3kzd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 13 Dec 19, 17:15, Jernej Skrabec wrote:
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Good catch, thanks!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_h265.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h265.c
> index 5a207f1e137c..13e58977309f 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> @@ -420,6 +420,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
>  	      VE_DEC_H265_DEC_SPS_HDR_LOG2_DIFF_MAX_MIN_LUMA_CODING_BLOCK_SIZE(=
sps->log2_diff_max_min_luma_coding_block_size) |
>  	      VE_DEC_H265_DEC_SPS_HDR_LOG2_MIN_LUMA_CODING_BLOCK_SIZE_MINUS3(sp=
s->log2_min_luma_coding_block_size_minus3) |
>  	      VE_DEC_H265_DEC_SPS_HDR_BIT_DEPTH_CHROMA_MINUS8(sps->bit_depth_ch=
roma_minus8) |
> +	      VE_DEC_H265_DEC_SPS_HDR_BIT_DEPTH_LUMA_MINUS8(sps->bit_depth_luma=
_minus8) |
>  	      VE_DEC_H265_DEC_SPS_HDR_CHROMA_FORMAT_IDC(sps->chroma_format_idc);
> =20
>  	reg |=3D VE_DEC_H265_FLAG(VE_DEC_H265_DEC_SPS_HDR_FLAG_STRONG_INTRA_SMO=
OTHING_ENABLE,
> --=20
> 2.24.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--ADZbWkCsHQ7r3kzd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl355sQACgkQ3cLmz3+f
v9ESgAgAhJTdZVtbPpT7EscqyjmkfLml6sT2cG4rlpNxp0uKIJXcKwC0V6sLcfir
KnwAgfKm9IAvL1D48uMBcw7BbDZK4NjKBzkEgCfcwhNBi4SH4opzCy37X3VvcGrX
PhSIVSDsQG0hS/z8GKinlkTuYWarUu/GS9Q1bBcnNXq2Qyg2rHGkeErOVRpuLpkI
SCIGMQslt+z9fk+cWZbvEILHZNMyWBFb60UNbO3a2cpcubNzxvZC7EH29qA8phA/
gxknBE3j4VF1zFWwW+hqcTTdnvBccJUoySmNYTuG5JulDpD7XeY4+CV0/bV1ygtP
TOjemgoIxM/rbgox4jMKfZEwH4xI3w==
=B0di
-----END PGP SIGNATURE-----

--ADZbWkCsHQ7r3kzd--

--===============5391581010385074723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5391581010385074723==--
