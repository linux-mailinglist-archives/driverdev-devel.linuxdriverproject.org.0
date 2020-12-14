Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE70D2D9789
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:42:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29796863F2;
	Mon, 14 Dec 2020 11:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuQEO08akxZ6; Mon, 14 Dec 2020 11:42:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 772BD86457;
	Mon, 14 Dec 2020 11:42:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 986421BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91F318745F
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gMZ+O9l9tnmV for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:42:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 627748745D
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:42:04 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9EE8D580221;
 Mon, 14 Dec 2020 06:42:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 14 Dec 2020 06:42:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=iiNPNEsEdF7Sa6z6H7UqKpT5vMo
 rbcrmTtDuIlLvEU4=; b=RN/KPZJLbZUrIVLVJ15R6PZNwGxCLjllTmX0dIGshPf
 edyIZgGDaZnTjoVRG2liqsZqNq+dmK82bPHAXQ4RKULMMt6CZjFU4LXSqjHgmOCj
 3Uczwke2H1jFuzQl4dsxtyBV1eik6yynUuN3SaDLcf1rnjfYP1ZXZhCg0+7IM8xn
 81gYE72n1AYxiX6OWMC6ufOvVzAbSX4OPP3knpXNgUAoWrFKd2UbRgLCn3ktEQWU
 VuqUGMWUobtehHXLgx1Dp2wyLX3nLDmOkN4mCxGYvMaL7IfOusUWVCVgCAQOufHa
 WrN1IEi7rJbwXrwuNjtEsfz0e4bVD1ceVYRNtHc4yMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=iiNPNE
 sEdF7Sa6z6H7UqKpT5vMorbcrmTtDuIlLvEU4=; b=hd+YVbqjLPb+gC6M725zkX
 9ADb7veUpmM90bjfm5IouUVZ1vhOdWgSD0LeXfoE6aRFcJ6Qw7nrPhVhlFI801c0
 TMaTSfqcGYzVzbvnT4NsXdbh2ZfHfUk//51KbTbq11pfY5NRNiWxHPDIaBR/nRYI
 MysKjNwoO8q+bUxiSwstVL+fLsawdzrLzUyHAXLRMQTpW3NRFRNFXOOBZM/C94YG
 cAeo06MVX6U6K6mVGlJc4TFZQRK62uhwpPG3NdXvT3iHYA2nb6OS9/JI/ZyLsLBq
 +fhRIbbK2IRqYBxR3Mh1W7E4/IgaCcvIu9o9hemWb62hWeLD4gUl93Hj1yve3oNg
 ==
X-ME-Sender: <xms:iU_XX_y-9g3mxklumCmKFHoIfXXjXJS76JHfDJ8SK3VzkeyLK7YXSg>
 <xme:iU_XX3M6a6IRyRz2IMkWyH9ZCYJtKrOA_V7ET2xZ0LgUBMsBoH__xJZaZiHiE1Ypq
 Xhfm9c3m4mrR_LrA0o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
 gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:iU_XX2MqVLuVF4MpwOwxCkO_V3YG1JP24FO-OCQl_8HbKkVXYQNzLA>
 <xmx:iU_XXxTr2Q9Z-UPC4_k4ZD-VIs11YoJgmrh00oHwf8p6LJRg9TNEew>
 <xmx:iU_XXwAZbKZbWAUR4T6_NLiHguhYMfXchvRx0X1d4-UYU4WbTqrmig>
 <xmx:i0_XXyR35CFHCWDVHKvW10Ec97Mx_QwG3a1DlqqdyxhQ_AWDyE5h2Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7DDE124005D;
 Mon, 14 Dec 2020 06:42:01 -0500 (EST)
Date: Mon, 14 Dec 2020 12:41:59 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 13/15] media: sunxi: Add support for the A83T MIPI
 CSI-2 controller
Message-ID: <20201214114159.oqb4o5fdnnmr4n5q@gilmour>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-14-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201211155708.154710-14-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============6565179612582234145=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6565179612582234145==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="luqjk2un2nyifiz3"
Content-Disposition: inline


--luqjk2un2nyifiz3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 11, 2020 at 04:57:06PM +0100, Paul Kocialkowski wrote:
> The A83T supports MIPI CSI-2 with a composite controller, covering
> both the protocol logic and the D-PHY implementation. This controller
> seems to be found on the A83T only and probably was abandoned since.
>=20
> This implementation splits the protocol and D-PHY registers and
> uses the PHY framework internally. The D-PHY is not registered as a
> standalone PHY driver since it cannot be used with any other
> controller.
>=20
> There are a few notable points about the controller:
> - The initialisation sequence involes writing specific magic init
>   values that do not seem to make any particular sense given the
>   concerned register fields;
> - Interrupts appear to be hitting regardless of the interrupt mask
>   registers, which can cause a serious flood when transmission errors
>   occur.
>=20
> Only 8-bit and 10-bit Bayer formats are currently supported.
> While up to 4 internal channels to the CSI controller exist, only one
> is currently supported by this implementation.
>=20
> This work is based on the first version of the driver submitted by
> K=E9vin L'h=F4pital, which was adapted to mainline from the Allwinner BSP.
> This version integrates MIPI CSI-2 support as a standalone V4L2 subdev
> instead of merging it in the sun6i-csi driver.
>=20
> It was tested on a Banana Pi M3 board with an OV8865 sensor in a 4-lane
> configuration.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts  |   2 +-
>  drivers/media/platform/sunxi/Kconfig          |   1 +
>  drivers/media/platform/sunxi/Makefile         |   1 +
>  .../sunxi/sun8i-a83t-mipi-csi2/Kconfig        |  11 +
>  .../sunxi/sun8i-a83t-mipi-csi2/Makefile       |   4 +
>  .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c    |  92 +++
>  .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h    |  39 ++
>  .../sun8i_a83t_mipi_csi2.c                    | 657 ++++++++++++++++++
>  .../sun8i_a83t_mipi_csi2.h                    | 197 ++++++
>  9 files changed, 1003 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kco=
nfig
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Mak=
efile
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun=
8i_a83t_dphy.c
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun=
8i_a83t_dphy.h
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun=
8i_a83t_mipi_csi2.c
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun=
8i_a83t_mipi_csi2.h
>=20
> diff --git a/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts b/arch/arm/boot=
/dts/sun8i-a83t-bananapi-m3.dts
> index b437eaeb91e9..bebe843a069b 100644
> --- a/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts
> +++ b/arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts
> @@ -151,7 +151,7 @@ port@1 {
> =20
>  			csi_in_mipi_csi2: endpoint {
>  				remote-endpoint =3D <&mipi_csi2_out_csi>;
> -			}
> +			};
>  		};
>  	};
>  };

This looks unrelated?

(and there's the same issue with the macros)

Maxime

--luqjk2un2nyifiz3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9dPhwAKCRDj7w1vZxhR
xcPdAP9q/q7r3QMKBCP+VcvAh9TUKqtz+e1Ae6scNCnvC2TD4gD/QJvT4IfRkQ73
koqE0XhbpldU7zAAxee4lM8ofAEFhQw=
=ZA9r
-----END PGP SIGNATURE-----

--luqjk2un2nyifiz3--

--===============6565179612582234145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6565179612582234145==--
