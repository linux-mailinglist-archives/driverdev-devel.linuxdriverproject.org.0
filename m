Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D41411362F
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 21:13:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DFAB23524;
	Wed,  4 Dec 2019 20:13:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gv3m1R-+XyG7; Wed,  4 Dec 2019 20:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5513B232D2;
	Wed,  4 Dec 2019 20:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E91DF1BF5AE
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 20:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DDFFB87D33
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 20:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIk-aUU-ihWr for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 20:13:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EFD6C87BC8
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 20:13:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 48F3BB1EC;
 Wed,  4 Dec 2019 20:13:23 +0000 (UTC)
Message-ID: <f0f68c001a94f72b05d188f1089f24e78552f276.camel@suse.de>
Subject: Re: [PATCH] staging: vchiq: call unregister_chrdev_region() when
 driver registration fails
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net
Date: Wed, 04 Dec 2019 21:13:21 +0100
In-Reply-To: <20191203153921.70540-1-marcgonzalez@google.com>
References: <20191203153921.70540-1-marcgonzalez@google.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2078908422313341673=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2078908422313341673==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5919c0yuJGALPpC6G7SP"


--=-5919c0yuJGALPpC6G7SP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-03 at 10:39 -0500, Marcelo Diop-Gonzalez wrote:
> This undoes the previous call to alloc_chrdev_region() on failure,
> and is probably what was meant originally given the label name.
>=20
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.=
c
> b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 02148a24818a..4458c1e60fa3 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -3309,7 +3309,7 @@ static int __init vchiq_driver_init(void)
>  	return 0;
> =20
>  region_unregister:
> -	platform_driver_unregister(&vchiq_driver);
> +	unregister_chrdev_region(vchiq_devid, 1);
> =20
>  class_destroy:
>  	class_destroy(vchiq_class);

Thanks!

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-5919c0yuJGALPpC6G7SP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3oE2EACgkQlfZmHno8
x/6+sgf9HmeLpXdYIHDUZKujikIFbM9ru2J+O3FWdI+1K+j0y98IptQKpGiIj+H2
sEywi2FeYJ1a9IeApE1yIpiLJv+tASrVe6jd+Z3E3InVg5iaadKe17Ce0ngZYeww
xKDomH5Iz3KKT/wyvPhvJSFTltdXNlWFpJ6G9TzUSewg5Hu3PGVYFbaV891HC7yq
125Qs2DdDSJXK/8T/KIjEb0uVSFILXnQgc0tuJIWtWUSl/WJpxPHXSefg3Ujm2Dn
CRR+MJUNM+a9zu2rasusqtUrUMrukYCs3brQSdaAXs0m4Gc0TJSjrJ0ex7uwN30T
GS0hj1/CJspm74dduNb0xFN6IkPAZQ==
=fFRZ
-----END PGP SIGNATURE-----

--=-5919c0yuJGALPpC6G7SP--


--===============2078908422313341673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2078908422313341673==--

