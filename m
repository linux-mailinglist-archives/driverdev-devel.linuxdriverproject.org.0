Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C23EDC43
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 11:14:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91F1F8AA83;
	Mon,  4 Nov 2019 10:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-5fq6qHvHma; Mon,  4 Nov 2019 10:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 607E98A973;
	Mon,  4 Nov 2019 10:14:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D777E1BF361
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2E3B88EB9
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VBpifNACfUkE for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 10:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA4A988EB3
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 10:14:51 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 74C8EE0004;
 Mon,  4 Nov 2019 10:14:42 +0000 (UTC)
Date: Mon, 4 Nov 2019 11:14:42 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/3] media: cedrus: Increase maximum supported size
Message-ID: <20191104101442.GF502900@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191026074959.1073512-4-jernej.skrabec@siol.net>
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
Content-Type: multipart/mixed; boundary="===============5698117112253922725=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5698117112253922725==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rV8arf8D5Dod9UkK"
Content-Disposition: inline


--rV8arf8D5Dod9UkK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> There are few variations of 4k resolutions. The biggest one is
> 4096x2304 which is also supported by HW. It has also nice property that
> both width and size are divisible by maximum HEVC CTB size, which is 64.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

As I said on the other email, it would be nice to eventually reflect the ac=
tual
per-platform maximum dimensions instead of hardcoding the maximum for all
platforms confounded.

Cheers,

Paul

> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/=
staging/media/sunxi/cedrus/cedrus_video.c
> index cc15a5cf107d..15cf1f10221b 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -29,8 +29,8 @@
> =20
>  #define CEDRUS_MIN_WIDTH	16U
>  #define CEDRUS_MIN_HEIGHT	16U
> -#define CEDRUS_MAX_WIDTH	3840U
> -#define CEDRUS_MAX_HEIGHT	2160U
> +#define CEDRUS_MAX_WIDTH	4096U
> +#define CEDRUS_MAX_HEIGHT	2304U
> =20
>  static struct cedrus_format cedrus_formats[] =3D {
>  	{
> --=20
> 2.23.0
>=20

--rV8arf8D5Dod9UkK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2/+hEACgkQ3cLmz3+f
v9F9EQf7BuXGwf7hxl/hT3TH7m427gHG7ubncUhQ9fE5TUozKfHLhBQtDy0nutMV
e80cMMJgttDQQIh4dPL7AullJp4uAjP3x0+poGS1pdKNyjrdNciU5WMCIpBKWivd
BfOohr0AHgdsg9zDWZf1fLzmsv89M6194mpwpj6eq6n7keN5VVBAzPKHDPqOLRTN
913aRH1vp/ox3ksnvlgZjqPNx8ZkrdF4U0vWNSsh22KuCY5LE5sA4u/6mzgqqYO1
FgpEoj1Wr2LmYdzzHwerWHU4i6ypmZt21wEXcfHFIf1uilTVddWn3BTgFjVk96ix
bVC1uditJShGLWVwSxwq+nPaY6mpuQ==
=Iloe
-----END PGP SIGNATURE-----

--rV8arf8D5Dod9UkK--

--===============5698117112253922725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5698117112253922725==--
