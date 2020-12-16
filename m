Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D97D72DBEB9
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Dec 2020 11:37:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B45B2202C;
	Wed, 16 Dec 2020 10:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M+qq-iYgYnna; Wed, 16 Dec 2020 10:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A7C062152E;
	Wed, 16 Dec 2020 10:37:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBE2A1BF2FA
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 10:37:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D66AF868F2
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 10:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBoQXZFynzmF for <devel@linuxdriverproject.org>;
 Wed, 16 Dec 2020 10:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6D50868FE
 for <devel@driverdev.osuosl.org>; Wed, 16 Dec 2020 10:37:05 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 9006CAC91;
 Wed, 16 Dec 2020 10:37:03 +0000 (UTC)
Message-ID: <e2aa9af87060b91397fc4e1485ecf3ab3876f874.camel@suse.de>
Subject: Re: [PATCH v6 02/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 16 Dec 2020 11:37:01 +0100
In-Reply-To: <CAMpxmJX5t=LWpLkY=uYNK9r4rmStuSfmGc7=zcnu4_oHkQevWQ@mail.gmail.com>
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <20201211164801.7838-3-nsaenzjulienne@suse.de>
 <CAMpxmJX5t=LWpLkY=uYNK9r4rmStuSfmGc7=zcnu4_oHkQevWQ@mail.gmail.com>
User-Agent: Evolution 3.38.2 
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
Content-Type: multipart/mixed; boundary="===============4127819295663176106=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4127819295663176106==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vwdPcx+UPfpMDeh3uqYM"


--=-vwdPcx+UPfpMDeh3uqYM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-12-16 at 11:35 +0100, Bartosz Golaszewski wrote:
> On Fri, Dec 11, 2020 at 5:48 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> >=20
> > It'll simplify the firmware handling for most consumers.
> >=20
> > Suggested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> >=20
> > Changes since v4:
> > =C2=A0- Rearrange function calls for clarity, same functionality
> >=20
> > Changes since v2:
> > - Create devm_rpi_firmware_get()
> >=20
> > =C2=A0drivers/firmware/raspberrypi.c             | 29 +++++++++++++++++=
+++++
> > =C2=A0include/soc/bcm2835/raspberrypi-firmware.h |  8 ++++++
> > =C2=A02 files changed, 37 insertions(+)
> >=20
> > diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberr=
ypi.c
> > index b65e4c495772..250e01680742 100644
> > --- a/drivers/firmware/raspberrypi.c
> > +++ b/drivers/firmware/raspberrypi.c
> > @@ -243,6 +243,13 @@ void rpi_firmware_put(struct rpi_firmware *fw)
> > =C2=A0}
> > =C2=A0EXPORT_SYMBOL_GPL(rpi_firmware_put);
> >=20
> > +static void devm_rpi_firmware_put(void *data)
> > +{
> > +       struct rpi_firmware *fw =3D data;
> > +
> > +       rpi_firmware_put(fw);
> > +}
> > +
> > =C2=A0static int rpi_firmware_probe(struct platform_device *pdev)
> > =C2=A0{
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device *dev =3D =
&pdev->dev;
> > @@ -331,6 +338,28 @@ struct rpi_firmware *rpi_firmware_get(struct devic=
e_node *firmware_node)
> > =C2=A0}
> > =C2=A0EXPORT_SYMBOL_GPL(rpi_firmware_get);
> >=20
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
> > +       struct rpi_firmware *fw;
> > +
> > +       fw =3D rpi_firmware_get(firmware_node);
> > +       if (!fw)
> > +               return NULL;
> > +
> > +       if (devm_add_action_or_reset(dev, devm_rpi_firmware_put, fw))
> > +               return NULL;
> > +
> > +       return fw;
> > +}
> > +EXPORT_SYMBOL_GPL(devm_rpi_firmware_get);
> > +
> > =C2=A0static const struct of_device_id rpi_firmware_of_match[] =3D {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ .compatible =3D "rasp=
berrypi,bcm2835-firmware", },
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{},
> > diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/b=
cm2835/raspberrypi-firmware.h
> > index fdfef7fe40df..73ad784fca96 100644
> > --- a/include/soc/bcm2835/raspberrypi-firmware.h
> > +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> > @@ -142,6 +142,8 @@ int rpi_firmware_property_list(struct rpi_firmware =
*fw,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void *data, size_t tag_size);
> > =C2=A0void rpi_firmware_put(struct rpi_firmware *fw);
> > =C2=A0struct rpi_firmware *rpi_firmware_get(struct device_node *firmwar=
e_node);
> > +struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> > +                                          struct device_node *firmware=
_node);
> > =C2=A0#else
> > =C2=A0static inline int rpi_firmware_property(struct rpi_firmware *fw, =
u32 tag,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0void *data, size_t len)
> > @@ -160,6 +162,12 @@ static inline struct rpi_firmware *rpi_firmware_ge=
t(struct device_node *firmware
> > =C2=A0{
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
> > =C2=A0}
> > +
> > +static inline struct rpi_firmware *devm_rpi_firmware_get(struct device=
 *dev,
> > +                                       struct device_node *firmware_no=
de)
> > +{
> > +       return NULL;
> > +}
> > =C2=A0#endif
> >=20
> > =C2=A0#endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
> > --
> > 2.29.2
> >=20
>=20
> Reviewed-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Thanks for the reviews!


--=-vwdPcx+UPfpMDeh3uqYM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl/Z400ACgkQlfZmHno8
x/7Iywf+OISkQiK8ivH64i3HBYWqMPVD1qIvtJ1TmGWjD3DvKFTZ6MyChlJ+q50A
SYrVEUumIO6RuuG2lOR7m6xOJPxZtt7L6MfQutuhY6n/dIEVJT40IbV4Kpg3yFFF
/zGjYOHjgXJXwY526+RS3270kIOyF1UI1+UxMj68VBDwiIM6yAHbDfUgVxleiGc0
a7nbijIRYtTOqUXOgUhXBv7wxARIQY+bR7f+d3q7Xk6cJ4fRJpSzV2WR6kZ+q+rV
6M+Jh3ay5tgLFyqffrZ0Dpos+QDtX/60UUz08YYLKW6wu5Ark23dFtFxA7SE/lg6
9/vRJ8DBREyVK1QAxGA+Og64VJX0/w==
=KycM
-----END PGP SIGNATURE-----

--=-vwdPcx+UPfpMDeh3uqYM--


--===============4127819295663176106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4127819295663176106==--

