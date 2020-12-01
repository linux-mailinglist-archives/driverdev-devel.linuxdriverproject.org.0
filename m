Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BDB2CA24B
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 13:13:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3B3B86C4B;
	Tue,  1 Dec 2020 12:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1YSHjXjuOI0; Tue,  1 Dec 2020 12:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4337A86C43;
	Tue,  1 Dec 2020 12:13:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2581BF5D7
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 12:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41CC52E133
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 12:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGATEMwGjmJS for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 12:12:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by silver.osuosl.org (Postfix) with ESMTPS id B8B142041F
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 12:12:46 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 88F085801D5;
 Tue,  1 Dec 2020 07:12:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 01 Dec 2020 07:12:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=Z+nDVstGc5vXsyJReaUNqDRiJfZ
 TlfID4JCekxNseFc=; b=FbEw7Izv467DChudl8cMiKyc+ajYm31ye5emZJmiaju
 n+XrLVKRifgoE7bgSS3LIlgl5A2a2dS0aNGGlpxn6P1flHrDww902HyHqcFHucZ6
 bEU7/R1XS6/HSWNYzpPTN61Znx4stCAGoHLbuzZN2oNbQVke3eNvJQqTzSSSatEm
 BKEt8qjwZOfhYbe4fK2jR0lQ2GYkhktsEQ4mmIVch+eF3y8kjUNsEue5IDj6dTft
 hFZY3gzD+QqfYXWCUCMAXhND+ZmsCjvfLQ/1tVmK0De9O1XHF8Na2HAHy7TcOg6P
 rL4hKzSp75UxfiIoU3RxoNhUYbh0LMN76JwoNRuaehw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Z+nDVs
 tGc5vXsyJReaUNqDRiJfZTlfID4JCekxNseFc=; b=DE/axZFj8rFjb5yrWCxEKH
 /y+uE3qSJEr1G3BTtyAb1e2GbObJGW/wP8QNSn+rnY+hQeA2E/iL1c4UGhnW2iGX
 WB0Z8qIsQwbDSqSv0/+K0ctB0DXvneGGRt0xoN15lMb/T0Dcv0MDV4JVU5rvVC/A
 q3YoKUEsMc4tHxEzeF57unej6WUM3t/XH3w6d3MHIST1qi/CR9nz9i7NdAzj6+Ge
 5OwL6XNO1c0W05FXO+ab4fvzGii9GszsZiJxdj9G7wh9tf9cVkY/mK7tH1cRcPi8
 56Rq1QKvwJmy9yA+lIS5LlNb76OLWQYxcB6zLviu+WimbtUO03BCj1TBcOUQBlLQ
 ==
X-ME-Sender: <xms:OzPGX1R47F71h7TsBJ2PBxQusSDwIYIUWlI6nGQDacIe_DvmUp4IAg>
 <xme:OzPGX-zPMOzIWJQp6y0pf020o7AjfnT3jc3s91SZ__JsPsFDov6nI91GHB0xwMb-y
 c4QTD93cx7jXPn1fxM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeivddgfeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:OzPGX63nhrjICE6uf0UCjtNSz6K5yafk4NGcRBDsKnQTIjBH4WB0Ag>
 <xmx:OzPGX9B-9aPO4Q3QnsxJDURWxJz5yd8tvmas596onKmr4yFlfdgbfQ>
 <xmx:OzPGX-iieePNJmNhb-36u4AlzIBUG1xQVX9X471dwfSxfnjHDoViRQ>
 <xmx:PTPGXzYXyz5o6xrR8YnzHBapWQe6QuQg2LE0kDfgk_jOMIa94Z-PbA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E09C33280064;
 Tue,  1 Dec 2020 07:12:42 -0500 (EST)
Date: Tue, 1 Dec 2020 13:12:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 07/19] media: sun6i-csi: Add support for MIPI CSI-2
 bridge input
Message-ID: <20201201121241.cyafjhot45puusfc@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201128142839.517949-8-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============5575979219080895020=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5575979219080895020==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n3hdtuwi2v3e62ny"
Content-Disposition: inline


--n3hdtuwi2v3e62ny
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Nov 28, 2020 at 03:28:27PM +0100, Paul Kocialkowski wrote:
> The A31 CSI controller supports a MIPI CSI-2 bridge input, which has
> its own dedicated port in the fwnode graph.
>=20
> Support for this input is added with this change:
> - two pads are defined for the media entity instead of one
>   and only one needs to be connected at a time;
> - the pads currently match the fwnode graph representation;
> - links are created between our pads and the subdevs for each
>   interface and are no longer immutable so that userspace can select
>   which interface to use in case both are bound to a subdev;
> - fwnode endpoints are parsed and stored for each interface;
> - the active subdev (and fwnode endpoint) is retrieved when validating
>   the media link at stream on time and cleared at stream off;
> - an error is raised if both links are active at the same time;
> - the MIPI interface bit is set if the MIPI CSI-2 bridge endpoint is
>   active.
>=20
> In the future, the media entity representation might evolve to:
> - distinguish the internal parallel bridge and data formatter;
> - represent each of the 4 internal channels that can exist between
>   the parallel bridge (for BT656 time-multiplex) and MIPI CSI-2
>   (internal channels can be mapped to virtual channels);
> - connect the controller's output to the ISP instead of its
>   DMA engine.
>=20
> Finally note that the MIPI CSI-2 bridges should not be linked in
> the fwnode graph unless they have a sensor subdev attached.

I'll leave most of the review to Laurent and Sakari, but I'm not quite
sure what you meant in the last paragraph. Did you mean that the
MIPI-CSI controller in the Allwinner SoC should only be linked if it has
a sensor attached, or did you mean that any MIPI-CSI2 bridge cannot be
attached to the controller?

Also, having somewhere (like your cover letter) the media-ctl setup you
tested with would be great.

Maxime

--n3hdtuwi2v3e62ny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8YzOQAKCRDj7w1vZxhR
xe1pAQDJ4VWYPmX2sjefU+JMNUL5vx5k6ObBfcW4bEsF8eT67wEAzkFZu7gABP+M
zDT0Q5EbIbl1JDpuCyD6lxVTgkvvKgM=
=bri9
-----END PGP SIGNATURE-----

--n3hdtuwi2v3e62ny--

--===============5575979219080895020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5575979219080895020==--
