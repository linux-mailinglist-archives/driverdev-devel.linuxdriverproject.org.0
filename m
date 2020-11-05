Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A73F72A7A6E
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 10:28:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B0D68577F;
	Thu,  5 Nov 2020 09:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQzFLE7w6yay; Thu,  5 Nov 2020 09:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DBFC8502A;
	Thu,  5 Nov 2020 09:28:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92C3E1BF4E2
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C13922B6D
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCuXazmcZovN for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 09:28:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id E9CD922B25
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 09:28:42 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id DC238AC19;
 Thu,  5 Nov 2020 09:28:40 +0000 (UTC)
Message-ID: <47eaba0bc71c6e23bff87b8a01cebf0c6d12efd0.camel@suse.de>
Subject: Re: [PATCH v3 01/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 05 Nov 2020 10:28:38 +0100
In-Reply-To: <CAMpxmJWJRcQQiLitJCLWKmhQVQWr3bMDY=td5FEn5uy2YZfwkA@mail.gmail.com>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-2-nsaenzjulienne@suse.de>
 <CAMpxmJWJRcQQiLitJCLWKmhQVQWr3bMDY=td5FEn5uy2YZfwkA@mail.gmail.com>
User-Agent: Evolution 3.36.5 
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 linux-devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Input <linux-input@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7411885265501947608=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7411885265501947608==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-oC8aCgFhzSXrvhwX/0tO"


--=-oC8aCgFhzSXrvhwX/0tO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bartosz, thanks for the review.

On Thu, 2020-11-05 at 10:13 +0100, Bartosz Golaszewski wrote:
> > +/**
> > + * devm_rpi_firmware_get - Get pointer to rpi_firmware structure.
> > + * @firmware_node:    Pointer to the firmware Device Tree node.
> > + *
> > + * Returns NULL is the firmware device is not ready.
> > + */
> > +struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> > +                                          struct device_node *firmware=
_node)
> > +{
> > +       struct platform_device *pdev =3D of_find_device_by_node(firmwar=
e_node);
> > +       struct rpi_firmware *fw;
> > +
> > +       if (!pdev)
> > +               return NULL;
> > +
> > +       fw =3D platform_get_drvdata(pdev);
> > +       if (!fw)
> > +               return NULL;
> > +
> > +       if (!refcount_inc_not_zero(&fw->consumers))
> > +               return NULL;
> > +
> > +       if (devm_add_action_or_reset(dev, rpi_firmware_put, fw))
> > +               return NULL;
> > +
> > +       return fw;
> > +}
> > +EXPORT_SYMBOL_GPL(devm_rpi_firmware_get);
>=20
> Usually I'd expect the devres variant to simply call
> rpi_firmware_get() and then schedule a release callback which would
> call whatever function is the release counterpart for it currently.
> Devres actions are for drivers which want to schedule some more
> unusual tasks at driver detach. Any reason for designing it this way?

Yes, see patch #8 where I get rid of rpi_firmware_get() altogether after
converting all users to devres. Since there is no use for the vanilla versi=
on
of the function anymore, I figured it'd be better to merge everything into
devm_rpi_firmware_get(). That said it's not something I have strong feeling=
s
about.

Regards,
Nicolas


--=-oC8aCgFhzSXrvhwX/0tO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+jxccACgkQlfZmHno8
x/5VuAf/ZVJHy+YDj0FEO4FzcWJ4vn2WN7US3fwbVPePjVLjGsdlhWl+H5zdV5W2
ZNDlMxJ8w+gcUcLGCaov80hxbNVMQJgoiK/0AeaNxVaa/6fK+IOV05LYOKCIET4a
4FhlGaazIlYPqNLtlW2lCQHmFb7fK+sHX4BQltlAA44qaBVZv206o8WOvmUmxIrz
d3rUtSsUcHJMf+HlCRrKol2ZEmgPjSUFdsGnvaoFVtlxeHGvSJ53cOydnRJK27TN
bITVEZcyTfW/u7Vd+cOLi3Rd3DuzzIFbxW1nb4nIqy2mg3bg2pjFYkkshrV8m7mA
LAhpfGsro/83lduAxqUNuNjw2PoQHQ==
=b2j1
-----END PGP SIGNATURE-----

--=-oC8aCgFhzSXrvhwX/0tO--


--===============7411885265501947608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7411885265501947608==--

