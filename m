Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E662299318
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 17:57:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7F2C86890;
	Mon, 26 Oct 2020 16:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c9aThJHDuif6; Mon, 26 Oct 2020 16:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12BCD86655;
	Mon, 26 Oct 2020 16:57:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E17D51BF41F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:57:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DD81B8700E
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kRPR559D8nt0 for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 16:57:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F59086FFE
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 16:57:46 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 722705805DA;
 Mon, 26 Oct 2020 12:57:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 12:57:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=R5DxJpEpfR/FW79xd59XCA8dEJT
 OWvdcJkuzuv1Y+Lo=; b=oPS/JxyZNriqi1c8Sf05/35fbdqIlBB2+FPamOVKJPK
 p1x97j3MTQ/AIm5e6noJUgWC8rNBfsD0HWDqTdNz1WoaR6vhJ6CFPQXMxXa1a5fQ
 PdYCFq5VqNa4tVNm0zMIp4pYT9I6XwmjiDhRDOwLk4xmuJaD8SCD+7JjSDELOkk0
 WZX3pdhLX+C4wZ/RqSyuJbPg451Z8WLr2V67I2vOIAi+1nCEuHyYlD89UGRullt9
 79uC/wA0AfKiQfyR36cuN/3WzToQkiD2+GYD0122pe0WZMQVkcFU6kXJaYPIEY5t
 HyW04HXXoSU+Xt4xAd2n03AyaNnLLuX7agP4uU8Fm1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=R5DxJp
 EpfR/FW79xd59XCA8dEJTOWvdcJkuzuv1Y+Lo=; b=LtW8O5nYQDn/QftakgDoy6
 T1uepHHybQ3S1azm4ffT315YUyZGcgJ7ADQVXluRgEwPMidbiSI3E0mIRS/BdS6s
 U1f5BICLLE7RAc1bM2BaXXMJJLkiaxjFREYm5ad2/R/OQgA8qFRgN3bzqLEC9PtF
 hCsfUdywcRLG+Bpx/SU6fhJqokYxFk/eBk4rZzvQWu/rUsllmvgon7odUqcfnfYx
 JlPXFaYeMtNsGDgJs/Pxghii4lwCKSyMYgWIUnyveOJdmu3+SgCQvOM01aUuWaQ3
 etBIkwMR4I8Cngy89I5HvEjOU4h6SaWcjTJImX5bsbT6rQ+6HlMEw5f8nMdKZIUQ
 ==
X-ME-Sender: <xms:CQCXX5LIcTHeiTSK2yjkNj-V_b4RrdcRgiKqi-0-UOst-XfzPVaNOQ>
 <xme:CQCXX1KuMxLUHAXvzgg2stZEh4UxCwP1dCYBtkkoJC-yCy6Rf3Lqam6PCxLjDRSpf
 kvAFlVSgMg--I5x7W4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CQCXXxs9l_WpAqziDzWTVFwjm3y1jlWO2qd7GrOnMJReI98XjbI7cA>
 <xmx:CQCXX6ayEnYqQ6PQ9O0_ndryjaAVvUovVr2TtSSHXgXYqN3IkHrgGg>
 <xmx:CQCXXwb5wvNPRZzQO0SBPiDEeq-dzT1ZsY1LKr0DlnhESSfZF3hBqw>
 <xmx:CQCXX9SQ4TwIth8QwPEBLkpDP4rNnGyAWnThQwe8WI8azr9j7AFJdA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EF22D3064684;
 Mon, 26 Oct 2020 12:57:44 -0400 (EDT)
Date: Mon, 26 Oct 2020 17:57:43 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 14/14] media: sunxi: sun8i-a83t-mipi-csi2: Avoid using
 the (unsolicited) interrupt
Message-ID: <20201026165743.mhbt6tf27pf7pkuk@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-15-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-15-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============5488306367095604028=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5488306367095604028==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xc2pnay3bnlgphdg"
Content-Disposition: inline


--xc2pnay3bnlgphdg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2020 at 07:45:46PM +0200, Paul Kocialkowski wrote:
> The A83T MIPI CSI-2 apparently produces interrupts regardless of the mask
> registers, for example when a transmission error occurs.
>=20
> This generates quite a flood when unsolicited interrupts are received on
> each received frame. As a result, disable the interrupt for now since
> we are not currently using it for error reporting.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

This should be merged into the driver patch

Maxime

--xc2pnay3bnlgphdg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5cABwAKCRDj7w1vZxhR
xU+pAQDalV1qN1k6i35AidOm2HFNWPOBNI8mjj4eoTlsU/J3cgEAz+Q8O1TIRjWw
Rl9dTMXuupxebAMgby+v5I3QWitE8QI=
=23gw
-----END PGP SIGNATURE-----

--xc2pnay3bnlgphdg--

--===============5488306367095604028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5488306367095604028==--
