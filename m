Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4453E2C9FF6
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 11:39:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89AA1880F3;
	Tue,  1 Dec 2020 10:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPbwSMVwt5Rb; Tue,  1 Dec 2020 10:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7004088089;
	Tue,  1 Dec 2020 10:39:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81DB81BF2AA
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 10:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7BF61874B2
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 10:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eIpWQypEBBY2 for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 10:39:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB87986FDB
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 10:39:47 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1CF73580621;
 Tue,  1 Dec 2020 05:39:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 01 Dec 2020 05:39:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=mNpYyfmOtgskFUN5EMvALnOTS4j
 UKSGA8Yuv/4b6WkQ=; b=tnOtDlIrd4BNIqDjty2uqhJX+4DveCwYhCJby0gO9hX
 eCZe8NUzDHsKgJK/qm7dRrD0FTQt0YzihXUiF8EqRGkOLLnkb9LEc8huSWlOa+nM
 v8jPe9iLVlgrJdNs0GCyjWEv5Mb5vWFX1TS9t39trq4RmGFVNkUgLvFpkDu4HUEn
 EZ+bPBedpleV6fIf7n/5/+I46TwCVm+LOkesrEcvec/0kOHd4GpxuI+esqG58duz
 wMOIjj2jirDjOrZ1RA1nGqCX+mAxjco7Fp7u16mS7/8eC38/j8fnmNyz+1hfheBq
 4M8n9Y4H3Ds+TpOO0uz5vozrE8d6eB55Sebq3BcBSYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mNpYyf
 mOtgskFUN5EMvALnOTS4jUKSGA8Yuv/4b6WkQ=; b=Ti6zHCPF07x+5CB6vDoAQ3
 K7P0W1OZbp05uPdqJ8J4s5/llTyDNIDafoi4XwAsQHzuhgrGoRz9mWo0EMy7WdAd
 WvA+NFFZ1Sm+BWHbHDxiTbgYs8EAs7VX5jCZNTiEqpBbW+8kSbo4jDIkG88F6EO2
 o+i3FDyZYHo+m0HJPunosHGT1hpyZs4DYSqTJznumBv5oigV8uJBypP4kv4o4WPW
 2GYXPBM1IBhtTsHeRoxXUGRApG+7lafBvZgLzDqjefIIFRBezwG8MvQiCmeKJ16F
 InuetreDcweIV6s0kKNlaqGN8zVVYm3/Qa+YnVE8/PIhQvOFAO6irN435i1Tw4WQ
 ==
X-ME-Sender: <xms:ch3GXzYK_xD4KCukpJOOAtq3mhiKiICt-vld6f1xFGieJhURMl0FxA>
 <xme:ch3GXyb5geXtf893lj37YrY1kkNONYJ-ifjDIemN9-Vg8Hnsm4cAmJ065-DDi55eo
 XIqEMpUNb_yHhGj1OM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeivddgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ch3GX1-Rlxh1p7WlPEUGmwrmA5FFmy54drZ03fd3BdvF8rVi_edCVw>
 <xmx:ch3GX5qrm0_Aa0aTGqMkdYAJuyLKJKoAyCGF93d0N_VZAjOh6rg7GQ>
 <xmx:ch3GX-owsLsxWLBIA7HVucXeqbYX30gzVxevef6bNSLnmVTH2nyiSw>
 <xmx:cx3GX2DIR20KNnTZ9nZfzeVdoKNKvwJl8DC0kK_oNAwrcswB-pN2xQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5543F3280067;
 Tue,  1 Dec 2020 05:39:46 -0500 (EST)
Date: Tue, 1 Dec 2020 11:39:45 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 04/19] media: sun6i-csi: Use common V4L2 format info
 for storage bpp
Message-ID: <20201201103945.3wqzmcm3htamfwld@gilmour>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-5-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201128142839.517949-5-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============5933886682430860590=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5933886682430860590==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ylwcdbn4m4aso46x"
Content-Disposition: inline


--ylwcdbn4m4aso46x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 28, 2020 at 03:28:24PM +0100, Paul Kocialkowski wrote:
> V4L2 has a common helper which can be used for calculating the number
> of stored bits per pixels of a given (stored) image format.
>=20
> Use the helper-returned structure instead of our own switch/case list.
> Note that a few formats are not in that list so we keep them as
> special cases.
>=20
> The custom switch/case was also wrong concerning 10/12-bit Bayer
> formats, which are aligned to 16 bits in memory. Using the common
> helper fixes it.
>=20
> Fixes: 5cc7522d8965 ("media: sun6i: Add support for Allwinner CSI V3s")
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--ylwcdbn4m4aso46x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX8YdcQAKCRDj7w1vZxhR
xcLgAP0TaONkl3ohyt3psmWP+fQcUXRtgDol6+pxPgE1Wlf/KAEAg3ZrGC+8W6f7
fRggrAiQbjn/SbQAq0gvY+CQIVI/7Qc=
=rmPW
-----END PGP SIGNATURE-----

--ylwcdbn4m4aso46x--

--===============5933886682430860590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5933886682430860590==--
