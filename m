Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B06F2D976C
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:35:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E1392050C;
	Mon, 14 Dec 2020 11:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g+s65xeAN2Cn; Mon, 14 Dec 2020 11:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79519204ED;
	Mon, 14 Dec 2020 11:35:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C8D5A1BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C55CE86352
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EaUUvqpj6Tv7 for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:35:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 586ED860C6
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:35:12 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 287AE5804E5;
 Mon, 14 Dec 2020 06:35:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 14 Dec 2020 06:35:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=7YLscnmdLB07H4eSAb1EiY9Lhzk
 Ym3A9190ioXjO2zM=; b=hyIN9wLS+hee293EsD3dSQLdBNpo9iSj+7a/QNpirgs
 xcRd4HXbJitSxqoYAtaVcU8L4+IbiHxrm74HX2r0dYrn0gAd+3Ouy0q+07SQ7yBA
 68mOut23yOReAWK0ch6309nw70Vv2MRbykwEMLz5GqPn7OwY1KcUkbQwRB1viNXj
 7zbChZd5tBgv6qc7eEz2B4ChBbIV+lx+Iu6dD0j/DBKvFw7HpjGapNUbcOF19o8t
 BbaRUDzSM4CfuvBLpLoELwQbyqhQmMIZGpfvlJXVH80+TZ0C4MfZ+3HMsetZBbEv
 98vtjzBGm9txya0oRci6gixlKnxmDrX5qAgCmrkqz1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7YLscn
 mdLB07H4eSAb1EiY9LhzkYm3A9190ioXjO2zM=; b=IQyw/uWOYWxd5+popsimjd
 Ep/V/lVb29Ngy1OGH3FFcSfI9ylZA84reFV+9ixBT7/DZUPpX0MoK9kHQKPr4xje
 UxkTSIG5myVPwS6MTv4rQE/XRtzn7GFypU1VOAUzejDsgk4dtuUcy+QX5WtYy+LI
 nZaFeH6GsnJFR4BlD/jSnYJvqwJiCxeMFOxM7cYoWsGQmnY8u80oGZxQ2QyVcUdc
 YOMfeXhgo99hnc8IWbrnJ9jrFjiTawSFXxWn2reSURJlag88vKVW1tigOzlCVhEE
 nyFcB4xnWhYsLBdhVVaAbVgy7iGd1fXZmxEz6M3zx7Vkt677+MfLWxJ91eGlQdxQ
 ==
X-ME-Sender: <xms:7k3XX1YPLKB1NAnhcxNCgkWEjb-n8_49gs84Or6TWTJ8O7wOKNebdg>
 <xme:7k3XX8bnx8csD2PiQ8DDnUjXDEog3XvuG1EO4QgIWdsIMo5VbUMWpl5sb7p9tn6YS
 ODhP1hdxlACrg0X6g4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedgvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepffetteevieejteeuhfffgeektefghfeileehhedtuddutefhhfejtddvtddu
 ledvnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7k3XX3_rQQCKSfhFS1gL6Z1FHY54wPZBu4MMgYEPm1mSmi5AkeycOA>
 <xmx:7k3XXzrLnNXa7swSD-C0H0w1flt3Vy-GlhQQBsgDXtJRSxMJkoO9Aw>
 <xmx:7k3XXwpoFLS2mF77X5-llnuILMGZtvKDEGLAmg0tmkLfOYKe6yTZUQ>
 <xmx:703XXwB-D6FRIbLGIMu4_hhcVRxIjpqM0baPwf9mwND61z5WyNfiyg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 88CEC108005B;
 Mon, 14 Dec 2020 06:35:10 -0500 (EST)
Date: Mon, 14 Dec 2020 12:35:09 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 08/15] dt-bindings: media: Add A31 MIPI CSI-2 bindings
 documentation
Message-ID: <20201214113509.gkzf42rtag5b4mcn@gilmour>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-9-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201211155708.154710-9-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============8531964322323567167=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8531964322323567167==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xr5od2srzjhkveva"
Content-Disposition: inline


--xr5od2srzjhkveva
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 11, 2020 at 04:57:01PM +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A31 MIPI CSI-2
> controller.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 149 ++++++++++++++++++
>  1 file changed, 149 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun=
6i-a31-mipi-csi2.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-=
mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..4d0bab541da1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-cs=
i2.yaml
> @@ -0,0 +1,149 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
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

This should be written as

phys:
  description: ...

Maxime

--xr5od2srzjhkveva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9dN7QAKCRDj7w1vZxhR
xa/4AP4qKCMRkGVqlSFOB4YcEHRswHol+VlXlfGrq/lGFp1dQwEA8n97QlZQEEVj
E1GKI8U0SUu2bgpKb3Wu8JLaYGw1KAY=
=gA8y
-----END PGP SIGNATURE-----

--xr5od2srzjhkveva--

--===============8531964322323567167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8531964322323567167==--
