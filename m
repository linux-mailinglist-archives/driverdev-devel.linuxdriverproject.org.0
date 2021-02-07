Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E35E93121FF
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 07:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E5E4860B0;
	Sun,  7 Feb 2021 06:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClPnacAgxdOj; Sun,  7 Feb 2021 06:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C481286078;
	Sun,  7 Feb 2021 06:34:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6CF31BF954
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 06:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E3CBA804BA
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 06:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMmycF0fa6fS for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 06:34:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54856854DB
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 06:34:49 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4DYKBr1zhHz9sVF;
 Sun,  7 Feb 2021 17:34:44 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1612679685;
 bh=bpQveLnpCX/LNAs86JjxKwiHHv0Svm2bvTC0YEw3Wto=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tyeLaujk/FYKEzkPpmotleIQVxdKhwoqTMo+WuJt2D5i0Wv9YfI9jiuY2fk2Fz1Vm
 pQ1mD1JRuAWCZC913yM4mpWZ6/1t/W2PE6IE1r18K9pf8LoE1TIQ6kES94o0HFkk0p
 QXF9Z66issAmayQ8KaQm6wxV7H4nSFUG2shm0wTJ1WZh7UFq7uxPzldd4aWWEoHwWg
 fFT7sIUtbXiiZ5cYzYlNvj1EiaoxZrXDJJk58ws8Emc4a97je+c5Pj64vCAtcmFSvg
 +r3YrF1sUN8qSkHk6kOUzWb3g2i5mNTE4x+CuEe5t95FWRkXX9WEFQy6V4Iut5jOsJ
 x2ayIAl8sWvrQ==
Date: Sun, 7 Feb 2021 17:34:41 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix incorrectly defined global
Message-ID: <20210207173441.2902acac@canb.auug.org.au>
In-Reply-To: <20210207000030.256592-1-memxor@gmail.com>
References: <20210207000030.256592-1-memxor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3286846200268498963=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============3286846200268498963==
Content-Type: multipart/signed; boundary="Sig_/EFly7mjZir32_rG.96/uofl";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/EFly7mjZir32_rG.96/uofl
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Kumar,

On Sun,  7 Feb 2021 05:30:31 +0530 Kumar Kartikeya Dwivedi <memxor@gmail.co=
m> wrote:
>
> The global gpio_desc pointer and int were defined in the header,
> instead put the definitions in the translation unit and add an extern
> declaration for consumers of the header (currently only one, which is
> perhaps why the linker didn't complain about symbol collisions).
>=20
> This fixes sparse related warnings for this driver:
> drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
> drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' wa=
s not declared. Should it be static?
> drivers/staging/emxx_udc/emxx_udc.h:24:5: warning: symbol 'vbus_irq' was =
not declared. Should it be static?
>=20
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>

Given that drivers/staging/emxx_udc/emxx_udc.h is only included by
drivers/staging/emxx_udc/emxx_udc.c, shouldn't these variables just be
declared static in emxx_udc.c and removed from emxx_udc.h?

> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 3 +++
>  drivers/staging/emxx_udc/emxx_udc.h | 4 ++--
>  2 files changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_u=
dc/emxx_udc.c
> index a30b4f5b1..6983c3e31 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -34,6 +34,9 @@
>  #define	DRIVER_DESC	"EMXX UDC driver"
>  #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
> =20
> +struct gpio_desc *vbus_gpio;
> +int vbus_irq;
> +
>  static const char	driver_name[] =3D "emxx_udc";
>  static const char	driver_desc[] =3D DRIVER_DESC;
> =20
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_u=
dc/emxx_udc.h
> index bca614d69..b3c4ccbe5 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -20,8 +20,8 @@
>  /* below hacked up for staging integration */
>  #define GPIO_VBUS 0 /* GPIO_P153 on KZM9D */
>  #define INT_VBUS 0 /* IRQ for GPIO_P153 */
> -struct gpio_desc *vbus_gpio;
> -int vbus_irq;
> +extern struct gpio_desc *vbus_gpio;
> +extern int vbus_irq;
> =20
>  /*------------ Board dependence(Wait) */
> =20
> --=20
> 2.29.2
>=20

--=20
Cheers,
Stephen Rothwell

--Sig_/EFly7mjZir32_rG.96/uofl
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmAfigEACgkQAVBC80lX
0GzVdAf/ZuxHC/+djnJBoVnV7z59At9u7Ao6hlXOy+Omihl76+GejLqgXsUDFyAy
04/F3n6OWtDkiMZPG49RD+njyHOO2SwqHX1ENT5c+QGNS2nTFQktmZl3oNENXwzZ
HDWho0eZZllZocQL9gqbyzSO5gFlfSOM92uyhRfGonZ34KKiPKSLo7xwG0bUFpdV
arQ2ILJf4a4YHubchu8DV0e8Q7L/ji3wDZOEyu8QukCSSWo2M+yoar8gUGaFmDc5
KnHIKnhmMrP6ySYHLQHzKF4GfytLeWCZGHsPcLECpJmYxFkv6hPaTUAKo7XFW9g7
BNjJv3E6K8HoRsOpESAeOdok2KK39Q==
=fhfA
-----END PGP SIGNATURE-----

--Sig_/EFly7mjZir32_rG.96/uofl--

--===============3286846200268498963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3286846200268498963==--
