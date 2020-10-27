Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A11529A854
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 10:52:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1F0585653;
	Tue, 27 Oct 2020 09:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V-T4g3EiXcbc; Tue, 27 Oct 2020 09:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D59D68577A;
	Tue, 27 Oct 2020 09:52:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E34731BF2FB
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ACDC420433
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 09:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bxSwITm1L-oW for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 09:52:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F96A2042A
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 09:52:29 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 34CAC20010;
 Tue, 27 Oct 2020 09:52:22 +0000 (UTC)
Date: Tue, 27 Oct 2020 10:52:21 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 07/14] dt-bindings: media: i2c: Add A31 MIPI CSI-2
 bindings documentation
Message-ID: <20201027095221.GE168350@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-8-paul.kocialkowski@bootlin.com>
 <20201026161450.gr3dqpltxw2ccc3s@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201026161450.gr3dqpltxw2ccc3s@gilmour.lan>
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
Content-Type: multipart/mixed; boundary="===============6682350185294756833=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6682350185294756833==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ILuaRSyQpoVaJ1HG"
Content-Disposition: inline


--ILuaRSyQpoVaJ1HG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 26 Oct 20, 17:14, Maxime Ripard wrote:
> i2c? :)

Oops, good catch!
=20
> On Fri, Oct 23, 2020 at 07:45:39PM +0200, Paul Kocialkowski wrote:
> > This introduces YAML bindings documentation for the A31 MIPI CSI-2
> > controller.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 168 ++++++++++++++++++
> >  1 file changed, 168 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,s=
un6i-a31-mipi-csi2.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-=
a31-mipi-csi2.yaml
> > new file mode 100644
> > index 000000000000..9adc0bc27033
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-=
csi2.yaml
> > @@ -0,0 +1,168 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2=
=2Eyaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> > +
> > +maintainers:
> > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: allwinner,sun6i-a31-mipi-csi2
> > +      - items:
> > +          - const: allwinner,sun8i-v3s-mipi-csi2
> > +          - const: allwinner,sun6i-a31-mipi-csi2
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
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +
> > +  phys:
> > +    items:
> > +      - description: MIPI D-PHY
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dphy
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  # See ./video-interfaces.txt for details
> > +  ports:
> > +    type: object
> > +
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: Input port, connect to a MIPI CSI-2 sensor
> > +
> > +        properties:
> > +          reg:
> > +            const: 0
> > +
> > +          endpoint:
> > +            type: object
> > +
> > +            properties:
> > +              remote-endpoint: true
> > +
> > +              bus-type:
> > +                const: 4
> > +
> > +              clock-lanes:
> > +                maxItems: 1
> > +
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +            required:
> > +              - bus-type
> > +              - data-lanes
> > +              - remote-endpoint
> > +
> > +            additionalProperties: false
> > +
> > +        required:
> > +          - endpoint
> > +
> > +        additionalProperties: false
> > +
> > +      port@1:
> > +        type: object
> > +        description: Output port, connect to a CSI controller
> > +
> > +        properties:
> > +          reg:
> > +            const: 1
> > +
> > +          endpoint:
> > +            type: object
> > +
> > +            properties:
> > +              remote-endpoint: true
> > +
> > +              bus-type:
> > +                const: 4
>=20
> That one seems a bit weird. If the input and output ports are using the
> same format, what is that "bridge" supposed to be doing?

Fair enough. What this represents is the internal link (likely a FIFO) betw=
een
the two controllers. It is definitely not a MIPI CSI-2 bus but there's no
mbus type for an internal link (probably because it's not a bus after all).

Note that on the CSI controller side, we need the bus-type to be set to 4 f=
or it
to properly select the MIPI CSI-2 input. So it just felt more logical to ha=
ve
the same on the other side of the endpoint. On the other hand, we can just
remove it on the MIPI CSI-2 controller side since it won't check it and hav=
e it
fallback to the unknown mbus type.

But that would make the types inconsistent on the two sides of the link.
I don't think V4L2 will complain about it at the moment, but it would also =
make
sense that it does eventually.

What do you think?

> > +            additionalProperties: false
> > +
> > +        required:
> > +          - endpoint
> > +
> > +        additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> > +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> > +
> > +    mipi_csi2: mipi-csi2@1cb1000 {
>=20
> The unit name should be pretty standard, with the list here:
>=20
> https://github.com/devicetree-org/devicetree-specification/blob/master/so=
urce/chapter2-devicetree-basics.rst#generic-names-recommendation
>=20
> there's nothing really standing out for us in that list, but given that
> there's dsi, we should stick with csi

Then what really surprises me is that the CSI controllers are called "camer=
a",
not "csi". If "camera" is supposed to cover both image sensor and camera se=
nsor
interfaces, it would probably fit MIPI CSI-2 as well.

I see lots of names with -controller for controllers with specific devices
attached, like "nand-controller" or "lcd-controller". Maybe using
"camera-controller" for the CSI and MIPI CSI-2 controllers would make the m=
ost
sense, while keeping "camera" for the actual image sensors.

What do you think?

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--ILuaRSyQpoVaJ1HG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+X7dUACgkQ3cLmz3+f
v9HIzgf/VU3frpGzprIvTeXBh32se5uXZB/3cj0cUb++7oXeTXSc/db0LOwDu7jo
/UyfvdYNUhuUMMOPT/ltm0ObonZzOv4GkAl0rjQYccWmwqAhi9/m/ac++ub7WjUk
yv159tAbN+dorR6X2Q548Y8JKAYXBM/of0RVIs0ms/J8rnBkozXBv89gxTiIxrnH
3swwmgsFAYEklUApRcIUcgSdsbxyRu10JTQ7vlmimb5/4Z3mEmOXGe7SkxKREFym
fGumuTIXAWceJ0NLAXkUw3XxHku1Xczzmj78crBFvE0L8fUDKAoMFOG96oQqbI5t
GlF0jyE3FZO/rbmGafQtSqE/B9JOFw==
=CWwJ
-----END PGP SIGNATURE-----

--ILuaRSyQpoVaJ1HG--

--===============6682350185294756833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6682350185294756833==--
