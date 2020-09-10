Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1598B2646AC
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 15:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC07187154;
	Thu, 10 Sep 2020 13:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxLoHsJfzsps; Thu, 10 Sep 2020 13:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D7F98713F;
	Thu, 10 Sep 2020 13:16:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD56F1BF41D
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 13:16:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9D48875FD
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 13:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwmkAec73f94 for <devel@linuxdriverproject.org>;
 Thu, 10 Sep 2020 13:16:10 +0000 (UTC)
X-Greylist: delayed 00:07:12 by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E0A67875E6
 for <devel@driverdev.osuosl.org>; Thu, 10 Sep 2020 13:16:09 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4992F580350;
 Thu, 10 Sep 2020 09:08:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 10 Sep 2020 09:08:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=VVbErVHSRW+XcgK4T8+BuU5pymU
 mplYyEZNHTIBduJU=; b=TzjtPyhybN+p+jKYBxNS47cUtOeaBbzh5z8yB4wB9zp
 gtHTdpq/S8Q3A8UFakUE0o2kY5E0QLtOImFJ7cIOBEo5vKWLsXDqmyOptIyECEGY
 XganJjqI2GViX3bBwz9pkJijYqzuxZVdxdPszCCXYG4fVP1DGS/eXHAK+2NKubv3
 5woBKgXPWjqv/5bJ0CyL7+LsQUJgFbq4+DE5KvUFIM2bREDsTRoUucdxlIBAROPK
 VQu7LsjS2QRB5qzkw+0Q5PXPxF+WeCKrRKB4Aw7fmWqsaA0sN2rRhjtg3+IP1sfW
 NxtCRikYOsU3W76LpwK7w9PrsCQR8+fW4z85Qxjv+Yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=VVbErV
 HSRW+XcgK4T8+BuU5pymUmplYyEZNHTIBduJU=; b=CFsumIWwHqz7pddDS4wW/j
 EfA7CVxNE5uqOFCUe9wHYmebDXuQcMhX482xh/eklo6CwQCqaun6NSAstG0Cdnso
 1AFK3Os8llPbhgt7GioGMGd5M3eK0ZEt5JIyjZ2PB14F4REFNcOl/0ImkXJI8hKJ
 WYYJEBxONZXYI047gZVAo9fxNf0MEp8YfGpcnQDkuCh6ew2FWPkOMNrde/xmddwB
 sg9tQpYJ7zu4AcpOfO9ePsQzqQVuTg0GRDVI1buz1LL5Xp88MXDLvUZ/CodHOnIT
 c7DrPpRZUDgbu4UtsqcEdISZoKHvk8K9Ab6sEpbFrbZGffWAHEcg1SCKpSkqLV4g
 ==
X-ME-Sender: <xms:ZSVaX480wwkzElWwqCu6ReOpu7uzFsRaTHs2-G2SohhMPwQFGUli8A>
 <xme:ZSVaXwv3H0cC2OB5biB8E3hBxPohTVz3WCtN8dfDXyZxlJoBIQjNA1ZrTORKEbwtQ
 BDClSu4EnaALM7UDwE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudehjedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepveegudetkeethfetgffgtdekkefghefhffefgeduleehgeehieeuveefgedv
 ieegnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepledtrdekledrieekrd
 ejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
 rgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ZSVaX-BpFEB6LuTSO_QNaL8RlXnvCVnMCkerFGZRumuCsONxxVzo2g>
 <xmx:ZSVaX4fAM7-dysg1vEVlBbKhBptf8LfDA-zdShkgY0KYfmIHXMu5jw>
 <xmx:ZSVaX9MHurJXo01CffBXED4Xqr84flaRjRp3AKL73g6c72rJkmgVkw>
 <xmx:ZyVaX2iKMZ9hdwM6gGWjGw8MFR9saxLqQ7ZADt82ZfOz_mEMdoYzOA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 969FC328006C;
 Thu, 10 Sep 2020 09:08:53 -0400 (EDT)
Date: Thu, 10 Sep 2020 15:08:52 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Martin Cerveny <M.Cerveny@computer.org>
Subject: Re: [PATCH 0/6] ARM: dts: sun8i: v3s: Enable video decoder
Message-ID: <20200910130852.2bfodnkoapbtosjx@gilmour.lan>
References: <20200904200112.5563-1-m.cerveny@computer.org>
 <20200908062327.7o4abjnosvghtafy@gilmour.lan>
 <alpine.GSO.2.00.2009081840380.6717@dmz.c-home.cz>
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.00.2009081840380.6717@dmz.c-home.cz>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6466296332518986571=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6466296332518986571==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="whzuaxinuaqfn32l"
Content-Disposition: inline


--whzuaxinuaqfn32l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 08, 2020 at 06:44:06PM +0200, Martin Cerveny wrote:
> Hello.
>=20
> On Tue, 8 Sep 2020, Maxime Ripard wrote:
> > On Fri, Sep 04, 2020 at 10:01:06PM +0200, Martin Cerveny wrote:
> > > First patch extends cedrus capability to all decoders
> > > because V3s missing MPEG2 decoder.
> > >=20
> > > Next two patches add system control node (SRAM C1) and
> > > next three patches add support for Cedrus VPU.
> >=20
> > How was it tested?
>=20
> On V3s with LCD and bootlin raw v4l2 api test:
> - https://github.com/mcerveny/linux/tree/v3s_videocodec_v3
> - https://github.com/mcerveny/v4l2-request-test

Thanks. Can you put it in your cover letter in your next version?

Maxime

--whzuaxinuaqfn32l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX1olZAAKCRDj7w1vZxhR
xQqYAQCb1N/Hpp3mZzTdhwal+tCqm8yNLlEGiLL41icRvYH6VwD9H8A1QtVsUhs/
MR5gRpuKZU6k8lUJtoLJWMCUWuFVbQk=
=dhw8
-----END PGP SIGNATURE-----

--whzuaxinuaqfn32l--

--===============6466296332518986571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6466296332518986571==--
