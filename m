Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B298C2A6AD6
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 17:53:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68F31872A4;
	Wed,  4 Nov 2020 16:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id leVhY0dr+OZC; Wed,  4 Nov 2020 16:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16A938723F;
	Wed,  4 Nov 2020 16:53:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78B5A1BF20B
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E8A5203E2
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1D5QSaRLPznK for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 16:53:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C8602000A
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 16:53:12 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id F2B1458017C;
 Wed,  4 Nov 2020 11:53:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 04 Nov 2020 11:53:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=WGtBZotx2zMMoQxK+qbO6rThrSe
 UPqBq/GTH8RWASsU=; b=OIApHCdFlhK39henbLMfOB/6tYQOiuWZFMBfXo31QwY
 82mGkt1bjfe3POJNEepzIvMNk7Tn+ECBHFjuk9zLe5RmPCFjswQPKwKgrFQr2vTM
 56gnxq3+ZV+virOTZWqy5n8xiNG4VXoHgWLk+dmdtoMgW+enlwo47N8R06SOHm5O
 X1Z8mFNFomUMpfEZ51/zrh2OO6Luq6WS4OPMxo1oNm/UjAnYRpBK1xEhuAnmvL7h
 0vb4HvAZ7ObyU73KedRAHnz/FDD43DCydTp1YfPRvx5UM5N+LYKdE8OmKfbOxiwf
 J5YfSVhtL8hI1Ep1TnegyPRI0HpFI3AqsYPHvHB4/FA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=WGtBZo
 tx2zMMoQxK+qbO6rThrSeUPqBq/GTH8RWASsU=; b=fT4yyXdrCzcaXQptYyvthQ
 PGGhbZyv9wAob5GpmvCFlmp7/CUpxx0G1JpCRO2QcQIvCBNaulZjsDLN6KQyAqk1
 1Uf/uoIFSafRBBk24ja5XFD07m26ESvpwYcY4SCk4uOMJ+fuOI7ddPOG7Q+bYfvL
 VDWoBMkyR5xRVu3ahM4FgHpaJ6S44tog3PrDRE1YsNWOsywe0f5i5d6OVU9TqVfU
 lNgOJgsfhPfiN5ZctYnu4eRgmac0V1gdtxEVdtVYBKqPIr6iPuP+VBuqkHgB5+RJ
 ap2YmvKFx1U7iXWEiWMMFxLtRhHy71nWCccSjvfrkvhoB3QwHSvRqdkszgC5/QoQ
 ==
X-ME-Sender: <xms:ddyiX_kVZzypW8ie_ay14__Tf_Lu9sv8YLSSfcH2GImvWdNYUJ0ouw>
 <xme:ddyiXy0tJM1Ox96p3rY1Eh_qtbE7qIFUYYqvgZWP_EKy0Ui43cBRRan_GCfhGb3wE
 lXU6BoGZmMQh_Z2wEc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddthedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepffetteevieejteeuhfffgeektefghfeileehhedtuddutefhhfejtddvtddu
 ledvnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ddyiX1oC2nva4xv5RDiRXZ-OpHwTCB4ALz83mBzk3YHNvEeDQqbDKA>
 <xmx:ddyiX3lIyxVSk7CtaIb1MkDgCaW-FcswGzPte2jIWxe85BeAxgvFvQ>
 <xmx:ddyiX91VeuTQTaW7kK32181gtWdpJkw-6U_b8L6eQ_rsrhsvEDFnyg>
 <xmx:d9yiX0utDmXtYOUDUh5Z6R1BCBAMVxKvghUZBEpOer5KJ5sOn6__Uw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A5338306467D;
 Wed,  4 Nov 2020 11:53:09 -0500 (EST)
Date: Wed, 4 Nov 2020 17:53:08 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 07/14] dt-bindings: media: i2c: Add A31 MIPI CSI-2
 bindings documentation
Message-ID: <20201104165308.rcdxvzyj3kbiyfan@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-8-paul.kocialkowski@bootlin.com>
 <20201026161450.gr3dqpltxw2ccc3s@gilmour.lan>
 <20201027095221.GE168350@aptenodytes>
 <20201027184459.eberpkr52kay3du6@gilmour.lan>
 <20201104104827.GD285779@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <20201104104827.GD285779@aptenodytes>
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
Content-Type: multipart/mixed; boundary="===============5212274882699407484=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5212274882699407484==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xacrwb5dafcleu43"
Content-Disposition: inline


