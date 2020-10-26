Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7230E299399
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 18:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CE308584A;
	Mon, 26 Oct 2020 17:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCpwbCJ7PZ08; Mon, 26 Oct 2020 17:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9CDD85618;
	Mon, 26 Oct 2020 17:20:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 250E11BF20D
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 21F7F85624
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6JZRbh-S2Oct for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 17:20:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D53F185618
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 17:20:24 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 152175803F7;
 Mon, 26 Oct 2020 13:20:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 13:20:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=TcpGAKNjl4jtncZ0mFVjE/dr1/2
 VlzvT3toqDw/S2hw=; b=D6J2x6rfDTCv5PM8XS7If79M0UUXFSVzheNc/c4fo/4
 3Ke7U/29MavDCJmS59fd9K69lhpnvsHQxM7ihcykgHmTuBgCOGXfJ40o8jBqfeJC
 MwNG96Mlc2T3rIMCIMv/p3hKailWJq+gCpLCgmIVfEX1wcgqNNkUYCHy620igIlK
 gekKCJI3whuaLYfrwfPrKeTQHLrBKMqCpu1FqhGXOs35OxUFYjaV6Ro1bo9nWrYW
 pbPFhDQU0jGEU8nNP/MCHRFYM8RYYYk3lLV6OiuH9TsQpM3tkzynnlJvyhnGmBgQ
 KaB+OyE67VLpEjz0chnqfubG8SqAaI/zWwpqn0ZTWpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=TcpGAK
 Njl4jtncZ0mFVjE/dr1/2VlzvT3toqDw/S2hw=; b=ikTh1NGlx5CjvaW3ERRTJC
 DeYAWeO9pPP20WpAUeoArRvGiiw1ox4diDCWxM5PQl1p3Fvr07d6FY4eVMdoSBXT
 IQ1p5FGT0Mr7r2XB4SVzFLaYU5gD7q2t3AEhkwRtuGKlXYC2hKXLFJMgjwm37YOR
 8clzaADzD5pPtV54HG/iK9SnY8bbpWCAPglYk3nLJDMCZiT2HdO6FqRHMcPOcqZ2
 qpf+5x6HokZBr7V4llQFZ3o08uuiaNaU2dRfAK7tcWYEJTugwA99wiclkL2he/Lo
 AS51tvd6AiUI8CBmGw9kaudFJN/BV58JGzE8rNRBFwQVSVnqm3WM8evD1Ohq+yog
 ==
X-ME-Sender: <xms:VQWXX69zH3xMbFkUe3vnANNE2mGgMRiHTaSqklwU205CqBu-2gqS6Q>
 <xme:VQWXX6uXncqYmZR-pkDRmZ-aaNhJh_Yzta2OPua7GxEBO6kaN2JdjY7QBwxZFcOEC
 pyJ8ldDkrI-OSFMzWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VgWXXwCOYe7vU_O7Tn2B2ApGVs4JUGDiaogykmGI3Qn4AIHwWwg80g>
 <xmx:VgWXXyfiAFL0kWR4BR7qAsXSvFP2g1dXiOnRP4XfNYUH-hrMpv8hIw>
 <xmx:VgWXX_MYxz8WNL3lOzT_DPKFVsUIQNj1KMysF0XocJsUAstoJq-ZWA>
 <xmx:WAWXX6EeWCvFafkgWCMMdZgXkq2QD1yEsdpgNAtsfH-sZ5K4Elekgg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A87883280059;
 Mon, 26 Oct 2020 13:20:21 -0400 (EDT)
Date: Mon, 26 Oct 2020 18:20:20 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 00/14] Allwinner MIPI CSI-2 support for A31/V3s/A83T
Message-ID: <20201026172020.u6nxsvpqnilo4ghe@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============7978000978717089194=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7978000978717089194==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cljab7upzvbgmdt2"
Content-Disposition: inline


--cljab7upzvbgmdt2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2020 at 07:45:32PM +0200, Paul Kocialkowski wrote:
> This series introduces support for MIPI CSI-2, with the A31 controller th=
at is
> found on most SoCs (A31, V3s and probably V5) as well as the A83T-specific
> controller. While the former uses the same MIPI D-PHY that is already sup=
ported
> for DSI, the latter embeds its own D-PHY.
>=20
> In order to distinguish the use of the D-PHY between Rx mode (for MIPI CS=
I-2)
> and Tx mode (for MIPI DSI), a submode is introduced for D-PHY in the PHY =
API.
> This allows adding Rx support in the A31 D-PHY driver.
>=20
> A few changes and fixes are applied to the A31 CSI controller driver, in =
order
> to support the MIPI CSI-2 use-case.
>=20
> Follows is the V4L2 device topology representing the interactions between
> the MIPI CSI-2 sensor, the MIPI CSI-2 controller (which controls the D-PH=
Y)
> and the CSI controller:
> - entity 1: sun6i-csi (1 pad, 1 link)
>             type Node subtype V4L flags 0
>             device node name /dev/video0
> 	pad0: Sink
> 		<- "sun6i-mipi-csi2":1 [ENABLED,IMMUTABLE]
>=20
> - entity 5: sun6i-mipi-csi2 (2 pads, 2 links)
>             type V4L2 subdev subtype Unknown flags 0
> 	pad0: Sink
> 		<- "ov5648 0-0036":0 [ENABLED,IMMUTABLE]
> 	pad1: Source
> 		-> "sun6i-csi":0 [ENABLED,IMMUTABLE]
>=20
> - entity 8: ov5648 0-0036 (1 pad, 1 link)
>             type V4L2 subdev subtype Sensor flags 0
>             device node name /dev/v4l-subdev0
> 	pad0: Source
> 		[fmt:SBGGR8_1X8/640x480@1/30 field:none colorspace:raw xfer:none ycbcr:=
601 quantization:full-range]
> 		-> "sun6i-mipi-csi2":0 [ENABLED,IMMUTABLE]
>=20
> Happy reviewing!

I mentioned it to Kevin in the first version, but you should have a
v4l2-compliance run here.

If you have some time, it would be great to run libcamera as well.

Maxime

--cljab7upzvbgmdt2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5cFVAAKCRDj7w1vZxhR
xUl0AQCVEwC0SDfZKQxtG2cYrZtnF4KmKQoRJSWZMnLqG1WUNgD/Qak2xE1j8KWy
ZCV3doyuO20VG3S7tICkhrs25T5koQ0=
=iMp2
-----END PGP SIGNATURE-----

--cljab7upzvbgmdt2--

--===============7978000978717089194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7978000978717089194==--
