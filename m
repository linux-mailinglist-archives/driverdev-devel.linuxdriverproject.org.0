Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 456362EF029
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E3862E11B;
	Fri,  8 Jan 2021 09:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPiiPiSKwbvd; Fri,  8 Jan 2021 09:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 54B912E11E;
	Fri,  8 Jan 2021 09:54:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 473AD1BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CDA722E11B
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hpmJwY3yILLM for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:54:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id 045F4204FB
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:54:21 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 00DCC58041E;
 Fri,  8 Jan 2021 04:54:21 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 08 Jan 2021 04:54:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=qFTwwPWhKJO520sKUrFpnodDQuG
 Jut/CPBUcCAKJFcs=; b=mvZIxuMquZkzNjQBLGRcTx/llfQjqbhkwdMbeLi9IAt
 jaIqRPenLWuy/7K1YENeqxJDr2e9rEUW6dJ5LgM2DHIWwHViI9nV5V08Tvd5dzc6
 g1E7vxxHhGsBo7RnNoofY99QKRVDQ2GNMWZLTSrdJxGNdndAsdQNDTlc6bmxvArX
 l0QVezpufoRfph8UJzzdP3uuDfsh90jVJjBCCNHXp50cEwtigUnwKCQ5w7R/GuIT
 8Zz/bBiQwqBeStwv5Bt6QfEpxIhqqzkSI0XFhQJW6To/nODR19TICXrbxTyxRSrV
 WseESjK98MIYt1IbkM3TZuLo1Hs4Yqv4/yRXff/J5Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=qFTwwP
 WhKJO520sKUrFpnodDQuGJut/CPBUcCAKJFcs=; b=M0H1o7A21x102lSCFpSNf5
 wgLOCHZtZCMzWZzLasX6GXqlMIUEagnKWmEYfGgALAILX2UWCAJ00+mFS49S1mXn
 9aXcL43mcn92lISvZrDPkDNtQix3jkUN+XXc3CY8aVO7ezNZi+V08CpGqCP+p/Lt
 97kfH2B9Hayk+1UduSWDn4CMjaXgleu6SRbH7a5NCbJqSLf06MpTRS2XG8lyCqP8
 AAAhh1dqNQYgU4WgXYtqyyN7crPmIYaBmP45IuKKKyqrZNBr5P1pxv4Dv1+4ksMR
 cQoQuY6+M9uge2kz0lwSgFL96X3jmEs8XA3ObFBmXd6fPkEH1/xAczoBV+FanPmg
 ==
X-ME-Sender: <xms:zCv4X5fpnpKuPqDPURwfO1xEPS4FIK6POhjefcQPttdIFLHttWOqkQ>
 <xme:zCv4X3M7scSBBdkicArYWHW0URm8rjX9xbz3YtDNCvGrbPV2nxo7UT4Utse1gFjSu
 pGcw9GGWNrmDD0mvw8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:zCv4Xyj6Q3q891_P1j7zVR-d7YMJSaJmmjNvkljrLXKmezXP8nLMjg>
 <xmx:zCv4Xy_fdLPVICkT81--xoR9GBdph-ehHJ4KRcwMk-wTl2bItdaUsg>
 <xmx:zCv4X1sF3yY7ENGX9guWMlmWwRkoH8mZ_Dylw8kBuqIU19M1Ek22nA>
 <xmx:zCv4XyWjejkI8mqWuivjOvlf08XDfADC28MTYZpzjHRK_blj8Htmhg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1387624005A;
 Fri,  8 Jan 2021 04:54:20 -0500 (EST)
Date: Fri, 8 Jan 2021 10:54:19 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 09/15] media: sunxi: Add support for the A31 MIPI
 CSI-2 controller
Message-ID: <20210108095419.quegerk52wwhrxye@gilmour>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-10-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201231142948.3241780-10-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============0688868059092369454=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0688868059092369454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cktvjn6jbtsbwfff"
Content-Disposition: inline


--cktvjn6jbtsbwfff
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 31, 2020 at 03:29:42PM +0100, Paul Kocialkowski wrote:
> The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 bridge
> found on Allwinner SoCs such as the A31 and V3/V3s.
>=20
> It is a standalone block, connected to the CSI controller on one side
> and to the MIPI D-PHY block on the other. It has a dedicated address
> space, interrupt line and clock.
>=20
> It is represented as a V4L2 subdev to the CSI controller and takes a
> MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> media controller API.
>=20
> Only 8-bit and 10-bit Bayer formats are currently supported.
> While up to 4 internal channels to the CSI controller exist, only one
> is currently supported by this implementation.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

CHECK: Alignment should match open parenthesis :)

Once fixed,

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--cktvjn6jbtsbwfff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/grywAKCRDj7w1vZxhR
xRieAQDYlQLLBuqwVmiQqDlsFoQ09Uuh8jyFYXAmj8WIkfTjDAEAvjYZLZ9aOb5O
fPvRoec045mGvORmiFAoQaoCwtvbCAI=
=Ne1y
-----END PGP SIGNATURE-----

--cktvjn6jbtsbwfff--

--===============0688868059092369454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0688868059092369454==--
