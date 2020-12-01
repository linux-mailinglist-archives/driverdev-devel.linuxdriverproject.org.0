Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9652CA24F
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 13:15:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E611388123;
	Tue,  1 Dec 2020 12:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMrLgmMqnVdE; Tue,  1 Dec 2020 12:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47FDC880F7;
	Tue,  1 Dec 2020 12:15:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB9321BF5D7
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 12:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E24D0880EB
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 12:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m0tp9Xz3WEdI for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 12:15:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73FD4880B1
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 12:15:42 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id AEFB65805E5;
 Tue,  1 Dec 2020 07:15:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 01 Dec 2020 07:15:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=xLt68knoYGgF5iBcCV4AyTmL1pt
 c+76tZVOMAu/CHBI=; b=qyC95gJNG0GhyqY9mk3MHQHSH4TSxyG7if+5XjJIWor
 oq4Uplz5jDgKDrIS5lwu8TMcUUl40/yk5M5e1pOqAvlXAslqwo0cUTOjSlXIOulh
 ah3FZocL6bnsOQZ06p9UiGexthhGakuFynfw5V0QH4YhbdIVW5CxalfUzGVWBB+P
 2Na3adMlcuT5omuLu0fMFLCoibkdFe5pJbU+S/UfFbpPeF4De4FNq3CnmobzIhzD
 GwP7ZSBsYghDfVohrZFyqR0yEYELJpG9eLn9wbUvcHtOJ44hFYm9Wri8be+qySs+
 X+jrlZvj5ZE6s1mw0ME6TKh+a+lyojk3JK9TAvciLag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=xLt68k
 noYGgF5iBcCV4AyTmL1ptc+76tZVOMAu/CHBI=; b=XA+QymAwgcOh5u6HL3rGMM
 yn06JXFXvGq7qI+vnAZKXUI0WFmk8H/AdxvaA1/LWD9fKRT54uCjOcU6UYGO7dhT
 Tfgmn+9ofPMyxvR3gBKprsf/EI9jjmpPwO9+W5fTs5BnWj+reEAFvdGOwOnKJkGm
 +PTFwhW+TcWZ8d4THOdfJjqgTtOuyDjZpGAoCbIE8ynPJCqtvL1KBrP+zpl16Zc0
 BsWwTlUTNhNrONp95RgRom9PqnEMcmpEUvVSL85bD153jz4srLVAQxQRiQsfmXP/
 dyangdJowRVHwcSWU4jKw5aes0AwsXWSQmPXhVB0OhfVd9iHqzTD0MbDMPuStW4Q
 ==
X-ME-Sender: <xms:6jPGX1EH3mfjZIxhD5CriSjKHOhx0MoOaNzmgMpQecjbqhOfo-XZcA>
 <xme:6jPGX6X_vfgkmOQ-pNpgFqqKTIAbD0MHedQNznTrtBgfsQQ7TX9N4uu-EtH2nP8CV
 emqbN2pSuPcppUFfDU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeivddggedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepffetteevieejteeuhfffgeektefghfeileehhedtuddutefhhfejtddvtddu
 ledvnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6jPGX3JvEFbmS8MmXKKi-AaHRnDpoRuHyqtehzi_vxYt5xuoBRd8pQ>
 <xmx:6jPGX7FLG0e1NfQF5aCUWnSGTdMcKtZsxAi1yIhaxm-2O6B7AgThQg>
 <xmx:6jPGX7UEEE6QeuKMd2NWGWW7DqdBjDm2BuQkkVfHzvd-R9i_t-YPHQ>
 <xmx:7DPGX4cEOh0cvZCOLOM6Oxn-vjUvaOjA1L6_2NzEZPAo50AZPAlw-Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1EEE6328005E;
 Tue,  1 Dec 2020 07:15:38 -0500 (EST)
Date: Tue, 1 Dec 2020 13:15:37 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 12/19] dt-bindings: media: Add A31 MIPI CSI-2 bindings
 documentation
Message-ID: <20201201121537.5g2dq7fg37cnvyq3@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-13-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201128142839.517949-13-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============7536299907320918187=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7536299907320918187==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="inrdmo7yw7sodjiz"
Content-Disposition: inline


--inrdmo7yw7sodjiz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 28, 2020 at 03:28:32PM +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A31 MIPI CSI-2
> controller.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 151 ++++++++++++++++++
>  1 file changed, 151 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun=
6i-a31-mipi-csi2.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-=
mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..917cd09d6fda
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-cs=
i2.yaml
> @@ -0,0 +1,151 @@
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
> +
> +  phy-names:
> +    items:
> +      - const: dphy

If there's a single item, you don't need the items: in phys and phy-names

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
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +              - remote-endpoint
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
> +        required:
> +          - endpoint
> +
> +        additionalProperties: false

Same thing than for the other dt binding patch, there's a schema for it now

Maxime

--inrdmo7yw7sodjiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8Yz6QAKCRDj7w1vZxhR
xQnUAP4kcSy4Z9vdwkgyDDcX78/L7Yvs5bZM5r2qvijj5Ejg6wD8DVseNaavwQzz
dkEwO+fMNV2fRSUls3N1gJ+MneML+wo=
=y1/M
-----END PGP SIGNATURE-----

--inrdmo7yw7sodjiz--

--===============7536299907320918187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7536299907320918187==--
