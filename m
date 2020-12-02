Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7C52CC13D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 16:48:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 940888795B;
	Wed,  2 Dec 2020 15:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ne89qdHRWC1O; Wed,  2 Dec 2020 15:48:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 058E587958;
	Wed,  2 Dec 2020 15:48:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F3B31BF3A0
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 15:48:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7BF8787146
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 15:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wnhSL6L5-crv for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 15:48:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB8CB86E85
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 15:48:22 +0000 (UTC)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.nyi.internal (Postfix) with ESMTP id DFCA0580332;
 Wed,  2 Dec 2020 10:48:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Wed, 02 Dec 2020 10:48:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=uz5tx6JJZjQqRBY1wNhOnZvzzfm
 C/Lfn/oSOwP2IkT8=; b=Z3pWWe9FSw50pShNnh4c7pQV/o2Gg0E1ADAczlTSMn5
 qjjMftjnfqlZ6X99WP7By8v1UydluJiVE3idiPJte5wulTVPLtQ7fRN3EfsVImlV
 SsgomEyE6vf8tgDSu32m0U2yguzqmOOEhaSEIQ8ZZcUYPkLcImqpOF990inWdV9I
 npSB+bNDS21WYK7FSuOthFRFC9ABjyEkOSsF5o+2bryBXKnKj2P+75+I7NVaDgDf
 ELYXaBRPWr7+3wWzcbi1auITTDoXQCTW2yvfmVkwStNnlWCcnvVcF/mcBA2SGb9u
 WpwkTQxcFewvo8oog/+StttyZVuF2P+unDC4ASyqe7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=uz5tx6
 JJZjQqRBY1wNhOnZvzzfmC/Lfn/oSOwP2IkT8=; b=Xq6cywrRM5HSQp9rRf29V2
 w1sPoPUakfLix8M1JdprS/Jxt8aXInmyUkoxhzqyXzU9S5JJsHHlrOpfJMdzdHkR
 +/UySKhVaOUJdb9qMHHRzy3XSseyTVPEr/s+SYi0gKnxP7Z+JSIWc7VqcXkvMFFZ
 MsS6onf6SPTEdBZGglLb5Kk7wHnys6KXz9nN1Gf9cWap2UmcuFMgTyRjW1YrfqHH
 U4m9PGIjVKqubZLd6xV3MgX0UuytHz1A7Srb9DydmTFs74IbVX3kcmmfPODja43G
 qntePIFr3c3l1yx2W08tVYy8OMRVhFzsLnN04PEJ0/gy+BKfDCJebWwIkHWmyvwg
 ==
X-ME-Sender: <xms:Q7fHX963KcXgoTuiNX4nObysjv7ItUz5S-lsbt0HbkyOtzMerpny8Q>
 <xme:Q7fHXx5-y9Vq-QwXXLW3Okn8RahCNj_HSeb010NK_vXLCoiNjvoVGB6YiTKnWKvnI
 T_-kIRdEDV2uB7WOV4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeigedgkedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Q7fHX5e0hZDW8fBBYxUnRkCYn1JcIeUEiYdkIRomGrWaVeXtKnNCAQ>
 <xmx:Q7fHX1Ccge-lPO2wbq36lHMq7sthC8k3fZT3ij0LUtbOyZwtoJBkBw>
 <xmx:Q7fHX8-joJNh5fkpKbIw2aKuNhb1aDSH1z33sv918ZvyzLUrgGMdQQ>
 <xmx:RbfHX2YWxqMm1yOkSKXdh9n2RCPvbRE93BjJ1U-dAPsZ5lKRVnP6sA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 66015108005B;
 Wed,  2 Dec 2020 10:48:19 -0500 (EST)
Date: Wed, 2 Dec 2020 16:48:18 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 13/19] media: sunxi: Add support for the A31 MIPI
 CSI-2 controller
Message-ID: <20201202154818.bf72m2firemyc5ve@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-14-paul.kocialkowski@bootlin.com>
 <20201201122038.bxk3vu2w3mg43ayq@gilmour>
 <X8eoX+M650sMXqpx@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <X8eoX+M650sMXqpx@aptenodytes>
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
Content-Type: multipart/mixed; boundary="===============5442515873569150501=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5442515873569150501==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kkjqa5btqozg6oqw"
Content-Disposition: inline


--kkjqa5btqozg6oqw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 02, 2020 at 03:44:47PM +0100, Paul Kocialkowski wrote:
> > > +static int __maybe_unused sun6i_mipi_csi2_suspend(struct device *dev)
> > > +{
> > > +	struct sun6i_mipi_csi2_dev *cdev =3D dev_get_drvdata(dev);
> > > +
> > > +	clk_disable_unprepare(cdev->clk_mod);
> > > +	clk_disable_unprepare(cdev->clk_bus);
> > > +	reset_control_assert(cdev->reset);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int __maybe_unused sun6i_mipi_csi2_resume(struct device *dev)
> > > +{
> > > +	struct sun6i_mipi_csi2_dev *cdev =3D dev_get_drvdata(dev);
> > > +	int ret;
> > > +
> > > +	ret =3D reset_control_deassert(cdev->reset);
> > > +	if (ret) {
> > > +		dev_err(cdev->dev, "failed to deassert reset\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D clk_prepare_enable(cdev->clk_bus);
> > > +	if (ret) {
> > > +		dev_err(cdev->dev, "failed to enable bus clock\n");
> > > +		goto error_reset;
> > > +	}
> > > +
> > > +	ret =3D clk_prepare_enable(cdev->clk_mod);
> > > +	if (ret) {
> > > +		dev_err(cdev->dev, "failed to enable module clock\n");
> > > +		goto error_clk_bus;
> > > +	}
> > > +
> > > +	return 0;
> > > +
> > > +error_clk_bus:
> > > +	clk_disable_unprepare(cdev->clk_bus);
> > > +
> > > +error_reset:
> > > +	reset_control_assert(cdev->reset);
> > > +
> > > +	return ret;
> > > +}
> >=20
> > I'm guessing you set the __maybe_unused attribute because you're using
> > SET_RUNTIME_PM_OPS, but what would happen if runtime_pm isn't selected?
> > It looks like you don't handle that case.
>=20
> Indeed, __maybe_unused is because of the conditional definition of
> SET_RUNTIME_PM_OPS. If CONFIG_PM is not selected, then I guess the contro=
ller
> wouldn't be powered and wouldn't work. So I should definitely add a Kconf=
ig
> dependency on PM then, right?

There's two ways we can do it. What you suggested is one, the other is
to have something like our SPI driver to call directly the resume
function if there's no runtime pm support.

Maxime

--kkjqa5btqozg6oqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8e3QgAKCRDj7w1vZxhR
xTh1AP9duiS3skBTouB0HbqCTA8nOkx0lRrOPWEGWu+5e8k5VgEA0QgCH0eQIVFH
JiC/huo/36twoas2fjPbzkTE/g2VhQw=
=EZvC
-----END PGP SIGNATURE-----

--kkjqa5btqozg6oqw--

--===============5442515873569150501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5442515873569150501==--
