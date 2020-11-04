Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7D42A6E5A
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 20:55:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C17885570;
	Wed,  4 Nov 2020 19:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9C0xlP4gkYHL; Wed,  4 Nov 2020 19:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67A2D854FC;
	Wed,  4 Nov 2020 19:55:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B1641BF38E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45601865C4
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ub+9-I0TqxhK for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 19:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3F5A98653D
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 19:55:24 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 15DE6AC53;
 Wed,  4 Nov 2020 19:55:22 +0000 (UTC)
Message-ID: <4debc77f5c72e1f4eff36a700231493bf9fbf404.camel@suse.de>
Subject: Re: [PATCH v3 09/11] dt-bindings: pwm: Add binding for RPi firmware
 PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>
Date: Wed, 04 Nov 2020 20:55:19 +0100
In-Reply-To: <20201104190612.GA3959462@bogus>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-10-nsaenzjulienne@suse.de>
 <20201104190612.GA3959462@bogus>
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
Cc: linux-pwm@vger.kernel.org, linus.walleij@linaro.org,
 Eric Anholt <eric@anholt.net>, linux-clk@vger.kernel.org,
 devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 bgolaszewski@baylibre.com, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, u.kleine-koenig@pengutronix.de,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 linux-input@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 sboyd@kernel.org, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 p.zabel@pengutronix.de
Content-Type: multipart/mixed; boundary="===============0169063911148602985=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0169063911148602985==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-cU9/G+WYZ+w+iySzg6LF"


--=-cU9/G+WYZ+w+iySzg6LF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-11-04 at 13:06 -0600, Rob Herring wrote:
> On Wed, 04 Nov 2020 11:39:35 +0100, Nicolas Saenz Julienne wrote:
> > The PWM bus controlling the fan in RPi's official PoE hat can only be
> > controlled by the board's co-processor.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> >=20
> > ---
> >=20
> > Changes since v1:
> >  - Update bindings to use 2 #pwm-cells
> >=20
> >  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 20 +++++++++++++++++++
> >  .../pwm/raspberrypi,firmware-pwm.h            | 13 ++++++++++++
> >  2 files changed, 33 insertions(+)
> >  create mode 100644 include/dt-bindings/pwm/raspberrypi,firmware-pwm.h
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/=
bcm/raspberrypi,bcm2835-firmware.example.dt.yaml: firmware: pwm:#pwm-cells:=
0:0: 2 was expected

Yes I forgot to update the example...

Regards,
Nicolas


--=-cU9/G+WYZ+w+iySzg6LF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+jBycACgkQlfZmHno8
x/4lqwf+LNqmKYmR+D64RymsZ5v7t1WD9DkM2AcOluMdjU13iiD8I+U2KdCc2R8Y
KhH9mNARA0Kd5JtfEzifsT4G3OqWIac7V/abpwHwrS7ilQjx2gLCACaBO87JwzK0
R5uOO0FWqaEoLK5GknPO2HGn8ez34EPHU3cu4SXBBFqEnaEbEMr9cEl0ou+vdrYS
3JnsvkWGZO7LY9vh05c9I/L2pyFg1JieOLU46BYJxAPvlqeILLwWvJ0oq4iiFM7I
ZFjf/7VhrNk92HLeRMTgPt6/LuVsvnDBJXzAEknYiZt4Taa99Y11MxauWIIqAsk+
LBfmYrGtxl88K4eRkxCDzH4wnYm/qQ==
=Ei+W
-----END PGP SIGNATURE-----

--=-cU9/G+WYZ+w+iySzg6LF--


--===============0169063911148602985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0169063911148602985==--

