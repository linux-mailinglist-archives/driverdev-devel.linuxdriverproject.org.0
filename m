Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0AEC942F
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 00:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50C1484C78;
	Wed,  2 Oct 2019 22:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKnVAniqFsH4; Wed,  2 Oct 2019 22:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A71D284806;
	Wed,  2 Oct 2019 22:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60AD81BF976
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 22:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 57E3622797
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 22:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xMkD+N0ktijO for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 22:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 49CB622721
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 22:14:39 +0000 (UTC)
X-Originating-IP: 132.205.230.6
Received: from aptenodytes (unknown [132.205.230.6])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3D79540002;
 Wed,  2 Oct 2019 22:14:33 +0000 (UTC)
Date: Wed, 2 Oct 2019 18:14:31 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 3/3] media: cedrus: Use helpers to access capture queue
Message-ID: <20191002221431.GC24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191002193553.1633467-4-jernej.skrabec@siol.net>
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
Content-Type: multipart/mixed; boundary="===============0305277474742858724=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0305277474742858724==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="E13BgyNx05feLLmH"
Content-Disposition: inline


--E13BgyNx05feLLmH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> Accessing capture queue structue directly is not safe. Use helpers for
> that.

Looks good to me, thanks!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h      | 8 ++++++--
>  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++++++--
>  2 files changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.h
> index 986e059e3202..c45fb9a7ad07 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -197,12 +197,16 @@ static inline dma_addr_t cedrus_buf_addr(struct vb2=
_buffer *buf,
>  static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
>  					     int index, unsigned int plane)
>  {
> -	struct vb2_buffer *buf;
> +	struct vb2_buffer *buf =3D NULL;
> +	struct vb2_queue *vq;
> =20
>  	if (index < 0)
>  		return 0;
> =20
> -	buf =3D ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];
> +	vq =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> +	if (vq)
> +		buf =3D vb2_get_buffer(vq, index);
> +
>  	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
>  }
> =20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/s=
taging/media/sunxi/cedrus/cedrus_h264.c
> index 4a0e69855c7f..4650982c69a8 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -97,7 +97,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *=
ctx,
>  	const struct v4l2_ctrl_h264_decode_params *decode =3D run->h264.decode_=
params;
>  	const struct v4l2_ctrl_h264_slice_params *slice =3D run->h264.slice_par=
ams;
>  	const struct v4l2_ctrl_h264_sps *sps =3D run->h264.sps;
> -	struct vb2_queue *cap_q =3D &ctx->fh.m2m_ctx->cap_q_ctx.q;
> +	struct vb2_queue *cap_q;
>  	struct cedrus_buffer *output_buf;
>  	struct cedrus_dev *dev =3D ctx->dev;
>  	unsigned long used_dpbs =3D 0;
> @@ -105,6 +105,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx=
 *ctx,
>  	unsigned int output =3D 0;
>  	unsigned int i;
> =20
> +	cap_q =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> +
>  	memset(pic_list, 0, sizeof(pic_list));
> =20
>  	for (i =3D 0; i < ARRAY_SIZE(decode->dpb); i++) {
> @@ -168,12 +170,14 @@ static void _cedrus_write_ref_list(struct cedrus_ct=
x *ctx,
>  				   enum cedrus_h264_sram_off sram)
>  {
>  	const struct v4l2_ctrl_h264_decode_params *decode =3D run->h264.decode_=
params;
> -	struct vb2_queue *cap_q =3D &ctx->fh.m2m_ctx->cap_q_ctx.q;
> +	struct vb2_queue *cap_q;
>  	struct cedrus_dev *dev =3D ctx->dev;
>  	u8 sram_array[CEDRUS_MAX_REF_IDX];
>  	unsigned int i;
>  	size_t size;
> =20
> +	cap_q =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> +
>  	memset(sram_array, 0, sizeof(sram_array));
> =20
>  	for (i =3D 0; i < num_ref; i++) {
> --=20
> 2.23.0
>=20

--E13BgyNx05feLLmH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2VIUcACgkQ3cLmz3+f
v9HzRAf+OqbOygEqhcbZloYVPB2rS29QcQKUP4rVGVIuXOB1zlPNlUSIhRoHZsmg
0he5hJDyuo7Kq6MZR9mvCUJkag/AOb+cBC2SJfvTvnVCKB55mVdRCWQUtoTzlSXJ
PFrH2udiYvCdTC8O373wlaUvQTfWlf2uRtkd34wl0WgZsS2UuTQ4kGw9XvhG4sTT
c4Ghncxb5kKRBta7hjlEa048lf/Xouj8Et06XYbLwlrcD6F2fWjiyZ+3lkwVEmIO
cOxQvtOmY9Gzwdz3fKGuhhHkfQ/lwaaOyHcbrMjvH3/Pqirqg6fQP7/7CuoBStEc
UIrz8/f7mOG4vou/8BmrQRYaAr+4zw==
=9PuQ
-----END PGP SIGNATURE-----

--E13BgyNx05feLLmH--

--===============0305277474742858724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0305277474742858724==--
