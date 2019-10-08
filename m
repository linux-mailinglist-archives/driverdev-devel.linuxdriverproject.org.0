Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97875CF33C
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 09:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52F8B8762A;
	Tue,  8 Oct 2019 07:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cj7bzdbyGq8L; Tue,  8 Oct 2019 07:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E129B875DA;
	Tue,  8 Oct 2019 07:11:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21A411BF287
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C3FF83507
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXKSSku0RsVp for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 07:11:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net [217.70.178.232])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E102834D6
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 07:11:13 +0000 (UTC)
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E05E0200002;
 Tue,  8 Oct 2019 07:11:09 +0000 (UTC)
Date: Tue, 8 Oct 2019 09:11:09 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: hariprasadKelamhariprasad.kelam@gmail.com
Subject: Re: [PATCH] staging: media: sunxi: make use of
 devm_platform_ioremap_resource
Message-ID: <20191008071109.GD23055@aptenodytes>
References: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5697050757509595738=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5697050757509595738==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GyRA7555PLgSTuth"
Content-Disposition: inline


--GyRA7555PLgSTuth
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 08 Oct 19, 12:29, hariprasadKelamhariprasad.kelam@gmail.com wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>=20
> fix below issue reported by coccicheck
> drivers/staging//media/sunxi/cedrus/cedrus_hw.c:229:1-10: WARNING: Use
> devm_platform_ioremap_resource for dev -> base

Looks good, thanks!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/sta=
ging/media/sunxi/cedrus/cedrus_hw.c
> index a942cd9..f19b87c 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -146,7 +146,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  int cedrus_hw_probe(struct cedrus_dev *dev)
>  {
>  	const struct cedrus_variant *variant;
> -	struct resource *res;
>  	int irq_dec;
>  	int ret;
> =20
> @@ -225,8 +224,7 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
>  		goto err_sram;
>  	}
> =20
> -	res =3D platform_get_resource(dev->pdev, IORESOURCE_MEM, 0);
> -	dev->base =3D devm_ioremap_resource(dev->dev, res);
> +	dev->base =3D devm_platform_ioremap_resource(dev->pdev, 0);
>  	if (IS_ERR(dev->base)) {
>  		dev_err(dev->dev, "Failed to map registers\n");
> =20
> --=20
> 2.7.4
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--GyRA7555PLgSTuth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2cNo0ACgkQ3cLmz3+f
v9H5sAf8C7Uow7w//L27ktNGLif8j95G9G9t0VsDSaxkt1+mvVKX7sTuLkN70DJ6
RBrq+VmAsmJXfqozopp8eiJ1Rtz+/mp0THke9VwyCyQgiL1VxhUqxCJXV27PG3WZ
UQpHQv4FleeFrCZ7pi2kdH2zxfd0WI/S1lKZgAe9BDwNdpIh+8T7ImHZlkinukab
oMCypnTwYMyjNPmQ2vTDtDtU4xodqPxgOLqHfW1LFdOKyPvP4IvAB95DGo4mAUpi
q5lv+lNpI4YrDrTWx0alDWgV6wYq7VBsw8T9Kns7oPThD5klAri4jjwyoYHSO3kg
urgpt39rFja0auiqwwj5Puko+mlVgA==
=l23+
-----END PGP SIGNATURE-----

--GyRA7555PLgSTuth--

--===============5697050757509595738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5697050757509595738==--
