Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 204182B1817
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 10:21:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15E958743E;
	Fri, 13 Nov 2020 09:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cw6GyfbuzGv2; Fri, 13 Nov 2020 09:21:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A02D787425;
	Fri, 13 Nov 2020 09:21:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A57441BF3FB
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A20AD878D5
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFuTFIEVbzxW for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 09:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63A1A8769A
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:21:32 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 2523CAE92;
 Fri, 13 Nov 2020 09:21:30 +0000 (UTC)
Message-ID: <3af26701a12b0bcb55b8d422e2a18f06a8e94d4d.camel@suse.de>
Subject: Re: [PATCH v4 02/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 13 Nov 2020 10:21:28 +0100
In-Reply-To: <CAMpxmJWZsqfkkTP99a_8mu+O4xHwNWDqHuvgt7Cs88bA-iMvQA@mail.gmail.com>
References: <20201112163630.17177-1-nsaenzjulienne@suse.de>
 <20201112163630.17177-3-nsaenzjulienne@suse.de>
 <CAMpxmJWZsqfkkTP99a_8mu+O4xHwNWDqHuvgt7Cs88bA-iMvQA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2152717696513807085=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2152717696513807085==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lVAZyxFfZVTn1rZzZexc"


--=-lVAZyxFfZVTn1rZzZexc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-11-12 at 18:25 +0100, Bartosz Golaszewski wrote:
> On Thu, Nov 12, 2020 at 5:44 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Itroduce devm_rpi_firmware_get(), it'll simplify the firmware handling
> > for most consumers.
> >=20
> > Suggested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> > Changes since v2:
> > - Introduce devm_rpi_firmware_get()
> >=20
> >  drivers/firmware/raspberrypi.c             | 31 +++++++++++++++++++++-
> >  include/soc/bcm2835/raspberrypi-firmware.h |  8 ++++++
> >  2 files changed, 38 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberr=
ypi.c
> > index 438e17074a97..4ab2dfdc82ad 100644
> > --- a/drivers/firmware/raspberrypi.c
> > +++ b/drivers/firmware/raspberrypi.c
> > @@ -237,10 +237,17 @@ static void rpi_firmware_delete(struct kref *kref=
)
> >         kfree(fw);
> >  }
> >=20
> > -void rpi_firmware_put(struct rpi_firmware *fw)
> > +static void __rpi_firmware_put(void *data)
> >  {
>=20
> The '__' prefix is very vague and usually used for unlocked variants
> of functions. The casting to void * in rpi_firmware_put() is also
> unneeded. I would much prefer that the devres release callback be
> called devm_rpi_firmware_put() and that it call rpi_firmware_put()
> which would then call kref_put().

Yes, that's better. I'll change it.

Regards,
Nicolas


--=-lVAZyxFfZVTn1rZzZexc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+uUBgACgkQlfZmHno8
x/6lEgf/d59t0Td5W4xLTNBLofc0Vh4uZHeN9Gvi6L52ayUePt+6T8iYBizcBSD7
gMFFnbzAziAWiKl7DSZjZTOaVNPohvZqyhssPCN/xAs2Xw4k/9iy8SfjtY0LyJ5S
cY0As+Fny0/3v+hdAXAcl0O26eMFecffjVnEne56Iyy9pA1GAsjf2IU2XO6bE2sX
qED6OKxz+B+3vVZOyHv4E10B0L1rIs64Tjrh0fUElpaT+d8jPJ2aog1LKEjPe+rD
1QA4cwN8xmkiB6Tj97LK6q2yG2Cji9OHBP6QEw9orQHti/aKKhozLyw+stmIq/uF
gGk9YGb3/9okyNRC33V9EFN+3zjzCg==
=Sbj8
-----END PGP SIGNATURE-----

--=-lVAZyxFfZVTn1rZzZexc--


--===============2152717696513807085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2152717696513807085==--

