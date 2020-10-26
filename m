Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B54299311
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 17:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B65E22E120;
	Mon, 26 Oct 2020 16:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ww22uuRC3MhV; Mon, 26 Oct 2020 16:57:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B720B2E11A;
	Mon, 26 Oct 2020 16:56:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5720C1BF41F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:56:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50EEC857C5
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J7o7nqq5fjTP for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 16:56:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0CC7857B0
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 16:56:55 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id B6E705805D4;
 Mon, 26 Oct 2020 12:56:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 12:56:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=faYAJTfSctlHM7ABJz6moYFCpWA
 /waoqzYu5Nvlv+4U=; b=JdZVuvaVqf34Umv5FYsqDKtQdoElrwkrZNA+wQNLm7B
 3dQhE0NCRSIY16BIzfYiD7pKDJvP+mv/I9/MQpro7W27b6oR/o0pvO8Cx7RMs5bk
 uNXpA8hJUqj6ygbbHZVGD5yv/BkbxFDFWeKducgwiNo+yG3/i1mi0wPFiyx5XjgH
 Zxsxj684oVzrysWHvgcGFpuOK6KebJOl2yWPbOAvmrz1nUWsjb6N7eUse6l1TfNs
 q6l/dXvMGho4MhNo4M+J8bCHSLUR3YEg1C//XVpazg4Eux1aDz0alKXlbWRfMucT
 k9iexVVKshlAva5G2YgTYRynumYp6jWK11UbgemltsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=faYAJT
 fSctlHM7ABJz6moYFCpWA/waoqzYu5Nvlv+4U=; b=N9aGMUbWXFygf3Vv8R4BQs
 XyqcKVMMOMcDerpQs3g4tns8353Hx7HUWLiPXddddrFmt+hjRoRmKpWwWZDCBwx8
 gkzBziA0zGNYLnw2YTVm8wcakzE/YuuQkhyox7MgKIUhPYLk0DR6a2sZtAvjvOwi
 lpmG4M1NnETtbRxjG9g5IRrKARK3l56BN/ZnLiNmGLUyNLiuwG5FbvhSP0+M3A8u
 b279+MxiVfLTu49mMeyFbKGftCNX4cL+YgOjdAZhZxYs7kc2qn7MBXab7CoBlpvH
 P5K4mKTXt1KIi9LnhiU+/Iod9SbyjUCNZ6H3TW5qRuBY1+b+9akSPP1Ox4yv6Zmg
 ==
X-ME-Sender: <xms:1v-WX15H6yufn1RkLEn7ov3-9nkpD0FQyRQLJZv_1wCVZX6kjTUl7Q>
 <xme:1v-WXy7z6auCdkjJJbHQdSIeZi-NMR0E6jKl2li4aaMmYQHL3u_ol5xjmhU8S6kR7
 CZv9IxkO6iEcc2tOVc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeffteetveeijeetuefhffegkeetgffhieelheehtdduudethffhjedtvddtudel
 vdenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:1v-WX8c24GxEXI311O4UO8Eoi17n8ByHP10HefptpYL_w21nscYx0w>
 <xmx:1v-WX-KIBSMFILfDY86nDlD4CwYKFe9eli9AWGeh7keS5wrR2nXisQ>
 <xmx:1v-WX5IY8kpNmabaJORbYAb1U4oxskEOgJhtDn49o83brkeR1OI0nw>
 <xmx:1v-WX-DwAxMhQAQfn6hCoa63GUxBobN0AvAnAG3rlZGCRZ4KoRVr8g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 36ED7328005A;
 Mon, 26 Oct 2020 12:56:54 -0400 (EDT)
Date: Mon, 26 Oct 2020 17:56:53 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 11/14] dt-bindings: media: i2c: Add A83T MIPI CSI-2
 bindings documentation
Message-ID: <20201026165653.7tzo2hlagee633ra@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-12-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-12-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============3514493231678474040=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3514493231678474040==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ovabmptobm3zx7w"
Content-Disposition: inline


--7ovabmptobm3zx7w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2020 at 07:45:43PM +0200, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A83T MIPI CSI-2
> controller.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

What is the difference with the a31/v3s one?

> ---
>  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun=
8i-a83t-mipi-csi2.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t=
-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a=
83t-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..2384ae4e7be0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-c=
si2.yaml
> @@ -0,0 +1,158 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi2.=
yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun8i-a83t-mipi-csi2
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
> +      - description: MIPI-specific Clock
> +      - description: Misc CSI Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: mipi
> +      - const: misc

If it's only due to the clock, it's soemething you can deal with in the
first schema, there's no need to duplicate them.

Maxime

--7ovabmptobm3zx7w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5b/1QAKCRDj7w1vZxhR
xakfAP4kStUeYLhitiX6TMzIOuSCGkToCSiTRV+OOxZG6u/ebwD+O9sQfYacFXnD
437JGBI8Re7cmk9kw508jaZyC2EA6gI=
=ZOtr
-----END PGP SIGNATURE-----

--7ovabmptobm3zx7w--

--===============3514493231678474040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3514493231678474040==--
