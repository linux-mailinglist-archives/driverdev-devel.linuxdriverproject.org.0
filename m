Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C53D0299218
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 17:15:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A512386852;
	Mon, 26 Oct 2020 16:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1dO8KFkbwvu; Mon, 26 Oct 2020 16:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B043586845;
	Mon, 26 Oct 2020 16:15:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FC431BF41F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 149B22E113
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D5Z-CtO4lHW5 for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 16:14:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B9AA2E112
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 16:14:57 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 130A85803F3;
 Mon, 26 Oct 2020 12:14:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 12:14:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=TLyiKgOV7T5s8EKyctDKKbjHeyz
 5nHIrwqEFQz+QSsQ=; b=eQ84KS+HxBeS5NfvqwoZsa3zVE9VdlE4oktymJyDQTK
 WS7H4qOwWNOjFcRnWwESGIIL0tmYDLBXu21at3eeaIvdP9Azl5PeViTGrOE4ojjF
 fElUd5JF7ca5hU6FddgR0La0JVwLAdEqUOU8GOjuwYp6a6DBAoaQXVTNfuEyy2DW
 By09qbGxxKRf//Z3NBctrDf9cusTv3i43OZxa84yRN1HPCNWJq4vWp8u1J/6AfGh
 Ep6i7i+lAi758RcR3kzVETsF/Xs4cfpaSHA8pFtdHuVSk1rFR43XS8Bj9ZZfuRJl
 dbpkMQ0xRLkylJ/e6l8Sfdcqi+Sng3B4RMjhlGbYAgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=TLyiKg
 OV7T5s8EKyctDKKbjHeyz5nHIrwqEFQz+QSsQ=; b=kPj637TBaochR9cRFkstu+
 10qhPZTu5UDqMrTpZGMEIM3kNXx2JDANwJFF0MNf9Cyy3wRyfch/94WbzPeMFSXy
 bN8rur72crIYEoWeji0FI5mEX0fhsZSti13lkhaKbV6N/C9xQOrvs6NVbX08rM3+
 LoXLkgmtoFLp6edw/UWuik8t7IOwopH9WEVmPKexSJx4FrcEJKKitUw/9PUl5Xp3
 v/o7Rl80TNqAKj0p7PSRV/1JY1NISaHVlWQfqgaybK7PkjO3z8mCSZWQglvr+F/J
 79HKZ9e6OFSC+n8f/rqoS4jlcAzBu2yWFoMdJOvdQ/+2oIlusKaik4HXST39kVmw
 ==
X-ME-Sender: <xms:_PWWX2Q0dI-rq3Gnyc7GIvZi6m4l_FcbIjIqpWPycwP9Vt2VQoejHw>
 <xme:_PWWX7xCssfOupGPUQtUzu3UYVbtF6WmxTzXln6unevGeR2keKoUXMjw7jtYrUHMW
 MA8siE9uQSeHH6-JAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdeglecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeetudffiefhhedvgfeufeejvedvveffffeikeduvdejuefgieffgedtuddtfeek
 tdenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgpdhgihhthhhusgdrtghomh
 enucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgr
 rhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:_PWWXz2qi7ON9-JqjnXXE9GC-GWrYsSb-s3pckEdeD75HwYaAWhmFw>
 <xmx:_PWWXyC2iQjygG9reB_Xy5CrTnilepzJFsxPOnDf7ZEr24cEAZISDw>
 <xmx:_PWWX_gPBz6ftr6DNqQ2O4FsX9TJijAolCNgNaCjYgnSa66AtySSLA>
 <xmx:APaWX4YEYu7cKh-qE3DWOvv4gH6ix1EeaVXqWS-lWcLLK-jn97J7Qw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 406783280059;
 Mon, 26 Oct 2020 12:14:52 -0400 (EDT)
Date: Mon, 26 Oct 2020 17:14:50 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 07/14] dt-bindings: media: i2c: Add A31 MIPI CSI-2
 bindings documentation
Message-ID: <20201026161450.gr3dqpltxw2ccc3s@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-8-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============8406985789671408943=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8406985789671408943==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eiytbmgwemquicwl"
Content-Disposition: inline


--eiytbmgwemquicwl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

i2c? :)

On Fri, Oct 23, 2020 at 07:45:39PM +0200, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A31 MIPI CSI-2
> controller.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 168 ++++++++++++++++++
>  1 file changed, 168 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun=
6i-a31-mipi-csi2.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-=
mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..9adc0bc27033
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-cs=
i2.yaml
> @@ -0,0 +1,168 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2.y=
aml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun6i-a31-mipi-csi2
> +      - items:
> +          - const: allwinner,sun8i-v3s-mipi-csi2
> +          - const: allwinner,sun6i-a31-mipi-csi2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +
> +  phys:
> +    items:
> +      - description: MIPI D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  resets:
> +    maxItems: 1
> +
> +  # See ./video-interfaces.txt for details
> +  ports:
> +    type: object
> +
> +    properties:
> +      port@0:
> +        type: object
> +        description: Input port, connect to a MIPI CSI-2 sensor
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            type: object
> +
> +            properties:
> +              remote-endpoint: true
> +
> +              bus-type:
> +                const: 4
> +
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - bus-type
> +              - data-lanes
> +              - remote-endpoint
> +
> +            additionalProperties: false
> +
> +        required:
> +          - endpoint
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        type: object
> +        description: Output port, connect to a CSI controller
> +
> +        properties:
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            type: object
> +
> +            properties:
> +              remote-endpoint: true
> +
> +              bus-type:
> +                const: 4

That one seems a bit weird. If the input and output ports are using the
same format, what is that "bridge" supposed to be doing?

> +            additionalProperties: false
> +
> +        required:
> +          - endpoint
> +
> +        additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> +
> +    mipi_csi2: mipi-csi2@1cb1000 {

The unit name should be pretty standard, with the list here:

https://github.com/devicetree-org/devicetree-specification/blob/master/sour=
ce/chapter2-devicetree-basics.rst#generic-names-recommendation

there's nothing really standing out for us in that list, but given that
there's dsi, we should stick with csi

Maxime

--eiytbmgwemquicwl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5b1+gAKCRDj7w1vZxhR
xUrvAQDaCb49+m5oHHwZxWYiC4umXmj81ww7TpCLw3SGokcdqgD+PDaf8R4Y7Mki
j3oAL73uUh4iuB1RtuGhHa16do4kDgg=
=ZVlV
-----END PGP SIGNATURE-----

--eiytbmgwemquicwl--

--===============8406985789671408943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8406985789671408943==--
