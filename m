Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAE629914C
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 16:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA446867FC;
	Mon, 26 Oct 2020 15:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbBNR3Gi9j5U; Mon, 26 Oct 2020 15:41:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB0A7867D5;
	Mon, 26 Oct 2020 15:41:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA99C1BF869
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 15:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B5DE6867B5
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 15:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxPiwivKWTjt for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 15:41:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C8EA867A9
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 15:41:09 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 301E258017D;
 Mon, 26 Oct 2020 11:41:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 11:41:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=hIJ+XvEyejnh6CcFJ2Y0M5v0wXA
 yARTMLQfqwCwAJ8k=; b=RcFMe1aH5q8/fJXsvjpLKMa9KOBoLJiresNyiSKMloi
 ELN3mlL7d+d1EpSWdgAQOoLA0zCjacGwUmEZGdSgENtyEGPdJ7fyD1+6b6K8X1V8
 JzSuhoZvTaUMLt/C2LlkV4k9aaIduEbRzUHWNZ/ptCIMmX7jCrBQW8Ryo8BTlekk
 0apDrR75xzX254S8yqoHimqtEo2ci2F/lEwLz4xnZJAKJ2AWqtJF46jupAEJo2PM
 RQumH7Ma1IXg0F4N5OM7rnrRilcU5sdzIjHpqX5fvh59T+8Vc2w++bGc+yz3bwzW
 DClX/qLTFSGrEMprW9ls6JdiyrGy/KY7CYg3s9zuMeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=hIJ+Xv
 Eyejnh6CcFJ2Y0M5v0wXAyARTMLQfqwCwAJ8k=; b=MN+9PY6uokYY/5td/O2d4V
 aGzccbEjW3FwAUYrBxSjCTIpNKx1jiXUWYU3K1yLhpOQBwLs2BLh/LUDAMTk1gg9
 0XU4nJwqxi75ZMNSSgTnOoE6D2T3+ofXJSxqE32maVuYsbxAhVxT4g4xXQEoH64C
 VD/5odok3mzTQlTMnpFeYHspi7X/ymBNLEhxdKdllQrovnwDOCCB+t1GyGzg7IMb
 A1VS6fF/h8JHq9OpqHS7S3ddbKNkWFd/jQMHsox4vFrldfnEPFRnkou/GdZLbB8d
 arfmTK46z/DG3dljJHut13vqPGfKlHR2TpTxGqX/27pwPSX5qZjaHWYD9lQPloMQ
 ==
X-ME-Sender: <xms:Eu6WX52uSZ6DQTpukfuUVIFbRj1FXjltNtKBjdvI3qTlWMfjbqsKjQ>
 <xme:Eu6WXwGD8v7UsR8Ry3IkBVtzFpzbMKfVd7jYZlFTdKFy3HQR2vc1VCfnLrJfXLy37
 8r7b1IQPYATGSdetGE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Eu6WX54FQQmcuJZWyOgOLgApuWDr0oGc96D8mML83yIBB7uEmswvfA>
 <xmx:Eu6WX23ERtKS3RChKng7mv8RMSdHNehS1uNQdTvHXJFGEwFy3YhwDw>
 <xmx:Eu6WX8FUW_NWT-wr64s_7IdAprNsZDdAzeW_L0gVXLhuNVqMVBDK5Q>
 <xmx:FO6WX6_Fr7TaZ1kKJVa2lUx8epieL1SrP2ZG9cKP-n3cZVe_-RZe8Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EB966306467D;
 Mon, 26 Oct 2020 11:41:05 -0400 (EDT)
Date: Mon, 26 Oct 2020 16:41:04 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 03/14] media: sun6i-csi: Support an optional dedicated
 memory pool
Message-ID: <20201026154104.v32up7uh6oryqxaf@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-4-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-4-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============4983367085905282343=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4983367085905282343==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ftdwovwtsifdduwo"
Content-Disposition: inline


--ftdwovwtsifdduwo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2020 at 07:45:35PM +0200, Paul Kocialkowski wrote:
> This allows selecting a dedicated CMA memory pool (specified via
> device-tree) instead of the default one.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Why would that be needed?

> ---
>  drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers=
/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> index 28e89340fed9..5d2389a5cd17 100644
> --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> @@ -16,6 +16,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/of_reserved_mem.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
> @@ -849,6 +850,12 @@ static int sun6i_csi_resource_request(struct sun6i_c=
si_dev *sdev,
>  		return PTR_ERR(sdev->regmap);
>  	}
> =20
> +	ret =3D of_reserved_mem_device_init(&pdev->dev);
> +	if (ret && ret !=3D -ENODEV) {
> +		dev_err(&pdev->dev, "Unable to init reserved memory\n");
> +		return ret;
> +	}
> +
>  	sdev->clk_mod =3D devm_clk_get(&pdev->dev, "mod");

If that clk_get or any subsequent function fail you'll end up leaking
whatever the initialization of the reserved memory has allocated

Maxime

--ftdwovwtsifdduwo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5buEAAKCRDj7w1vZxhR
xbklAP9BmQpfRZjvnhSiQAttauRB1rDZXJo4lmDdUgbccMXk7gEAyHtNPq/k1qSJ
hGynIa7hp7ldH2sMhWh5Is3l5nC52Q0=
=Mnvp
-----END PGP SIGNATURE-----

--ftdwovwtsifdduwo--

--===============4983367085905282343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4983367085905282343==--
