Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 158A92C9FF4
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 11:39:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 406CB86B75;
	Tue,  1 Dec 2020 10:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbDUxBWSwmMS; Tue,  1 Dec 2020 10:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B849C86B76;
	Tue,  1 Dec 2020 10:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E8151BF2AA
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 10:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86FF4874B0
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 10:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzfKafQGNqiC for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 10:38:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1986E86FDB
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 10:38:55 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2A70858061F;
 Tue,  1 Dec 2020 05:38:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 01 Dec 2020 05:38:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=AOpTmHXIB1HGDEnfEEoBW+saz75
 jDDaup38+K/BCiPs=; b=UpXwBRIOefp7bJnwv8xhvFLijWtThVy7JVaZP75EGrs
 DfgMw3k0x28LRnq0Jf+ExYNOfuE5rtOLwmPad4ws29L6sO3PQkjnzuhzebje3OGx
 dcKi8r1UepqQ/pjnEHsRaVX9sdoVcsAWZoO7SANMiuw39wgyDmigVi7FQmy0nuZg
 b1QI6h16KsN+5yINUD1Yyd7uDiR+F+baCFMQrTR/PMlCtS5GP2SM5U1srXabgHKA
 7OlVP/En40xxMhThuWn8RZiwIl6mUTGHYriacqRI/kDO5qxSFyrr5WzBHX8dVP+E
 /8PxE7TpjXpN7d26RG/yj7EWGLs+YSlvLlJPfN4X/nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=AOpTmH
 XIB1HGDEnfEEoBW+saz75jDDaup38+K/BCiPs=; b=bz6HSpsbxILtay41kU9oF2
 L8deEC3aXKXLbH5SUzA/DULlqocSU5lVP7LQFFujZYgBz54w/YAiM++LDfrED+s9
 nqEzdw8Zhm+PTVg4q1ICePj3lc9UpO2YHV7cXYWc0/axtvQTErwCKPk3D+5VfGyx
 httNoCD0JjMlsooByRUvL19TmbmMB4o5ZscFgixDzgfmHId0rXn10dwqWjhrPZSy
 E4eFK7v5vI2CMeIBCBv98O8LOCr/U/aN0+hbej2oIeYzb2pPdkrY2d88LNGSk5Wb
 J0fqcwAd1Y2+3cpQFN9RxopjoMdjz+53slffvk7unpf1NcD98JJzm49FxrC7drmw
 ==
X-ME-Sender: <xms:Ox3GX102woqyBhbf5Scbvu5ViI7X7uL5fF-ok5wFgUx_FB9lmQpM0g>
 <xme:Ox3GX8A0ur2kV3uf7oqV0fqN4zHAed1hV5Q3hHoL9b5mFVF_AyGvuBaPc-3IFkRCR
 JD3xBJdkp-lyjLgBAI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeivddgudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Ox3GXyzr0dVxpwckZSiZ9r5y3pPfnuYQBYa9wd0O_GZJjwSFM7IAwA>
 <xmx:Ox3GX6mW5Vly6aJpEpiZ_CY6FKZfjgbE5urVmkm5ZA-Ahi_yJbJAPw>
 <xmx:Ox3GX3EF6Ay9nZGMiKNQixsIqIRJJI298bfK0EVewBfPweVzl0OB2Q>
 <xmx:Ph3GX-lJbjvXCan0hc2I3ghxzbc3zuUyc1ztLuVd3mar7N4q_j-kZQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D94AD1080057;
 Tue,  1 Dec 2020 05:38:50 -0500 (EST)
Date: Tue, 1 Dec 2020 11:38:49 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 03/19] phy: allwinner: phy-sun6i-mipi-dphy: Support
 D-PHY Rx mode for MIPI CSI-2
Message-ID: <20201201103849.cqjpf7lurn5htwgs@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-4-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201128142839.517949-4-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============3031420985723365557=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3031420985723365557==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zmsqkppuctc6r4g7"
Content-Disposition: inline


--zmsqkppuctc6r4g7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 28, 2020 at 03:28:23PM +0100, Paul Kocialkowski wrote:
> The Allwinner A31 D-PHY supports both Rx and Tx modes. While the latter
> is already supported and used for MIPI DSI this adds support for the
> former, to be used with MIPI CSI-2.
>=20
> This implementation is inspired by Allwinner's V3s Linux SDK
> implementation, which was used as a documentation base.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--zmsqkppuctc6r4g7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8YdOQAKCRDj7w1vZxhR
xfabAQCKz+DonqaT9Ix9D8Rls8njfXhm1dyR350ijoHZbIWOdwEAi6e3Q+a0clB6
8XLbvaH6EtFSjiv+xvN27NigNJ6dYQc=
=gpZc
-----END PGP SIGNATURE-----

--zmsqkppuctc6r4g7--

--===============3031420985723365557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3031420985723365557==--
