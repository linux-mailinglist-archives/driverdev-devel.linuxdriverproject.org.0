Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00942A26C7
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 10:17:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6288187366;
	Mon,  2 Nov 2020 09:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qnFOppSJVJSH; Mon,  2 Nov 2020 09:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99B5587340;
	Mon,  2 Nov 2020 09:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE5D31BF27F
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 09:17:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA5C3873EB
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 09:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8MBwYXuf9-3 for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 09:17:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71DEA873A7
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 09:17:43 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5882E58016F;
 Mon,  2 Nov 2020 04:17:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 02 Nov 2020 04:17:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=tRRcWPfLlcFd2I7QGyWsS+7dvdI
 OTZe+96Cma1Ta4CQ=; b=cL3G91KomNggWKjP+ee8mXpLK4G1z9pJ8bTx5eXKhis
 GamLNW5oJtfQL0KtTKdk4XkprWZy/NilCX9Oy4p0HgelbPXJ4UUmx/34oIMv0ly1
 LN8unJdsZ05w4OZpPpO1R5o3JqESgXEEXJ7h6bQep0+tWmBwunfBU5E2JKqpCABa
 GwSBhcMVfJaSut73Z493aIU/QumPfhV+8YapZbkfC5sMOVSGvRQkx5yUkhB5ZnLc
 +jpyblW9JgwtPgqgQMSs4u0SWqvE9a582+EMUeAu3/T/KG3ju2Cn4Cn1dlgVGr7R
 q36fwpDgg/WtYNZC+EUYIk5nX9gTB6nKh250LgSG5VQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=tRRcWP
 fLlcFd2I7QGyWsS+7dvdIOTZe+96Cma1Ta4CQ=; b=l8qcekuw3PsZNepLpODZWn
 LhdpoORDReM4sQkchoftknnU6XmVE/up2/vmwIG3v0gYyejTScLCD1mt5MkfgDyQ
 l9431eQQOP6dbWZdljCqyesRT5DO0nL7bNmI5UfOUB/oECEyR7pN9F8SeECBRNd7
 CWyfsEJ5QQvYCu2W5gH9ay9IJHSkjz2B3XhXJiltRIK+hnvaAN3fbdehd2br5Grg
 ksHwf5gj0R9ttQdkCQRl+R41qnGZxmRIjqC/fV7rVQ5ErtQ0vg5h14nbyC+gph2H
 CYRhLqvU2dCG1yBIs2cTPCp25H7bcd+ZDaVVCVJfs77I3WlW6tSbYe5altqJxvWw
 ==
X-ME-Sender: <xms:s86fX658A0K5A2ZGjNJbX175WWmBJjW4YsGIk5ePGuKNn-wqSnVEIg>
 <xme:s86fXz6G3lmZpysw5zHmrDIm0lYhEOVKeUBriRN5hnKEOHrP6Ce1ys1ejaOD2jQDk
 qpnSZ5XILFBv1zFgsc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtuddgtddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:s86fX5c046zh68969VRsxzsJ2VniePom1osuz3j_uGOQykv7jwxuEw>
 <xmx:s86fX3J6FHCE70poP38xr42k2BHuE3xzZwfaz7X7f5h71VYZmCRwbA>
 <xmx:s86fX-JSFhgTZx8GTIyFNN5fTRrVD3kwW-eMi0k0D0uUYqaDmuOGmg>
 <xmx:tc6fXzDZ7JmADY70-TxDUkQx84AW2roweM4r__W7SuSpQDJF2YfQTg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2FC423280060;
 Mon,  2 Nov 2020 04:17:39 -0500 (EST)
Date: Mon, 2 Nov 2020 10:17:37 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 00/14] Allwinner MIPI CSI-2 support for A31/V3s/A83T
Message-ID: <20201102091737.pszii6znryssyh2e@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <d15d724b-6af7-3e51-1316-7bdde5a42c60@collabora.com>
MIME-Version: 1.0
In-Reply-To: <d15d724b-6af7-3e51-1316-7bdde5a42c60@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============3513126518147590190=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3513126518147590190==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g7kesbwqqdzmkw7c"
Content-Disposition: inline


--g7kesbwqqdzmkw7c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

On Fri, Oct 30, 2020 at 07:44:28PM -0300, Helen Koike wrote:
> On thing that is confusing me is the name csi2 with csi (that makes me
> think of csi vesun6i-csirsion one, which is not the case), I would
> rename it to sun6i-video (or maybe it is just me who gets confused).
>
> I know this driver is already upstream and not part of this series,
> but on the other hand it doesn't seem to be used.

It's definitely confusing but CSI is the name of the IP, but it supports
more than just MIPI-CSI :)

Maxime

--g7kesbwqqdzmkw7c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5/OsQAKCRDj7w1vZxhR
xf40AP0Yj4OpO5elQY4ecnN07dkmmp1tsjYm1SISQvGp6/ForwD/QpGFBl/5JOHe
7sDR7zxwSn34cDklaiJF3Yw2jWuu6gA=
=ETbw
-----END PGP SIGNATURE-----

--g7kesbwqqdzmkw7c--

--===============3513126518147590190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3513126518147590190==--
