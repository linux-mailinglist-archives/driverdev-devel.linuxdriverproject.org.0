Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D15B298F54
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 15:32:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26C122E0EE;
	Mon, 26 Oct 2020 14:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IvPgxD7t3EFD; Mon, 26 Oct 2020 14:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F259275C6;
	Mon, 26 Oct 2020 14:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 825CD1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D36185F98
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VpWedcfPepqB for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 14:31:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAD5385F81
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 14:31:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 3D1FAAD07;
 Mon, 26 Oct 2020 14:31:50 +0000 (UTC)
Message-ID: <2ca7430db77ca2924cb6f4b99e858f155d261a18.camel@suse.de>
Subject: Re: [PATCH v2 05/10] soc: bcm: raspberrypi-power: Release firmware
 handle on unbind
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org
Date: Mon, 26 Oct 2020 15:31:47 +0100
In-Reply-To: <20201022155858.20867-6-nsaenzjulienne@suse.de>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-6-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8237894044710831024=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8237894044710831024==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-iro0+jQoAZrbRkqhy4O6"


--=-iro0+jQoAZrbRkqhy4O6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-10-22 at 17:58 +0200, Nicolas Saenz Julienne wrote:
> Upon unbinding the device make sure we release RPi's firmware interface.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/soc/bcm/raspberrypi-power.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/soc/bcm/raspberrypi-power.c b/drivers/soc/bcm/raspbe=
rrypi-power.c
> index 5d1aacdd84ef..a0b38db5886c 100644
> --- a/drivers/soc/bcm/raspberrypi-power.c
> +++ b/drivers/soc/bcm/raspberrypi-power.c
> @@ -225,6 +225,20 @@ static int rpi_power_probe(struct platform_device *p=
dev)
>  	return 0;
>  }
> =20
> +static int rpi_power_remove(struct platform_device *pdev)
> +{
> +	struct rpi_power_domains *rpi_domains =3D platform_get_drvdata(pdev);
> +
> +	of_genpd_del_provider(dev->of_node);
> +
> +	for (i =3D 0; i < RPI_POWER_DOMAIN_COUNT; i++)
> +		pm_genpd_remove(&rpi_domains->domains[i].base);
> +
> +	rpi_firmware_put(rpi_domaina->fw);

I Just realised I failed to squash a fix for this patch, so this will not
build. Sorry for that.

Regards,
Nicolas

> +
> +	return 0;
> +}
> +
>  static const struct of_device_id rpi_power_of_match[] =3D {
>  	{ .compatible =3D "raspberrypi,bcm2835-power", },
>  	{},
> @@ -237,6 +251,7 @@ static struct platform_driver rpi_power_driver =3D {
>  		.of_match_table =3D rpi_power_of_match,
>  	},
>  	.probe		=3D rpi_power_probe,
> +	.remove		=3D rpi_power_remove,
>  };
>  builtin_platform_driver(rpi_power_driver);
> =20


--=-iro0+jQoAZrbRkqhy4O6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+W3dMACgkQlfZmHno8
x/7DPAf/W6V8Brdbgq2QtE27YW5fEMV34Zg8X73FdarZ4ek3YR4/DxGnBXwz6/o3
Uf4CVOLfSOnlwf+nO26rHfvMl8WBwo14AR37nVAiHBFUOSiTvExBO+aHFDvHfHRP
LMcZeVRWNrH1XiVuYsXMlQ5BgeTba6ii+awS2itDOeR61xraPONJHgc0sVSbnjh+
AqDo4TxRZHP7CifFfwTZFC/yYt5RXYGyVYvvi4rWu9FZbwjy06rlmMcGZyguGpgj
grC4TlIs1actEIgrFa8cSS+zLNpcYCBgFe5HzVjqkyrhGu5lJZbFqmgbACV27+Jr
nBhLMJ/JZSnUSDFMhDuAJtC0/132LA==
=AyH+
-----END PGP SIGNATURE-----

--=-iro0+jQoAZrbRkqhy4O6--


--===============8237894044710831024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8237894044710831024==--

