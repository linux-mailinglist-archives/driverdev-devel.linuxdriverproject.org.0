Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43B02AD7CD
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 14:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4871B873E8;
	Tue, 10 Nov 2020 13:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thVXFXyqSfkz; Tue, 10 Nov 2020 13:38:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DF4B8722B;
	Tue, 10 Nov 2020 13:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08CAB1BF3A8
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 13:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE2E786B74
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 13:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6WAXvVsMIs0 for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 13:38:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D12E86B6C
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:38:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 7AAC6ACDB;
 Tue, 10 Nov 2020 13:38:54 +0000 (UTC)
Message-ID: <25933d5863cd6ddb98dea25bdedf342ebd063480.camel@suse.de>
Subject: Re: [PATCH v3 01/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 10 Nov 2020 14:38:52 +0100
In-Reply-To: <CAMpxmJUZ23uYM3+_L2XvTXzvA48JWrxrhZaLnGAxTpJjFiERRA@mail.gmail.com>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-2-nsaenzjulienne@suse.de>
 <CAMpxmJWJRcQQiLitJCLWKmhQVQWr3bMDY=td5FEn5uy2YZfwkA@mail.gmail.com>
 <47eaba0bc71c6e23bff87b8a01cebf0c6d12efd0.camel@suse.de>
 <CAMpxmJUZ23uYM3+_L2XvTXzvA48JWrxrhZaLnGAxTpJjFiERRA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5795131339014669788=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5795131339014669788==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-aSQnVn7Q9FP2OogzR6s5"


--=-aSQnVn7Q9FP2OogzR6s5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bartosz, thanks for the feedback.

On Thu, 2020-11-05 at 10:42 +0100, Bartosz Golaszewski wrote:
> On Thu, Nov 5, 2020 at 10:28 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Hi Bartosz, thanks for the review.
> >=20
> > On Thu, 2020-11-05 at 10:13 +0100, Bartosz Golaszewski wrote:
> > > > +/**
> > > > + * devm_rpi_firmware_get - Get pointer to rpi_firmware structure.
> > > > + * @firmware_node:    Pointer to the firmware Device Tree node.
> > > > + *
> > > > + * Returns NULL is the firmware device is not ready.
> > > > + */
> > > > +struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> > > > +                                          struct device_node *firm=
ware_node)
> > > > +{
> > > > +       struct platform_device *pdev =3D of_find_device_by_node(fir=
mware_node);
> > > > +       struct rpi_firmware *fw;
> > > > +
> > > > +       if (!pdev)
> > > > +               return NULL;
> > > > +
> > > > +       fw =3D platform_get_drvdata(pdev);
> > > > +       if (!fw)
> > > > +               return NULL;
> > > > +
> > > > +       if (!refcount_inc_not_zero(&fw->consumers))
> > > > +               return NULL;
> > > > +
> > > > +       if (devm_add_action_or_reset(dev, rpi_firmware_put, fw))
> > > > +               return NULL;
> > > > +
> > > > +       return fw;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(devm_rpi_firmware_get);
> > >=20
> > > Usually I'd expect the devres variant to simply call
> > > rpi_firmware_get() and then schedule a release callback which would
> > > call whatever function is the release counterpart for it currently.
> > > Devres actions are for drivers which want to schedule some more
> > > unusual tasks at driver detach. Any reason for designing it this way?
> >=20
> > Yes, see patch #8 where I get rid of rpi_firmware_get() altogether afte=
r
> > converting all users to devres. Since there is no use for the vanilla v=
ersion
> > of the function anymore, I figured it'd be better to merge everything i=
nto
> > devm_rpi_firmware_get(). That said it's not something I have strong fee=
lings
> > about.
> >=20
>=20
> I see. So the previous version didn't really have any reference
> counting and it leaked the reference returned by
> of_find_device_by_node(), got it. Could you just clarify for me the
> logic behind the wait_queue in rpi_firmware_remove()? If the firmware
> driver gets detached and remove() stops on the wait_queue - it will be
> stuck until the last user releases the firmware. I'm not sure this is
> correct.

Yes, that's what I meant to implement.

> I'd prefer to see a kref with a release callback and remove
> would simply decrease the kref and return. Each user would do the same
> and then after the last user is detached the firmware would be
> destroyed.

Sounds good to me. I'll update it.

> Don't we really have some centralized firmware subsystem that would handl=
e this?

Sadly no, this is an RPi specific thing, it doesn't live behind a standard =
like
other firmware based protocols (for ex. SCMI), and evolves as the needs ari=
se.

Regards,
Nicolas


--=-aSQnVn7Q9FP2OogzR6s5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+ql+wACgkQlfZmHno8
x/5TFQgArzH6eU5ljiN7do5NqV1SI7f2HoX88NazrWiPc8Ixl7QT4jfzWnZeyiBn
31OdfWDVQeexADs3RDEvq/o5SSxNP+FDGlnzm9PiYaKPWcGdOpe8wW9wggXest4N
MVtyqksGQlf3MuItqI4HgP/aAhB8EKnYHTVrku2tAPR9cNliVmeusFWsPWIYXSYc
IcX61cPnzFkqU56k7aNrk452Kme6XDFDi2eD2DXAzHNlSHiQOH5ZQPKBmFUkaCDL
xP/T5PwL+YwF3ZWO2sU6voMp96QfiO8R/LYt215dIzlmTmdKcIC7scqEkr4HRSJp
9SW2n981ery3AA1wXoyGhLMJMilzcQ==
=CaET
-----END PGP SIGNATURE-----

--=-aSQnVn7Q9FP2OogzR6s5--


--===============5795131339014669788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5795131339014669788==--

