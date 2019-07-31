Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98C47BF35
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 13:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73E5C87D11;
	Wed, 31 Jul 2019 11:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0N-aokE2Y4ES; Wed, 31 Jul 2019 11:24:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1C85873DC;
	Wed, 31 Jul 2019 11:24:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5ED61BF378
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF0A1863A8
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h2QigAAUmAXk for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 11:24:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
 [172.104.155.198])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 203AE86388
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NNkKpSgMuJ0KRRXiISTaddlqY+jM8kpTuvVm8K7loEo=; b=m/zIh+7lsaMz2pnXHbCTB9AVJ
 mV40UnIA7bnq14o76hcNSjOpD6JbreoPgt+MGAR2O1CuqmWu8ljttfVxcmnORwU/401Nbl2UEq9BG
 TuOwWWGC8jd4PU1/gHwfmgG4gkJEMReqYJEJ13AdV3B2stt59YpknqEboxMWWgIJa1Ueo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsmio-0001kD-NN; Wed, 31 Jul 2019 11:24:42 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C59922742C99; Wed, 31 Jul 2019 12:24:41 +0100 (BST)
Date: Wed, 31 Jul 2019 12:24:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731112441.GB4369@sirena.org.uk>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============5534590151485980803=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5534590151485980803==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GID0FwUMdk1T2AWN"
Content-Disposition: inline


--GID0FwUMdk1T2AWN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 04:07:41AM -0700, kernelci.org bot wrote:

Today's -next fails to build an ARM allmodconfig due to:

> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 40 warnings, 0 section=
 mismatches
>=20
> Errors:
>     drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of =
function 'writeq'; did you mean 'writel'? [-Werror=3Dimplicit-function-decl=
aration]

as a result of the changes that introduced:

WARNING: unmet direct dependencies detected for MDIO_OCTEON
  Depends on [n]: NETDEVICES [=3Dy] && MDIO_DEVICE [=3Dm] && MDIO_BUS [=3Dm=
] && 64BIT && HAS_IOMEM [=3Dy] && OF_MDIO [=3Dm]
  Selected by [m]:
  - OCTEON_ETHERNET [=3Dm] && STAGING [=3Dy] && (CAVIUM_OCTEON_SOC && NETDE=
VICES [=3Dy] || COMPILE_TEST [=3Dy])

which is triggered by the staging OCTEON_ETHERNET driver which misses a
64BIT dependency but added COMPILE_TEST in 171a9bae68c72f2
(staging/octeon: Allow test build on !MIPS).

--GID0FwUMdk1T2AWN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1BengACgkQJNaLcl1U
h9DLnwf/f8I9dl2D69S1eeFNRVh2aLjJV9PMJSjfoyGSDSEKyrS7CVSR8qWRkfir
LwbOCkTe7W9RVxR409aCkPkHcqLlCquQxDeyihTP00ZevmIzgLN7A1mLv0LmoIbn
vldWfuGkbKM67v9n1nwgNBuZK/6eXFobpRlAFrPBx6tiMH4zvAbMKQgO8GuHXdQs
EFd9Wxa38ixftAfcoNbMng2vmYqFiU/nOM9MUQBtWwZ30OV359/nSHMpwfyO9KEJ
sfd866tLAddesCX15Kk/DS/r1qQViMKmqTiOTSHe4r3YKQL9/o8NByGs7k0rWG6t
hgLW0Xnb1iREo3Scv3PBByS5PuMdbw==
=Oxer
-----END PGP SIGNATURE-----

--GID0FwUMdk1T2AWN--

--===============5534590151485980803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5534590151485980803==--
