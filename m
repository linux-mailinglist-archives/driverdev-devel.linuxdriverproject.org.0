Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B830B2A0A4A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 16:49:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BFE7869D7;
	Fri, 30 Oct 2020 15:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynR4Lh9fHXge; Fri, 30 Oct 2020 15:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1252F860F9;
	Fri, 30 Oct 2020 15:49:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90C671BF2B3
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 15:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B1B187323
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 15:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9y0Lvgiq80j for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 15:49:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com
 [64.147.123.27])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 730D58731B
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 15:49:50 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id BD28EC82;
 Fri, 30 Oct 2020 11:49:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 30 Oct 2020 11:49:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=VAX3nr0UfKRsL8dcSjmQItUjyxQ
 QXBJdMzAIgrzhQLw=; b=vUERaHr5tIHohUlXRncfJbWrkz6MwBz9jz3Fso9rEfi
 ikeFYG2FxWuwnWjw+MK6g/RzA5e3QFWZq/Xq2/FyFQ5yKDs9Jf+QcSNNb8EBDSzU
 21+yvGcx0NyfcJ3dldT2B9pupK9Wg8Fwnu5SvRL6h97tcQKVsg+2Sao7y1IXWW+D
 gov+r8KAZYmA0XY6nb7N+4a703w6DdNI0KUXc/j9HiPUqDZu9O0QBk/1n1daAwVa
 CowTUacfvQQanPe10sIc7U9Jirpk0fqQBAsYwkY6du0UkJg7oxcRbj5VX80cku/8
 9st1+QHwJ1pWvGHggIjIfO16xjcZeZYBTXkFnZffN6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=VAX3nr
 0UfKRsL8dcSjmQItUjyxQQXBJdMzAIgrzhQLw=; b=Mxy3XeioGra6s6scZmbSnC
 IIiPOUDRe/+mtyjgriv0dDVeOfpVaFAjRKZJfmsRJ7I5Eu9q9FVULd5m5LOnVQS2
 o8Z9EBh7xsqanKpa3I/2F0mZFuW7Qe8tOu9v4DbQdVTerHp+Eo1pC98hCHL80Qg3
 uj1e+J7gbjfVEvboM3ik+MHvMQzARSxmLeDRXpa/HCsXl5+DizkMUL09ZduxCZzv
 0LGU0TEuBZp0vQeGLaap3HT9S63rC1QTkqkeeKyJm8YgHoDGrZymqEyoq8V22qTa
 58Xud9BLDZsj6tOuaeUFwUYiNNdWgfsum2YhBJoYbywmx4ISrycdpdMOA32mkctw
 ==
X-ME-Sender: <xms:GjacX2-73sJOtyVdEWL9xXGjADSy0vvoVmPekTB1GcE0I1Vm9lsiwA>
 <xme:GjacX2ukhWkk5DET24BECBB8h4GIGRZMZUs2N2p-rnfIvZP-T1lBz7Kle5-R_sDAG
 UrwOoVCXvHANeuTk28>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrleehgdejiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:GjacX8B7o1Mj5vF0Pb7dJpXeCsL98XDbVr7gAPRn6t8HOluUNdHV9w>
 <xmx:GjacX-ecrVfv1-pvn2FLmXTviid2eNZGJ8zxvGIJrj3umNDGnkj0lA>
 <xmx:GjacX7McG4O-g0BG45GN-a3uR7gBO1suxkQaqS_Hnva5ra_mtJ6b-Q>
 <xmx:HDacX2rFD3QrgtZTM6S0yfQ3ll8LM00a012Z5YEpVrHY9B55UVqu31cOaZo>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 97F02328005D;
 Fri, 30 Oct 2020 11:49:46 -0400 (EDT)
Date: Fri, 30 Oct 2020 16:49:43 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 0/6] ARM: dts: sun8i: v3s: Enable video decoder
Message-ID: <20201030154943.2cmfa573huvh6lze@gilmour.lan>
References: <20200912143052.30952-1-m.cerveny@computer.org>
 <034d8de1-bcf3-88e6-4d23-9a13e8b950c3@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <034d8de1-bcf3-88e6-4d23-9a13e8b950c3@xs4all.nl>
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
 Martin Cerveny <m.cerveny@computer.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4101577313994019551=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4101577313994019551==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uufs5p6b6nf52uao"
Content-Disposition: inline


--uufs5p6b6nf52uao
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Oct 30, 2020 at 12:06:10PM +0100, Hans Verkuil wrote:
> Maxime,
>=20
> Are you OK with this series? It looks good to me.

I am, you can take it. I'll merge the dt patches through arm-soc=20

Thanks!
Maxime

--uufs5p6b6nf52uao
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5w2FwAKCRDj7w1vZxhR
xY+AAQD8o4Tkz0kfe+3yVCldL+pH5eroTwl6fgV5eoCol3cjxwD/d3chMQgaYj27
eLeYnrMSRMidwglTS9NnxVGyl9tFrgs=
=EpHk
-----END PGP SIGNATURE-----

--uufs5p6b6nf52uao--

--===============4101577313994019551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4101577313994019551==--
