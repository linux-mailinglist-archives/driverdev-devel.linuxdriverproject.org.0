Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3CD2A26DD
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 10:21:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38E10204CE;
	Mon,  2 Nov 2020 09:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5ywo0ev3sFT; Mon,  2 Nov 2020 09:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8EADB204AD;
	Mon,  2 Nov 2020 09:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130FE1BF27F
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 09:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F79B868FE
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 09:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ezWyjljzv4OL for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 09:21:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 86359868DE
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 09:21:15 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 471EA580098;
 Mon,  2 Nov 2020 04:21:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 02 Nov 2020 04:21:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=Io+FlZjpTIADTIzIW74U/CyYabR
 lDgPOCEmLfu2QH3g=; b=qb9LVfNuiocCc5g3UUl8IPfkntSozd6qT7Sjrjx0tFo
 4j1JdNHEYnblDITN5DgdPReu0/HzZss+XJSUrKrBVqFK0QMYJdbkeTPoebXS71Kk
 8Gaex6NAxHWxCkW1Rno52RSemsIWEJ+BwxDpGvW+AiVzaBvsHHY1bHGufvupmaRx
 1+3tUsW2Au1TvM5EZR8UmZzRzxXUb9tOdpr/oYKWgXDUIgiRaTsFrcw3ffK6EeAM
 x5o1OoT0t14L5JePEiSj7xAQQVLvmaQBaw3CJn4e4QzuOjSrBOyYCZXCkI6NWx3V
 EGC89ga7xIDALXACNjfvdnTdQVUAniArhP7Nc4F4KCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Io+FlZ
 jpTIADTIzIW74U/CyYabRlDgPOCEmLfu2QH3g=; b=MMuWHDtj84vswQqq7yMhRs
 I4Hi/O0pIbQAn/PwSSYTJOXHy/nJrv2FnTS5LJAIdTq3MD/mlaPzVP+gBqAIr6hJ
 InQAzHpAT9JojXHU5JV9oBq9kZlNGEBJzaRyc0dEl4lRwwRf63oCOprmbPo2joqx
 NGmp640Y3dHKQ3rHn9VxTD0lJQkt9grNvv3UZomq5znzKXdo4yXE97LfANR7Gvvb
 N+6n/M4GFO3wqsNzSTd5tnM4eT0hRrSIJgm1V60wwGBHQ4Uh+EnhXiT1vgawuM2d
 +shTWS/v6VqIaQkKdRZMfhvE3ac0s6Ru+qHfnjJCC+T7VUFS56HOaU1iMVYFOBGg
 ==
X-ME-Sender: <xms:iM-fX8KP1DzyxIxewYJWDTSozS9-gVoDmXPk2zOY6_ODB4LqokrUVg>
 <xme:iM-fX8Kdd-q8qUPTHMcV8g0MKNDgKJqCXQVGuU-Ufu7bshQYH1qaSvo97pFQu1g8s
 fPiZRlScXIuKC4f7mA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtuddgtdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:iM-fX8vP4u6C1aWqNQiiqi2DAvv04qCNBGo_I-w6ohgs_HhoVhV1KQ>
 <xmx:iM-fX5ZHSlsqCtftC5cEMAkmh35AXyJs73_qu1p6tQH_jnQfxfVHWQ>
 <xmx:iM-fXzYDfen_Fj9YFR1M3j392v6-Ar4yeTkBirbtJXK5tQyFcM30JQ>
 <xmx:is-fXwQd6WJuN4-XtgH2ANeSZmZI_z7g2sEa9DGSctnxyKReorADvw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 390F83064674;
 Mon,  2 Nov 2020 04:21:12 -0500 (EST)
Date: Mon, 2 Nov 2020 10:21:10 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201102092110.ro6a456lvbrktwoz@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
 <1a3a615c-a058-e282-2dbb-c99dfa98be68@collabora.com>
MIME-Version: 1.0
In-Reply-To: <1a3a615c-a058-e282-2dbb-c99dfa98be68@collabora.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 kevin.lhopital@hotmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3875239339399896067=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3875239339399896067==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r6wmi6wvpuneeypr"
Content-Disposition: inline


--r6wmi6wvpuneeypr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 30, 2020 at 07:45:18PM -0300, Helen Koike wrote:
> On 10/23/20 2:45 PM, Paul Kocialkowski wrote:
> > The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 controller
> > found on Allwinner SoCs such as the A31 and V3/V3s.
> >=20
> > It is a standalone block, connected to the CSI controller on one side
> > and to the MIPI D-PHY block on the other. It has a dedicated address
> > space, interrupt line and clock.
> >=20
> > Currently, the MIPI CSI-2 controller is hard-tied to a specific CSI
> > controller (CSI0) but newer SoCs (such as the V5) may allow switching
> > MIPI CSI-2 controllers between CSI controllers.
> >=20
> > It is represented as a V4L2 subdev to the CSI controller and takes a
> > MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> > media controller API.
>=20
> Maybe this is a bad idea, but I was thinking:
> This driver basically just turn on/off and catch some interrupts for erro=
rs,
> and all the rest of v4l2 config you just forward to the next subdevice
> on the pipeline.
>=20
> So instead of exposing it as a subdevice, I was wondering if modeling
> this driver also through the phy subsystem wouldn't be cleaner, so
> you won't need all the v4l2 subdevice/topology boilerplate code that
> it seems you are not using (unless you have plans to add controls or
> some specific configuration on this node later).
>=20
> But this would require changes on the sun6i-csi driver.
>=20
> What do you think?

Eventually we'll need to filter the virtual channels / datatypes I
guess, so it's definitely valuable to have it in v4l2

Maxime

--r6wmi6wvpuneeypr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5/PhgAKCRDj7w1vZxhR
xdTqAP9BNW3DOvNEhXCUns3+K6kcuMjRRnDvKoZkb+YtDDRnxgD/VYACQnV5UMH0
6qUJuIMi3BvClNZUn19ZMhW3WnIMkwM=
=3I1e
-----END PGP SIGNATURE-----

--r6wmi6wvpuneeypr--

--===============3875239339399896067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3875239339399896067==--
