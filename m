Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 315EFC940C
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 00:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 489DB86410;
	Wed,  2 Oct 2019 22:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5typK-1D9R6M; Wed,  2 Oct 2019 22:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 375BF876E3;
	Wed,  2 Oct 2019 22:07:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6F2E1BF966
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 22:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E3501203FC
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 22:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gvCyaYS7QIYv for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 22:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by silver.osuosl.org (Postfix) with ESMTPS id 0429C2037B
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 22:06:58 +0000 (UTC)
X-Originating-IP: 132.205.230.6
Received: from aptenodytes (unknown [132.205.230.6])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id F414BC0004;
 Wed,  2 Oct 2019 22:06:52 +0000 (UTC)
Date: Wed, 2 Oct 2019 18:06:50 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Message-ID: <20191002220650.GB24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191002193553.1633467-3-jernej.skrabec@siol.net>
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4253856072808186395=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4253856072808186395==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MW5yreqqjyrRcusr"
Content-Disposition: inline


--MW5yreqqjyrRcusr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> Reference index count in VE_H264_PPS should come from PPS control.
> However, this is not really important, because reference index count is
> in our case always overridden by that from slice header.

Thanks for the fixup!

Our libva userspace and v4l2-request testing tool currently don't provide t=
his,
but I have a pending merge request adding it for the hantro so it's good to=
 go.

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h264.c
> index bd848146eada..4a0e69855c7f 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -364,12 +364,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
> =20
>  	// picture parameters
>  	reg =3D 0;
> -	/*
> -	 * FIXME: the kernel headers are allowing the default value to
> -	 * be passed, but the libva doesn't give us that.
> -	 */
> -	reg |=3D (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
> -	reg |=3D (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
> +	reg |=3D (pps->num_ref_idx_l0_default_active_minus1 & 0x1f) << 10;
> +	reg |=3D (pps->num_ref_idx_l1_default_active_minus1 & 0x1f) << 5;
>  	reg |=3D (pps->weighted_bipred_idc & 0x3) << 2;
>  	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
>  		reg |=3D VE_H264_PPS_ENTROPY_CODING_MODE;
> --=20
> 2.23.0
>=20

--MW5yreqqjyrRcusr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2VH3oACgkQ3cLmz3+f
v9HfnQf+Piqc+/r5jjib8Rh52MjgYahIkSTSbp4ZIe3lc/Uwyc/W/O5u2tCNC+KV
+VJ+3ws7rbRkWfU1nfV6WKp8jxp+/a73DEsx1AePm4vOrzh9qitnXtwPpjXkXzJB
qtuDNoaRlvzRI6KN98hICCfiYT6LKKDcIURUx5sGZi5vbSpQvsdIEofwZmxPuZDl
C0+RXEwUPLIhM6E2FKj+6Tt6DdX+Tc4UtzP4wBLvFfYO2Magxdtp0w/SerqphDhX
3KtP9S3N+M5vDMD3FzM56DLRqqDpd4e3+5YV0/dmJrKmpBsm885B8bgNUwSsto+D
e0opfIfHkZ4GSg2vZ1Mp58+lbZ0rag==
=DONI
-----END PGP SIGNATURE-----

--MW5yreqqjyrRcusr--

--===============4253856072808186395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4253856072808186395==--