--xacrwb5dafcleu43
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 04, 2020 at 11:48:27AM +0100, Paul Kocialkowski wrote:
> Hi,
>=20
> On Tue 27 Oct 20, 19:44, Maxime Ripard wrote:
> > On Tue, Oct 27, 2020 at 10:52:21AM +0100, Paul Kocialkowski wrote:
> > > Hi,
> > >=20
> > > On Mon 26 Oct 20, 17:14, Maxime Ripard wrote:
> > > > i2c? :)
> > >=20
> > > Oops, good catch!
> > > =20
> > > > On Fri, Oct 23, 2020 at 07:45:39PM +0200, Paul Kocialkowski wrote:
> > > > > This introduces YAML bindings documentation for the A31 MIPI CSI-2
> > > > > controller.
> > > > >=20
> > > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > ---
> > > > >  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 168 ++++++++++++=
++++++
> > > > >  1 file changed, 168 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/media/allwi=
nner,sun6i-a31-mipi-csi2.yaml
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,su=
n6i-a31-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,=
sun6i-a31-mipi-csi2.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..9adc0bc27033
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31=
-mipi-csi2.yaml
> > > > > @@ -0,0 +1,168 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mip=
i-csi2.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> > > > > +
> > > > > +maintainers:
> > > > > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    oneOf:
> > > > > +      - const: allwinner,sun6i-a31-mipi-csi2
> > > > > +      - items:
> > > > > +          - const: allwinner,sun8i-v3s-mipi-csi2
> > > > > +          - const: allwinner,sun6i-a31-mipi-csi2
> > > > > +
> > > > > +  reg:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  interrupts:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  clocks:
> > > > > +    items:
> > > > > +      - description: Bus Clock
> > > > > +      - description: Module Clock
> > > > > +
> > > > > +  clock-names:
> > > > > +    items:
> > > > > +      - const: bus
> > > > > +      - const: mod
> > > > > +
> > > > > +  phys:
> > > > > +    items:
> > > > > +      - description: MIPI D-PHY
> > > > > +
> > > > > +  phy-names:
> > > > > +    items:
> > > > > +      - const: dphy
> > > > > +
> > > > > +  resets:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  # See ./video-interfaces.txt for details
> > > > > +  ports:
> > > > > +    type: object
> > > > > +
> > > > > +    properties:
> > > > > +      port@0:
> > > > > +        type: object
> > > > > +        description: Input port, connect to a MIPI CSI-2 sensor
> > > > > +
> > > > > +        properties:
> > > > > +          reg:
> > > > > +            const: 0
> > > > > +
> > > > > +          endpoint:
> > > > > +            type: object
> > > > > +
> > > > > +            properties:
> > > > > +              remote-endpoint: true
> > > > > +
> > > > > +              bus-type:
> > > > > +                const: 4
> > > > > +
> > > > > +              clock-lanes:
> > > > > +                maxItems: 1
> > > > > +
> > > > > +              data-lanes:
> > > > > +                minItems: 1
> > > > > +                maxItems: 4
> > > > > +
> > > > > +            required:
> > > > > +              - bus-type
> > > > > +              - data-lanes
> > > > > +              - remote-endpoint
> > > > > +
> > > > > +            additionalProperties: false
> > > > > +
> > > > > +        required:
> > > > > +          - endpoint
> > > > > +
> > > > > +        additionalProperties: false
> > > > > +
> > > > > +      port@1:
> > > > > +        type: object
> > > > > +        description: Output port, connect to a CSI controller
> > > > > +
> > > > > +        properties:
> > > > > +          reg:
> > > > > +            const: 1
> > > > > +
> > > > > +          endpoint:
> > > > > +            type: object
> > > > > +
> > > > > +            properties:
> > > > > +              remote-endpoint: true
> > > > > +
> > > > > +              bus-type:
> > > > > +                const: 4
> > > >=20
> > > > That one seems a bit weird. If the input and output ports are using=
 the
> > > > same format, what is that "bridge" supposed to be doing?
> > >=20
> > > Fair enough. What this represents is the internal link (likely a FIFO=
) between
> > > the two controllers. It is definitely not a MIPI CSI-2 bus but there'=
s no
> > > mbus type for an internal link (probably because it's not a bus after=
 all).
> > >=20
> > > Note that on the CSI controller side, we need the bus-type to be set =
to 4 for it
> > > to properly select the MIPI CSI-2 input. So it just felt more logical=
 to have
> > > the same on the other side of the endpoint. On the other hand, we can=
 just
> > > remove it on the MIPI CSI-2 controller side since it won't check it a=
nd have it
> > > fallback to the unknown mbus type.
> > >=20
> > > But that would make the types inconsistent on the two sides of the li=
nk.
> > > I don't think V4L2 will complain about it at the moment, but it would=
 also make
> > > sense that it does eventually.
> > >=20
> > > What do you think?
> >=20
> > There's still the same issue though, it doesn't make any sense that a
> > bridge doesn't change the bus type. If it really did, we wouldn't need
> > that in the first place.
>=20
> Yes I agreee.
>=20
> > What you want to check in your driver is whether the subdev you're
> > connected to has a sink pad that uses MIPI-CSI
>=20
> I'm not really sure that's possible, but if it is it would indeed be the =
most
> appropriate solution. If it's not, we still need to know that we need to =
feed
> from MIPI CSI-2 so I don't see any other option than report MIPI CSI-2 on=
 both
> ends of MIPI CSI-2 controller.
>=20
> But there's still the question of what media bus type should be reported =
for
> the CSI <-> MIPI CSI-2 link. I'm fine with unknown but we could also add a
> generic internal bus type for this case.

I guess both questions would need to be discussed more on the v4l2 side.

Maxime

--xacrwb5dafcleu43
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX6LcdAAKCRDj7w1vZxhR
xc3DAPsEOVFi4YsULyJxUGOG/CUJe58SiZEoSLOt7kVYjgc4hAD/TFRmJ5F8zSIM
RMVcnb7MsVl3UWOZyZMRL0DxZRfk7wo=
=IT0H
-----END PGP SIGNATURE-----

--xacrwb5dafcleu43--

--===============5212274882699407484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5212274882699407484==--
