Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B814A26E0D9
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 18:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22BF587156;
	Thu, 17 Sep 2020 16:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ajuoCZ7oorQ0; Thu, 17 Sep 2020 16:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCB168714A;
	Thu, 17 Sep 2020 16:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84F3C1BF37C
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 16:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E70587917
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 16:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gviPew65rla7 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 16:37:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60C7E87666
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 16:37:09 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id EC4FE51A;
 Thu, 17 Sep 2020 12:37:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 17 Sep 2020 12:37:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=h7SdjkeO3jNCS/5ABpoNoHTBuVI
 Z3+T7KqCv1t/PuWo=; b=iunaG6uxOLgrPGy5e1t5auTmohTM2aMxt+pmo9zphB0
 +QetciHJjVU67aEz6qt+EDLFGLhFeV6zFqRYlE6y4GBcxbHarrdRZc2SC3SJepEl
 v9KQg0skJ3vnwHL1mssEcPvwTEsKYy4cuga4XHo0bCeXrF+bW7SUEg6iwPy58amA
 G+tgIQUgGF5f49lnM0/pZ5KyOOquD37Mfboopf/DGhsL+ZtQG7LD8QJp8ktUJuG/
 i4QSbWtrJJZNNuKuREq7QHCW2j5LsIeQMBYA2PccxKliGGAmW7cvDyHZw8tiM4LW
 a65xwzLRfFpleP+aoLWhKFgvppMe3KodNMx8vRKxgDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=h7Sdjk
 eO3jNCS/5ABpoNoHTBuVIZ3+T7KqCv1t/PuWo=; b=frqEve+JtHqY12AuwrEwxh
 HnX+5Y92mJ/21XRmYMhsqQ2L0DeFx/k1Zhdek1+NP7BFjW+hDLa2871RTY2zB8NT
 VsQyo6NkhsUH2Xr83oM4b3days2UrCrVATFTepf5led3mI8bkO1fE8apAZLdnFj1
 yua9J2eu109zOm7EPKWw/gENPmzmkz4W3ysbGMsgQaJmuUNN/weDdsubl/m2obc5
 /O0nFJi+k/orbJWdKsWG1Tlh9Lwe/eqOTdvDTHGKXvXvTG+ipvf5ejYmNOAGoQZw
 1xJ4LM3L3saUutpggCGyiU8ea0JtilO1dDHYkzjYX99ivfMWBub0EHr87roR40KQ
 ==
X-ME-Sender: <xms:sJBjX-IKEuWTVO7Qio1L6WurpElaajG3D7Ydfq3_KtuK2mHVqWKOug>
 <xme:sJBjX2LKwwoUCoP1ddG7z47ayNpCf3sFd_629ZIJ0Cc5PfawthFNliWbYkZSnZlkj
 WFVGWcamJ0oury_Xf8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrtdeggddutdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sJBjX-uP6QI4ZALAlssAnYzInWG63vVmd-Bq9khQJlvdySn1NwAjvw>
 <xmx:sJBjXzbVRtCyuBwP07l_AEduK8w922Rx1VgF9lxaybUAD1So8YyEzA>
 <xmx:sJBjX1YQw-84on2q8v0dku-kcJw-qsIqc-8SK-NjfskYHQwqI0AJyg>
 <xmx:spBjXyRkBp7WnVSGxiez1mEWwAdlOjDICJUmX_uKGwXllvIRETSfx3W5pog>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 241163280065;
 Thu, 17 Sep 2020 12:37:04 -0400 (EDT)
Date: Thu, 17 Sep 2020 18:37:01 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 0/5] ARM: dts: sun8i: r40: Enable video decoder
Message-ID: <20200917163701.vmxbxpaztm4kyduf@gilmour.lan>
References: <20200825173523.1289379-1-jernej.skrabec@siol.net>
 <20200827151914.copcle3xjn3ek6p4@gilmour.lan>
 <e9d108ee-29c8-7a34-16c0-f9fb2b788f25@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <e9d108ee-29c8-7a34-16c0-f9fb2b788f25@xs4all.nl>
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
 Jernej Skrabec <jernej.skrabec@siol.net>, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8256686088883074729=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8256686088883074729==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wnnnti5ad3adpfz3"
Content-Disposition: inline


--wnnnti5ad3adpfz3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 17, 2020 at 10:33:39AM +0200, Hans Verkuil wrote:
> Hi Maxime,
>=20
> On 27/08/2020 17:19, Maxime Ripard wrote:
> > On Tue, Aug 25, 2020 at 07:35:18PM +0200, Jernej Skrabec wrote:
> >> Allwinner R40 SoC contains video engine very similar to that in A33.
> >>
> >> First two patches add system controller nodes and the rest of them
> >> add support for Cedrus VPU.
> >>
> >> Please take a look.
> >=20
> > Applied all 5 patches, thanks
>=20
> Just to confirm: you've taken patches 3 and 4 as well? If so, then I
> can mark them as done in patchwork.

Uh... Yeah, I did, but they were definitely not mine to take... I'm
sorry, I'll drop them and you can merge totally merge them :)

Maxime

--wnnnti5ad3adpfz3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX2OQrQAKCRDj7w1vZxhR
xWGiAP44ziQw20tV2YoN0wiBPi77hkH/koRrpfYtnYTwmUEV6AD/euikZFS19Mu7
DfzMBKBAPCIolO1Cbon5d/3aOTFhmQA=
=eTc6
-----END PGP SIGNATURE-----

--wnnnti5ad3adpfz3--

--===============8256686088883074729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8256686088883074729==--
