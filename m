Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D43220E74
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 15:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1479A8B4B4;
	Wed, 15 Jul 2020 13:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OM0rLtfrH3O6; Wed, 15 Jul 2020 13:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A7978B4A5;
	Wed, 15 Jul 2020 13:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 191FA1BF3F4
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 13:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CBA920460
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 13:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vkz8jEhQHApT for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 13:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by silver.osuosl.org (Postfix) with ESMTPS id 0027D203F4
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 13:51:50 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B7D4820008;
 Wed, 15 Jul 2020 13:51:46 +0000 (UTC)
Date: Wed, 15 Jul 2020 15:51:45 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] media: cedrus: Propagate OUTPUT resolution to CAPTURE
Message-ID: <20200715135145.GA2019248@aptenodytes>
References: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
 <3c8a235ebb0bf76bcffeb8c6b983cd4c95d77459.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <3c8a235ebb0bf76bcffeb8c6b983cd4c95d77459.camel@collabora.com>
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
Cc: devel@driverdev.osuosl.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6031545786849336200=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6031545786849336200==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline


--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 15 Jul 20, 08:57, Ezequiel Garcia wrote:
> It seems this one felt thru the cracks. Sorry for the delay.
>=20
> On Thu, 2020-05-14 at 11:39 -0400, Nicolas Dufresne wrote:
> > As per spec, the CAPTURE resolution should be automatically set based on
> > the OTUPUT resolution. This patch properly propagate width/height to the
> > capture when the OUTPUT format is set and override the user provided
> > width/height with configured OUTPUT resolution when the CAPTURE fmt is
> > updated.
> >=20
> > This also prevents userspace from selecting a CAPTURE resolution that is
> > too small, avoiding unwanted page faults.
> >=20
> > Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>=20
> This looks correct.

Looks like there's no issue with alignment (that will get applied as well),
which was a possible concern.

Thanks for reviewing!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>=20
> Thanks,
> Ezequiel
>=20
> > ---
> >  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/driver=
s/staging/media/sunxi/cedrus/cedrus_video.c
> > index 16d82309e7b6..a6d6b15adc2e 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -247,6 +247,8 @@ static int cedrus_try_fmt_vid_cap(struct file *file=
, void *priv,
> >  		return -EINVAL;
> > =20
> >  	pix_fmt->pixelformat =3D fmt->pixelformat;
> > +	pix_fmt->width =3D ctx->src_fmt.width;
> > +	pix_fmt->height =3D ctx->src_fmt.height;
> >  	cedrus_prepare_format(pix_fmt);
> > =20
> >  	return 0;
> > @@ -319,11 +321,14 @@ static int cedrus_s_fmt_vid_out(struct file *file=
, void *priv,
> >  		break;
> >  	}
> > =20
> > -	/* Propagate colorspace information to capture. */
> > +	/* Propagate format information to capture. */
> >  	ctx->dst_fmt.colorspace =3D f->fmt.pix.colorspace;
> >  	ctx->dst_fmt.xfer_func =3D f->fmt.pix.xfer_func;
> >  	ctx->dst_fmt.ycbcr_enc =3D f->fmt.pix.ycbcr_enc;
> >  	ctx->dst_fmt.quantization =3D f->fmt.pix.quantization;
> > +	ctx->dst_fmt.width =3D ctx->src_fmt.width;
> > +	ctx->dst_fmt.height =3D ctx->src_fmt.height;
> > +	cedrus_prepare_format(&ctx->dst_fmt);
> > =20
> >  	return 0;
> >  }
> > --=20
> > 2.26.2
> >=20
> >=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl8PCfAACgkQ3cLmz3+f
v9Hn4Af9EzN5gnaUQKr1CzXC653L4rnjwlGYHhQ1ctQj7EtF8LgF6iugRO1UMIF9
nKLxp3yyElrKlWAE3DpaVDmb4cilu8IzSeO3T6f9XtUwaAhJcsmP+QEeQ3QLT2R/
yclIp4Nv7u93jYLvPDXKLf4BPQ1Gjrrhh1R9fEda+GV/lVkaY6jzFBoGwPRCr7Ix
t0FWyHNrOH+FfAAWm+gmqWB4Molnl3cd1vYcvWBbM8Yf7VbDL3DyvUA6NhUCcs64
f5OUBpJVGArH7HxL/sHB7pmqG4pcsQeljXE1GPuV77+/AJ/AlvpVslpWyC4sOx1C
PdDbVhi/dtKugkhQNAtUN2fnmFHRAg==
=49po
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--

--===============6031545786849336200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6031545786849336200==--
