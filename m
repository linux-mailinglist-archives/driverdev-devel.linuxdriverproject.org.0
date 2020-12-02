Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C392CC038
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 16:02:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FD5087928;
	Wed,  2 Dec 2020 15:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sSUiy7mANsVC; Wed,  2 Dec 2020 15:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 340338796E;
	Wed,  2 Dec 2020 15:02:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 972401BF281
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 15:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 923F687966
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 15:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHMf1AMD0QBU for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 15:02:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A894D877BB
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 15:02:19 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id CEC1E6000C;
 Wed,  2 Dec 2020 15:02:09 +0000 (UTC)
Date: Wed, 2 Dec 2020 16:02:09 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 09/19] ARM: dts: sunxi: h3/h5: Add CSI controller port
 for parallel input
Message-ID: <X8escb4SZXEpiR0n@aptenodytes>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-10-paul.kocialkowski@bootlin.com>
 <20201201121405.at4pwxon56ecwrx6@gilmour>
MIME-Version: 1.0
In-Reply-To: <20201201121405.at4pwxon56ecwrx6@gilmour>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============5101886191100340141=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5101886191100340141==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rGPkz4GDdv/zCi05"
Content-Disposition: inline


--rGPkz4GDdv/zCi05
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 01 Dec 20, 13:14, Maxime Ripard wrote:
> On Sat, Nov 28, 2020 at 03:28:29PM +0100, Paul Kocialkowski wrote:
> > Since the CSI controller binding is getting a bit more complex due
> > to the addition of MIPI CSI-2 bridge support, make the ports node
> > explicit with the parallel port.
> >=20
> > This way, it's clear that the controller only supports parallel
> > interface input and there's no confusion about the port number.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sun=
xi-h3-h5.dtsi
> > index 9be13378d4df..02b698cace6a 100644
> > --- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> > +++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> > @@ -803,6 +803,15 @@ csi: camera@1cb0000 {
> >  			pinctrl-names =3D "default";
> >  			pinctrl-0 =3D <&csi_pins>;
> >  			status =3D "disabled";
> > +
> > +			ports {
> > +				#address-cells =3D <1>;
> > +				#size-cells =3D <0>;
> > +
> > +				csi_in_parallel: port@0 {
> > +					reg =3D <0>;
> > +				};
> > +			};
> >  		};
>=20
> This will create a DTC warning, since port@0 is the only node, and is
> equivalent to port

I'm not seeing the warning when running dtbs_check.
More generally, why is it a problem that there's only one node defined?

One issue that I did see is that the port node doesn't have an endpoint
here, so I will remove the requirement to have an endpoint in the bindings
documentation to allow this kind of definition.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--rGPkz4GDdv/zCi05
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/HrHEACgkQ3cLmz3+f
v9ErpAgAl7uJWiiZLPZchWKL6k5dL9UqFnjiKHTANDFz4zNTRp/o32qFhs/5b/dS
YmQq0RsO+cyvnDxYlcRd1a49EhTeI08dsZtMrAzeLGqrOmxwBNEoJiNASEDRodFP
MogKS9JER+A8zl3msQDPCDlBRTVwQrQaDbpHBKoF6qQTbWWuG+2/AY/LCr6DFY2X
GoR7hXqjiJkIzc+49SC2C3mnycLETpJAf7mY3mQkTHdbuKqJCyjglrCPtvLvzxLU
U5bzjNMc/Lm7X1NP1aOMCHhSJ0yE6/vewMKkceTfm4AUvS48fz2/s78AU2n4rD/U
ETFlPrmf9vkxA732GCZiTvH9OQWHTA==
=PFfC
-----END PGP SIGNATURE-----

--rGPkz4GDdv/zCi05--

--===============5101886191100340141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5101886191100340141==--
