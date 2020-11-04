Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BF62A61A5
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:33:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1E7C2284F;
	Wed,  4 Nov 2020 10:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJGxemG-JaFy; Wed,  4 Nov 2020 10:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9A8EB20C41;
	Wed,  4 Nov 2020 10:33:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 497811BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 21CB38737A
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjYlX3pxdX-J for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:33:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net [217.70.178.232])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EAC7871E1
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:33:38 +0000 (UTC)
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 2ADE5200009;
 Wed,  4 Nov 2020 10:33:32 +0000 (UTC)
Date: Wed, 4 Nov 2020 11:33:32 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 11/14] dt-bindings: media: i2c: Add A83T MIPI CSI-2
 bindings documentation
Message-ID: <20201104103332.GB285779@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-12-paul.kocialkowski@bootlin.com>
 <20201026165653.7tzo2hlagee633ra@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201026165653.7tzo2hlagee633ra@gilmour.lan>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5791662030665743169=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5791662030665743169==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yNb1oOkm5a9FJOVX"
Content-Disposition: inline


--yNb1oOkm5a9FJOVX
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 26 Oct 20, 17:56, Maxime Ripard wrote:
> On Fri, Oct 23, 2020 at 07:45:43PM +0200, Paul Kocialkowski wrote:
> > This introduces YAML bindings documentation for the A83T MIPI CSI-2
> > controller.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> What is the difference with the a31/v3s one?

It's a different controller, not a variation of the A31 one.
I'll rework the commit log to make this clearer.

> > ---
> >  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 158 ++++++++++++++++++
> >  1 file changed, 158 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,s=
un8i-a83t-mipi-csi2.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a8=
3t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i=
-a83t-mipi-csi2.yaml
> > new file mode 100644
> > index 000000000000..2384ae4e7be0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi=
-csi2.yaml
> > @@ -0,0 +1,158 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi=
2.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
> > +
> > +maintainers:
> > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: allwinner,sun8i-a83t-mipi-csi2
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus Clock
> > +      - description: Module Clock
> > +      - description: MIPI-specific Clock
> > +      - description: Misc CSI Clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +      - const: mipi
> > +      - const: misc
>=20
> If it's only due to the clock, it's soemething you can deal with in the
> first schema, there's no need to duplicate them.

It's a completely different controller so I don't think it makes sense to
have a single schema for both. Even if the bindings look similar.

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--yNb1oOkm5a9FJOVX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+ig3wACgkQ3cLmz3+f
v9EOVAf/e4pm05QGgcVnZzLG/lyNaEDWIuSgd/OGrAGoivwtqRFyR9doN4gDBPyT
WzqyQLUwoqabROn4uo4gDKYeVTBzurmP72wUpi56AZHwMF0GJJxBlnhPRVn+/+yA
1ivxytdXcDsCl7I4fnU5fgLBtlSAfxKLHpXiRGvUienru9cmtfaTWI4xAZdywRAu
ZHujRyp3UKa+4vLNsHfp3NTxowZPkXyvKQUkbl78EKyyT5q8fQdx8lnkkpoDdHlG
0BVa4uZLd5AREHoaRkBXyRjY1BFeurVis820lxAF6ZtX3xk91nc+ZAMGVKtPdjTr
kFZDDwiEdhWUut3CgCmxe2s656rOOA==
=ZtOi
-----END PGP SIGNATURE-----

--yNb1oOkm5a9FJOVX--

--===============5791662030665743169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5791662030665743169==--
