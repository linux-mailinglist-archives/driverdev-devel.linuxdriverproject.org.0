Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF462EF03A
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:56:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AFC186D56;
	Fri,  8 Jan 2021 09:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WLf56_OpH9CO; Fri,  8 Jan 2021 09:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9179986CF9;
	Fri,  8 Jan 2021 09:56:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCB051BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D73B08731E
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bza8UuP3ttnX for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:56:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E8A98731C
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:56:19 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 62B455805B5;
 Fri,  8 Jan 2021 04:56:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 08 Jan 2021 04:56:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=nhNnfGpgrsijY/Ccu+y8p0GNRzv
 B/ZDbp2P5o/E9YYI=; b=mCu2BkvuJ60N05UHH3NFsoh91nOK914AIlpEVkz6P7N
 Tv3MtQExaE4iycqINncj+4/U8eo/flDASas8AGjU3HR1NP6almnLr2wwTLjQYoxJ
 sHUvgBhFkQ8+KfjlTfYaSAFVrvjMn5qgAUL+RuGQ3JGo7Zyv9GnA1Er0qgLKwdnw
 T8Wag3E81PpRErhMagM0hUmwDK0UEl9sSBippaadqvIRW82EoaDT0BBPwXP3aKaC
 sm0mzPadNHg4gd4Qmo2xznsyx9p0L7nBLXHNnBzlfMPj9p4copwQYp0TkIVYjUxo
 S5LyJVPlkyNe50WyY1DcsfuW2pvsmu8ZouUr0L9X6Nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=nhNnfG
 pgrsijY/Ccu+y8p0GNRzvB/ZDbp2P5o/E9YYI=; b=FypFiIH8/HMzVMOKvJ6cNK
 03GOdjTrcdipr8QmsLbs0koleqvV58rkjUdjfSBuvYUjoRzS8xrsocCOtDqCeBas
 FkFat+dPalXcssOOA3Lq83HYFi/Una2HebqQ3lEkZu7e6+X82S11YL33v3Md0gQ9
 y7sOQ7rHwop6/wg9F3c6tXMDiWaOQzYnEQl1dmNfOcANWy+K/iMLy0dPHhU5HFzt
 54zP2ZMuosr2kQap6tvAFyF45v4GqzIKh8MgnIi+zw4P5NTE7Ln773mPpWYWYnqO
 VpYHFBZ3dWGSW907UWLiPbROS2ZEocGDRNCJK1+EJTVTufHMrZygJGvU7NU35hmg
 ==
X-ME-Sender: <xms:Qiz4XzVXczHUGtWkxxUSpJzht1sSKgO83Nh_91PmIihTPVFQ40Lz2w>
 <xme:Qiz4X7nbR1FJUS_T7zjlxjIHBowTLFMmj9UhxJF164sAr4jFYWCiXNrnq6RCkH8fX
 3zOU92jbFjWpjczlaY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
 gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Qiz4X_Yb7R6wfHUdYRv9VVqWql5ANEVGFiTs_nLEc7cmdA_hQpjTMg>
 <xmx:Qiz4X-VXv5EAm95r6c89-UjXxsgKv0BJPm1SYqLyPmqBu7nK7lYroQ>
 <xmx:Qiz4X9nuz9AeEAO4hz3TNMTqsl9s6npywTQeCmkm3V6iNHH0UYi--g>
 <xmx:Qiz4X3v_yzueyTaMUQG_WvCF8OKC4oqeZ96GeaNdkgKUjNtnU4s0xw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C7057240057;
 Fri,  8 Jan 2021 04:56:17 -0500 (EST)
Date: Fri, 8 Jan 2021 10:56:16 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 13/15] media: sunxi: Add support for the A83T MIPI
 CSI-2 controller
Message-ID: <20210108095616.fy5oaslwnyumv3if@gilmour>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-14-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201231142948.3241780-14-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============5496498551062791858=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5496498551062791858==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tc6l3ymxpbqq47df"
Content-Disposition: inline


--tc6l3ymxpbqq47df
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Dec 31, 2020 at 03:29:46PM +0100, Paul Kocialkowski wrote:
> The A83T supports MIPI CSI-2 with a composite controller, covering
> both the protocol logic and the D-PHY implementation. This controller
> seems to be found on the A83T only and probably was abandoned since.
>=20
> This implementation splits the protocol and D-PHY registers and
> uses the PHY framework internally. The D-PHY is not registered as a
> standalone PHY driver since it cannot be used with any other
> controller.
>=20
> There are a few notable points about the controller:
> - The initialisation sequence involes writing specific magic init
>   values that do not seem to make any particular sense given the
>   concerned register fields;
> - Interrupts appear to be hitting regardless of the interrupt mask
>   registers, which can cause a serious flood when transmission errors
>   occur.
>=20
> Only 8-bit and 10-bit Bayer formats are currently supported.
> While up to 4 internal channels to the CSI controller exist, only one
> is currently supported by this implementation.
>=20
> This work is based on the first version of the driver submitted by
> K=E9vin L'h=F4pital, which was adapted to mainline from the Allwinner BSP.
> This version integrates MIPI CSI-2 support as a standalone V4L2 subdev
> instead of merging it in the sun6i-csi driver.
>=20
> It was tested on a Banana Pi M3 board with an OV8865 sensor in a 4-lane
> configuration.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

There's a couple of checkpatch --strict warnings here as well

Once fixed,
Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--tc6l3ymxpbqq47df
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/gsQAAKCRDj7w1vZxhR
xa6vAQDzxq7wGkrr8cxK3zTV9vzdO+lsvVdg8AtqesAmrp2IVAD+JY8cLaoGu8C1
tfK38n0rbE9wxRSIDnEtIQ3OENiefwk=
=GD9h
-----END PGP SIGNATURE-----

--tc6l3ymxpbqq47df--

--===============5496498551062791858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5496498551062791858==--
