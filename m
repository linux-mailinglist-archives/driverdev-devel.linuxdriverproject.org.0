Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4C2CC10B
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 16:41:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B50D0879AD;
	Wed,  2 Dec 2020 15:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIL6nxz+liKX; Wed,  2 Dec 2020 15:41:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 415548798A;
	Wed,  2 Dec 2020 15:41:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 626281BF3A0
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 15:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 576822E202
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 15:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Mat6PYAn-Dz for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 15:40:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C7D42E17D
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 15:40:59 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 458EC580387;
 Wed,  2 Dec 2020 10:40:58 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 02 Dec 2020 10:40:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=9Gmw2R9k0ECc5QddBoAVCGV1sXx
 zmzO4YbJmiIaU4YY=; b=XTaU5h2f3WAixKnXCS97j2KVWpPWFVh0YhT+m4Nj3CM
 d8fTiUZiwPxy0O5RDJhyFigFAz8sZz+tbotDWcC+lmTl53Ikj9hzxkoHOvZx4Hdg
 FHl+5ybpwHd/CInVL1bT07psyo33xntHw9gOTFFJX3XlcgTC7hIttoxNqcv+uUeo
 LZQPJSK/VNUNsS9C/ou1MotSZMMX0hGIUtSeitIqp/teQgRTE1jozqWsg2tNM+Vn
 USR1udlNMb86zaufmPt12VFdaaCvyfDp4yC4U8VFzxXM7WpMW7JKENwMOH/bGpX3
 WtGeRMbpE+ekTaVlvtl49Bm8G884l6R2RuIACX1pO4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=9Gmw2R
 9k0ECc5QddBoAVCGV1sXxzmzO4YbJmiIaU4YY=; b=GObBsEcZzgssNLZ33qx0AJ
 GhlgBV+VE8PDXxHuIwxRZtWVbtBsMqOVYwL3HUiCeUs7vY8qYe7eEgG24NXTJrw5
 eJgCZirNGC/0NxuBWDfYbSsxr1R9Xq00iLJEo3mFb51sjeL9PGDCc09ibc4NbLEd
 0KooxPvuwHzHE0LxBpGNgx7SCw9X4xddpdRZbhog0DNe1o2WVVFV9AoU8bzzO1NL
 UW3xSz6z9XM5YMvkD0pfQlzsIhp4ctFCnj2JwxMvQpMw4wAqOGvL5a3BMOQT1teW
 JwGpgNnv8qyoHrp5w/jg0fLjmzY+6Be9L1HWOP9B78yeu9+bujjcrxCKZT4ofyvQ
 ==
X-ME-Sender: <xms:h7XHX6UQeHQEadhXHmWiua1blbeGIYoHmrlI6pKlv80Kx1hkp7LMPg>
 <xme:h7XHX2lwJSwaWT89wtGtST6xjt8rJR0k4ZT9_TbTo--YaWK9DUy5suydVTxsCrBMk
 anmTROWQ3BZ2g3drAE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeigedgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:h7XHX-aKGxXIfGlJvn1_Dysw-33py4S0qYrfKro6R7oq7vEmSSYZww>
 <xmx:h7XHXxU0cICtGIQXx-YSPouGHbBpvLURwrA__hpjab2MreoNnOw4Xw>
 <xmx:h7XHX0nPMPTgDlfrW0B3kohd_CznI66BouVVJPEjF-NshJcMO-eEzw>
 <xmx:irXHX6vQYPWX-0wHB404TnSZkkQOuwK3QpEq_uaXgxrSibT3kK1dOw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D6D14108005B;
 Wed,  2 Dec 2020 10:40:54 -0500 (EST)
Date: Wed, 2 Dec 2020 16:40:53 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 07/19] media: sun6i-csi: Add support for MIPI CSI-2
 bridge input
Message-ID: <20201202154053.3fcxiift2uyqnjvp@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-8-paul.kocialkowski@bootlin.com>
 <20201201121241.cyafjhot45puusfc@gilmour>
 <X8eiXxYw1iHKbdDV@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <X8eiXxYw1iHKbdDV@aptenodytes>
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
Content-Type: multipart/mixed; boundary="===============7331210235161441802=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7331210235161441802==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45hcbhhgcfnzxspi"
Content-Disposition: inline


--45hcbhhgcfnzxspi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 02, 2020 at 03:19:11PM +0100, Paul Kocialkowski wrote:
> Hi,
>=20
> On Tue 01 Dec 20, 13:12, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Sat, Nov 28, 2020 at 03:28:27PM +0100, Paul Kocialkowski wrote:
> > > The A31 CSI controller supports a MIPI CSI-2 bridge input, which has
> > > its own dedicated port in the fwnode graph.
> > >=20
> > > Support for this input is added with this change:
> > > - two pads are defined for the media entity instead of one
> > >   and only one needs to be connected at a time;
> > > - the pads currently match the fwnode graph representation;
> > > - links are created between our pads and the subdevs for each
> > >   interface and are no longer immutable so that userspace can select
> > >   which interface to use in case both are bound to a subdev;
> > > - fwnode endpoints are parsed and stored for each interface;
> > > - the active subdev (and fwnode endpoint) is retrieved when validating
> > >   the media link at stream on time and cleared at stream off;
> > > - an error is raised if both links are active at the same time;
> > > - the MIPI interface bit is set if the MIPI CSI-2 bridge endpoint is
> > >   active.
> > >=20
> > > In the future, the media entity representation might evolve to:
> > > - distinguish the internal parallel bridge and data formatter;
> > > - represent each of the 4 internal channels that can exist between
> > >   the parallel bridge (for BT656 time-multiplex) and MIPI CSI-2
> > >   (internal channels can be mapped to virtual channels);
> > > - connect the controller's output to the ISP instead of its
> > >   DMA engine.
> > >=20
> > > Finally note that the MIPI CSI-2 bridges should not be linked in
> > > the fwnode graph unless they have a sensor subdev attached.
> >=20
> > I'll leave most of the review to Laurent and Sakari, but I'm not quite
> > sure what you meant in the last paragraph. Did you mean that the
> > MIPI-CSI controller in the Allwinner SoC should only be linked if it has
> > a sensor attached, or did you mean that any MIPI-CSI2 bridge cannot be
> > attached to the controller?
>=20
> So the use of plural was a mistake and your first understanding is the co=
rrect
> one: if the bridge is linked to the CSI controller in the OF graph but the
> bridge doesn't have a sensor attached, the CSI controller driver will fail
> to probe, as far as I could see.

I'm not sure it's reasonable to not link it in the DTSI then, we'll want
to reduce as much the boilerplate from the board DTS as possible, and
the MIPI-CSI controller is always there anyway. However, we should
definitely have it disabled if there's no sensor, which should solve
your probe issue

Maxime

--45hcbhhgcfnzxspi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8e1hQAKCRDj7w1vZxhR
xUmfAQDrnEGoBdbQg8pcpjrHuleZtMVcXIe+BVlxHlRQPOZFXwEAjruXhWd67Q5L
aw25nh4z4WBzD8T8dUj7t5A/R28hows=
=crGk
-----END PGP SIGNATURE-----

--45hcbhhgcfnzxspi--

--===============7331210235161441802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7331210235161441802==--
