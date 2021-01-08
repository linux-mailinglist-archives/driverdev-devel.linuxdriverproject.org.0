Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF422EF014
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:53:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32B0C87334;
	Fri,  8 Jan 2021 09:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9g9v64FtzpuW; Fri,  8 Jan 2021 09:53:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF37F87313;
	Fri,  8 Jan 2021 09:53:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8CE71BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C4AB687311
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjDr3qI4gfuP for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:53:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42775872E9
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:53:00 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 51ACB58041E;
 Fri,  8 Jan 2021 04:52:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 08 Jan 2021 04:52:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=C/EUhU+OduRp4VgFtO3uH13ycSS
 9LS8J19YLYD+BUAw=; b=XZNZ9Qk5K9D9G/EcpyOOUBAFREUoEsSkrIV7YFctsNk
 KXqtpuLEv+42SV3hOGuAmhNvJi5eCr1v9ZnPE6KV7IXISVhZhKyXSfUX4bmyhkQK
 Nj5xs6TS0ub/am7dIPVatXvfYl5nwDQhYw3vXxlftu+/6OeHj/stqgMsieo82J2U
 mcubdIUfePZJeI/XlsxMtbj87DEmsIGRhTupqZppFcUePB+CquSadzPK+2/c5eB6
 J+lHDPh7A5oTY2jndGelaswGtIfHKGKsR6che5EHJd0t1ppROyWyBulnQM2EQ6vf
 1o42PNuvGJ00CMFYV+QYdu5DBlpHxZhiaY4+89Nbp7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=C/EUhU
 +OduRp4VgFtO3uH13ycSS9LS8J19YLYD+BUAw=; b=EbFWcvoIFZPIwLPFWJqVhp
 MMT5nAL8Twuk5n19tNxyeftZTqHihZ4tIn7TPPGklHhf77+2sUv2No553qsaiYIh
 hTrG7qcEVmT/Y4M7GKSYMg6bxidefPo4qOKTW2R+ii7x5mDi+McoGdY+MPqCnz4R
 QRV3eASaB1kPn87TF/mLIan4wk/yF6yawVx/nObs7hhZ3iwP4nsZ0RTgbAHILDfQ
 MEUZfpBee/aMJA+yzi5wRk5jhRza3la+6vzt/8MhaiBzRdQwvlO7dOL59oJsmp/w
 H6Uy/tV+zeX+2NyybAv3EAHsIIgZTKUQtc5CWP20xJ7vjjD696KGv0lCUXITkXOw
 ==
X-ME-Sender: <xms:eyv4X-XfRvVK8urJk9ADSxMGMmjSDD0bxYo6smXVfn3FTHp0WyaOFQ>
 <xme:eyv4X6kuZ2HGKmWM6-e5Ob7u58Tjoafxtr76kpvGW2hU12d_wPvrLN0QuZux8iiXk
 Pv_qUVdoJPXn-c87i8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:eyv4XyYMB7YZTCvLLHMpdQZD91IzbneA_zJIIEAt713X4bNVq6bf1w>
 <xmx:eyv4X1W81UHzRnVHzmHEHuyBGQMD9EwIY2hzaxooWpFtGQTF-0xQQw>
 <xmx:eyv4X4lS1Z98C0wcH9H-ui5Kt-ViS8oUiSQvCsM_UZ9SYcZPKZJlLw>
 <xmx:eyv4X-t0cQLiwfrQj8CxoLRugqilbyiKLWS1QmQffuxWFA8_mROfLg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B55D9240057;
 Fri,  8 Jan 2021 04:52:57 -0500 (EST)
Date: Fri, 8 Jan 2021 10:52:56 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 08/15] dt-bindings: media: Add A31 MIPI CSI-2 bindings
 documentation
Message-ID: <20210108095256.xfphiih5v2z4d2sa@gilmour>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-9-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201231142948.3241780-9-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============5813798360790236740=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5813798360790236740==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kroqwg5wkzimhqkm"
Content-Disposition: inline


--kroqwg5wkzimhqkm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 31, 2020 at 03:29:41PM +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A31 MIPI CSI-2
> controller.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--kroqwg5wkzimhqkm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/greAAKCRDj7w1vZxhR
xXgEAPwMns+3sYP3np8VhHG2SJx17G0ypXQzfWimihw1hGQWaQEA0WUI9r8CFkT7
LecYyggmZ+Zr6fs+OF481T/xtAHvTAU=
=KV6o
-----END PGP SIGNATURE-----

--kroqwg5wkzimhqkm--

--===============5813798360790236740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5813798360790236740==--
