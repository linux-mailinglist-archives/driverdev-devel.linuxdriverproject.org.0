Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8B52AB3D4
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 10:43:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00AA086A87;
	Mon,  9 Nov 2020 09:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-BFyvyfrm6i; Mon,  9 Nov 2020 09:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 335EB86A5E;
	Mon,  9 Nov 2020 09:43:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 588371BF239
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 09:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5245986A35
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 09:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZyhzY8rZKuUU for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 09:43:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 04B5786A08
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 09:43:09 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1456D580195;
 Mon,  9 Nov 2020 04:43:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 09 Nov 2020 04:43:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=lmiqVPfBRO9HsD4eiakrDCNXKqB
 n8TEbx/O27OWVDLI=; b=mypyW2SRGaFWVqh9eIwS+6XSviN7iSg5vBD0DujP08f
 NTMwnLh+7qpBOyAYunecocrgYA+ZD83xDOK8186OMOoFQ+Xb0nOs2zQyXlkxhlw6
 HPv8vT2JZq1TKs+X9DjJJUUqPy0aDbbd3pVpyIuUbMaFmpDcu9YttXA0ME5BnQU+
 NcaufGiE2apM4uhQXjANLBhcteDxGlRwLTkXGVsU/zW13YivuK5ePcX7SSPvnSiC
 kKmx6Y/c5qCfRB6yCY5NEzOLq4M2cUyL8aw1cmhpEM7yYILzhXH2Mca48y8YDMTT
 EKe976E321k4CFGyXoCKSvuRwNw03gU6RZDx6NzuRbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=lmiqVP
 fBRO9HsD4eiakrDCNXKqBn8TEbx/O27OWVDLI=; b=H7qY1QFWL2E1stPQpyP9eg
 AAJ4inT9BR8xe2fI1/fkS8WJi0i6ZctMYo+URIun6SRJm2+L4WN/fxQqwdjgfDPt
 ygQ9aQNUbTllTVupPO7i8IqlrkLimVvKL4ZTPQk8aBq3f9DnNR2zi95Te3Iw+Kad
 7hwMUljwZ6V/YSmI7p2I8dPUgAQYYjexVXkrIaXnYF6RIzR8o6iiJI//IyDqQbAW
 zlG6aJJEq2h648P35sUz05qDSNox7LNPkaAyka7Ab/YwvSWwmrltpi1ZSwVMz76C
 rgmGmYuvrqlNJKZEk0tutQTo7iwFqKEjmZnDm+Q7AQosE729qDxk192LxCSTf/VQ
 ==
X-ME-Sender: <xms:KQ-pXwe_i8dNiJZAY4tlnzKs9XbqOj8MBM7z25Mxwdov2thimc9DLg>
 <xme:KQ-pXyO8ivi7WZ8BAwODuMeesd9QLkTkBWKTaIn0WyOYT9lYWpAF-L9znw6Jvor15
 cieyRFDbpVwMEIUN8E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudduhedgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:KQ-pXxjlvTmOlgd9bjlnbeGUPVWLSCvcZhonXSR4YQ4KX-CI1c81Ow>
 <xmx:KQ-pX1-HsXhn-od1yaHQFkk1IpgBnrmnLSb9H6eruasLpI3dYiJP3w>
 <xmx:KQ-pX8vBDU1Pcsf3hAEUlTyz0uO8CENMf2hwZwyqRlIqjkqsQvmEtw>
 <xmx:LA-pX8FUnd_DscCKNzgrRd-uO6wlsVUSe8fyyt0RSAgNhH-tifm-HA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0230C3280065;
 Mon,  9 Nov 2020 04:43:04 -0500 (EST)
Date: Mon, 9 Nov 2020 10:43:03 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Christoph Hellwig <hch@lst.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 wens@kernel.org
Subject: Re: [PATCH 0/7] sunxi: Remove the calls to dma_direct_set_offset
Message-ID: <20201109094303.llqsxqoxjagiqa55@gilmour.lan>
References: <20201106151411.321743-1-maxime@cerno.tech>
 <20201106160737.GA31913@lst.de>
MIME-Version: 1.0
In-Reply-To: <20201106160737.GA31913@lst.de>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Yong Deng <yong.deng@magewell.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3951962015989269019=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3951962015989269019==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ukr2zryovmvm4axa"
Content-Disposition: inline


--ukr2zryovmvm4axa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Christoph, Chen-Yu, Hans,

On Fri, Nov 06, 2020 at 05:07:37PM +0100, Christoph Hellwig wrote:
> Thanks,
>=20
> this looks good to me:
>=20
> Reviewed-by: Christoph Hellwig <hch@lst.de>
>=20
> Can you include this patch at the end of your series to that it gets
> picked up with the other patches?

I guess the easiest to avoid bisection issues would be to merge all this
through drm-misc, would that work for you?

Maxime

--ukr2zryovmvm4axa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX6kPJwAKCRDj7w1vZxhR
xVdNAQDHWf5opH2Wk5MBiU7aGQjw4usXGRwBxWeeBmmVLm8FsQEA8Y3/aoi85/VG
utrIfztWYorSmqfL/yhtZhR8bdeSEwg=
=ZXtW
-----END PGP SIGNATURE-----

--ukr2zryovmvm4axa--

--===============3951962015989269019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3951962015989269019==--
