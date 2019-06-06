Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A7B36EB4
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 10:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A784086102;
	Thu,  6 Jun 2019 08:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjCTbPT-aHev; Thu,  6 Jun 2019 08:33:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16621860B0;
	Thu,  6 Jun 2019 08:33:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEE5E1BF3C5
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 08:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E80B3867F0
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 08:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jq2Ls8uSCwrB for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 08:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8DEE6864A0
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 08:33:16 +0000 (UTC)
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6C6F510001B;
 Thu,  6 Jun 2019 08:33:08 +0000 (UTC)
Date: Thu, 6 Jun 2019 10:33:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Message-ID: <20190606083307.b5zpk4n6x3w6mtmb@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
 <20190603121859.sbphcjy75kmed6oc@flea>
 <3029072.frl2UAsRGt@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <3029072.frl2UAsRGt@jernej-laptop>
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
Content-Type: multipart/mixed; boundary="===============6049963522314466705=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6049963522314466705==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="llwlg2xtnnijika2"
Content-Disposition: inline


--llwlg2xtnnijika2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 03, 2019 at 05:48:25PM +0200, Jernej =C5=A0krabec wrote:
> Dne ponedeljek, 03. junij 2019 ob 14:18:59 CEST je Maxime Ripard napisal(=
a):
> > > +static void cedrus_buf_cleanup(struct vb2_buffer *vb)
> > > +{
> > > +	struct vb2_queue *vq =3D vb->vb2_queue;
> > > +
> > > +	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
> > > +		struct cedrus_ctx *ctx =3D vb2_get_drv_priv(vq);
> > > +		struct cedrus_buffer *cedrus_buf;
> > > +
> > > +		cedrus_buf =3D vb2_to_cedrus_buffer(vq->bufs[vb->index]);
> > > +
> > > +		if (cedrus_buf->extra_buf_size)
> > > +			dma_free_coherent(ctx->dev->dev,
> > > +					  cedrus_buf-
> >extra_buf_size,
> > > +					  cedrus_buf-
> >extra_buf,
> > > +					  cedrus_buf-
> >extra_buf_dma);
> > > +	}
> > > +}
> > > +
> >
> > I'm really not a fan of allocating something somewhere, and freeing it
> > somewhere else. Making sure you don't leak something is hard enough to
> > not have some non-trivial allocation scheme.
>
> Ok, what about introducing two new optional methods in engine callbacks,
> buffer_init and buffer_destroy, which would be called from cedrus_buf_ini=
t() and
> cedrus_buf_cleanup(), respectively. That way all (de)allocation logic sta=
ys
> within the same engine.

Yep, that would work for me.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--llwlg2xtnnijika2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPjPwwAKCRDj7w1vZxhR
xfVpAQCOr8fs3rk1qqMT7K32xwhOKrfkpEzeOlKL8hYuHFgkPQEA+ZYtxUfOTSQu
8EDER1DVGqjSGhBpL356m0j1JSeHNgM=
=Hz+3
-----END PGP SIGNATURE-----

--llwlg2xtnnijika2--

--===============6049963522314466705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6049963522314466705==--
