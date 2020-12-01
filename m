Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 379E22CA023
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 11:43:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBEC08752D;
	Tue,  1 Dec 2020 10:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L8oWwc-NGq1M; Tue,  1 Dec 2020 10:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FEEB8750F;
	Tue,  1 Dec 2020 10:43:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 739001BF2AA
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 10:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DFAB8810D
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 10:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0bAW-jc+DkoL for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 10:43:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2AA12880EE
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 10:43:26 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 444B558030A;
 Tue,  1 Dec 2020 05:43:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 01 Dec 2020 05:43:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=cE2/BhUuBTM/tBl05gTg+SiiGeu
 zIsoIfzMBf7YnS2Y=; b=TTSDNj5Qz3HwMQkFp0pu8knvWV5N4sqPq/sKHPYdf2c
 GbUL4xSRcIs9uDGNX96An8+73C3033lk7Bwt6sCE9SyhaJMrGHq3B6OgY9DVvLIj
 fHSNRpIxflg4K5fr5u8L9vNZ4zKZ1bfRkW4nPpYxOHswd1/RPBU3EfZgHNRZKqFn
 /QfKRLQ+ohU+uoxvDHCmZQbHIankuJd5g1DlAVEKLD92ofrbd5czoKXbFjAwQSzk
 kt0TJW8eNpLwYev4kBEEPSAwnm/kdf6noJcDaNcfZ6j2Hux1GFzTuU/vbfKL/L5z
 ertYyPmsHN9wfiWubFYKWZ5PHNnsmdLgFruRrAO9Zyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=cE2/Bh
 UuBTM/tBl05gTg+SiiGeuzIsoIfzMBf7YnS2Y=; b=lo/pEgHKY7eaZMbyFdSjVg
 /T1tVKX4yGE+SbCd3lP+ekKyKYfmIjdb5hGTG+axT3YcPp7/DaXeVK3KTUjI8QRt
 lppm3VR7e8aoj4wmlmpzCZyGyIgM9+fEv5IY+Vkv/t29rTtH2A7Q/weI57CGhTV6
 ImZbmxn5S4M82K0kmk++GaKdbM8GdquO7ry6oP6lE+Qw4zk9BUr0N3tuj/0LT9ID
 KmpERhe/ksxC3Fw1/IKWEBg60YlVWNgKsmR2kcOp9so8NOudRCkHJx+Ma0Pjr/Ti
 q4hT7aheDlfunj2/KOSIAPim1Vudl8hc6xy7RkThzC+RQx5NLQsx8smA33OuwaBA
 ==
X-ME-Sender: <xms:Sh7GX4fUb4HLP2grPqfsRgouiXGhx_pjHaTIBXGuJMreb1OB1aj0zg>
 <xme:Sh7GX6Pj-Nv2fLMg_ZvPSfjdtr5-EKsT1sm2wAZ37_vW0j6puhey8XmgIty9RvtR3
 OVMP_-w27njo2_WgWo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeivddgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Sx7GX5i2IXEV5HwjDQj-0KCck85FZj_OgrRWWH8QxQy9y-u7uFKdYA>
 <xmx:Sx7GX9-6at4TcrUQMwGL9jJ9aodWqOrOheclBBf-B4Wtxp7HmXXszw>
 <xmx:Sx7GX0uvLXvtUW-43_DPBbSTLwTzxtDaaXj6xquwhpf5AZyVuZOTKA>
 <xmx:TR7GX9U75SJsrrkaeP6KBamtMTjBOo8ym628enLPf-Nbs_Wpcb78VA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8AA12108005E;
 Tue,  1 Dec 2020 05:43:22 -0500 (EST)
Date: Tue, 1 Dec 2020 11:43:21 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 06/19] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <20201201104321.rl3ujt5pjre6xlmm@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-7-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201128142839.517949-7-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============0169487406705775064=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0169487406705775064==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lun5d3kfon2axx3z"
Content-Disposition: inline


--lun5d3kfon2axx3z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 28, 2020 at 03:28:26PM +0100, Paul Kocialkowski wrote:
> The A31 CSI controller supports two distinct input interfaces:
> parallel and an external MIPI CSI-2 bridge. The parallel interface
> is often connected to a set of hardware pins while the MIPI CSI-2
> bridge is an internal FIFO-ish link. As a result, these two inputs
> are distinguished as two different ports.
>=20
> Note that only one of the two may be present on a controller instance.
> For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> dedicated to parallel.
>=20
> Update the binding with an explicit ports node that holds two distinct
> port nodes: one for parallel input and one for MIPI CSI-2.
>=20
> This is backward-compatible with the single-port approach that was
> previously taken for representing the parallel interface port, which
> stays enumerated as fwnode port 0. However, it is now marked as
> deprecated and the multi-port approach should be preferred.
>=20
> Note that additional ports may be added in the future, especially to
> support feeding the CSI controller's output to the ISP.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-csi.yaml        | 86 ++++++++++++++++---
>  1 file changed, 73 insertions(+), 13 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-=
csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.=
yaml
> index 1fd9b5532a21..3bcee2d44f3c 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> @@ -43,6 +43,7 @@ properties:
>    # See ./video-interfaces.txt for details
>    port:
>      type: object
> +    deprecated: true

I'm not sure we want to deprecate it. There's some SoCs with the same
controller but without the MIPI-CSI block where this would be completely
valid

>      properties:
>        endpoint:
> @@ -67,6 +68,59 @@ properties:
> =20
>      additionalProperties: false
> =20
> +  ports:
> +    type: object
> +
> +    properties:
> +      port@0:
> +        type: object
> +        description: Parallel input port, connect to a parallel sensor
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
> +              bus-width:
> +                enum: [ 8, 10, 12, 16 ]
> +
> +              pclk-sample: true
> +              hsync-active: true
> +              vsync-active: true
> +
> +            required:
> +              - bus-width
> +              - remote-endpoint
> +
> +        required:
> +          - endpoint
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        type: object
> +        description: MIPI CSI-2 bridge input port
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
> +            required:
> +              - remote-endpoint
> +
> +        additionalProperties: false

There's a schema for the OF-graph now, you'll want to use it.

Maxime

--lun5d3kfon2axx3z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8YeSQAKCRDj7w1vZxhR
xYT9AP0Uber0QsvWLD/B/ipxiWtm7WnSzo8VBPN3jw6D/qe1nQEAg9cRv6wvzoR4
aKRHG2EGIYA4/0s/XpYOYyVY5HBrwwg=
=udSm
-----END PGP SIGNATURE-----

--lun5d3kfon2axx3z--

--===============0169487406705775064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0169487406705775064==--
