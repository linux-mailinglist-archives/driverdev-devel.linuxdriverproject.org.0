Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3F0260AE9
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 08:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 024C2864B3;
	Tue,  8 Sep 2020 06:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zwyuUIM1HNpm; Tue,  8 Sep 2020 06:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 706E686469;
	Tue,  8 Sep 2020 06:25:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8E61BF296
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 06:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3AD3986469
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 06:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpIl4pvHYSjq for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 06:25:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2BD186457
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 06:25:26 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 612B1D58;
 Tue,  8 Sep 2020 02:25:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 08 Sep 2020 02:25:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=hNVS1LALOKoEOdYgVE2OXyWLilR
 AzZVlV5wSwWON+Ag=; b=GGqrEaLV1fzvyYsFs4OE7FpgeDvHB1wK7jsVq5edtP1
 h758o82qNL+jK17DROvZyuXKAAGtrlW1rA6iOh4wu7CPRYovDpVaa2xyMM7Zt9az
 EYxjr/Bbgn2YcUKKrESMbz2Xfd9pYiiwcntgiifAEA4tY2ibb1wqGVYkuSvVxWNj
 oe1/XGhp2yyIHu4sNzbwKALsH1oSvzhvvifnfQwbpfVJldNygi0PBX/LScFCq3A8
 FpDZ6sq2YgUOxu2wuiluhvLTywPE0C0MpT6RhxYHdq0bPrLge13v2IsBFMRrV/uz
 qXK3zCXeqifXIppZnKFyvJ/EaWAaB53pZrzvfNpE8fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=hNVS1L
 ALOKoEOdYgVE2OXyWLilRAzZVlV5wSwWON+Ag=; b=LfV9SjhtwSGAVMKjn6O/b0
 11ZIfI0S1TUQ/KWQoDlf3pnKU/sH45Bk2kWpkedZlEHw4K4gmz0yal1xwjShOHwv
 4hstwS39h4iHSNrC1MHgQKH79oNvh6VYyCheUNJhOTinhdxs/1kXkeg4n/Q8KeAF
 OYNfx1bQmpa/MQOmpVVbI9JWyjwh8M713ZrCsV8OKs/R8UKaJaygQWIsQRb3lrKr
 XdLCgrUovMiysMQ0sfcxEBL4giwQSwVVV3+OWVguKqZqvo5C/pwweB94VMxnouvW
 FeQrFzHbre6WuvzBdzxCbAnK5LoKkA1EwaMyKUDXBXjvQbdFU47ff1jrpTZXZL/A
 ==
X-ME-Sender: <xms:0yNXX5vG-m3C5Wbvq-DJcaNLLYtxtIdTwYFcXAm5VNZ7Hb0zCuugQg>
 <xme:0yNXXyfuD-vj9l9ClR5meVzT_Z1-qddGb4OSOFSun9pcRDvw_j5qTzVev14JFd0Kr
 ytVNxD96EL0GU8DnfI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudehuddguddtiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
 heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0yNXX8zIE7teX7FlRdE70LOTe9KBtSlcQs9txVJaFX9fE7Jz9Gdajw>
 <xmx:0yNXXwMzx7Y9HlwWGd6KooCYMs0tgylh9tTnf4BluhPaWXggdbVPrg>
 <xmx:0yNXX58uracR1rsvj8TGc1M19JWxluukPx-4gOTQY0LPeXFLEGr1og>
 <xmx:1SNXX1R8tlsW3X0GC9b-HXTSGwr6DlljD1D9AiWnvoQ9QXlojMQ8SPujL4g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A9F5C306467D;
 Tue,  8 Sep 2020 02:25:23 -0400 (EDT)
Date: Tue, 8 Sep 2020 08:25:22 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Martin Cerveny <m.cerveny@computer.org>
Subject: Re: [PATCH 5/6] media: allwinner,sun4i-a10-video-engine: Add V3s
 compatible
Message-ID: <20200908062522.kv6uoguwpx5rs5dp@gilmour.lan>
References: <20200904200112.5563-1-m.cerveny@computer.org>
 <20200904200112.5563-6-m.cerveny@computer.org>
MIME-Version: 1.0
In-Reply-To: <20200904200112.5563-6-m.cerveny@computer.org>
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
Content-Type: multipart/mixed; boundary="===============3696560576414106268=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3696560576414106268==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="534emqo4lhxvqkah"
Content-Disposition: inline


--534emqo4lhxvqkah
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 04, 2020 at 10:01:11PM +0200, Martin Cerveny wrote:
> Allwinner V3s SoC contains video engine. Add compatible for it.
>=20
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>

The prefix isn't the right one, it shouldn't be media: but dt-bindings: med=
ia: cedrus:

Maxime

--534emqo4lhxvqkah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX1cj0gAKCRDj7w1vZxhR
xZ6qAP9w/SdVObCwq+uvKsVNTyvlmtJ2IIUTrjRni/9AU31L/QD9FEHvC9B/ptoJ
+QsDpuO3jcMhHYR11nr+v/qude8mRgw=
=q4VF
-----END PGP SIGNATURE-----

--534emqo4lhxvqkah--

--===============3696560576414106268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3696560576414106268==--
