Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B75A611033B
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 18:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A55986D42;
	Tue,  3 Dec 2019 17:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZRyeXMiBBYM; Tue,  3 Dec 2019 17:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E492A86781;
	Tue,  3 Dec 2019 17:16:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 479C71BF3A1
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 17:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44A50227CC
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 17:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdK8Im4cw5qz for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 17:16:08 +0000 (UTC)
X-Greylist: delayed 00:37:14 by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
 [172.104.155.198])
 by silver.osuosl.org (Postfix) with ESMTPS id 65808227A3
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 17:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Kcuy/fn6cSz/SJB4bZWplLo8InyBESqnNDB0HH+CV8=; b=su4IqbsC0yREzmmrtcBG8C4NJ
 jwHmKeSMVKlOq7kOKOB6G4d6NJpXJO5ZFZIYz5JpTgyikZR9Y9xQIqAK2Hc8hiI8azARrelzowpyb
 VYvG+AQ0HD9EuV0UESrOcdBACQFiWJC5Fuyz/H10BlOsHdtazC3MxKaVLcsJv4ju1mAAg=;
Received: from fw-tnat-cam1.arm.com ([217.140.106.49]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1icBCN-0003Hr-DU; Tue, 03 Dec 2019 16:38:51 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id E42A5D003B4; Tue,  3 Dec 2019 16:38:50 +0000 (GMT)
Date: Tue, 3 Dec 2019 16:38:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Message-ID: <20191203163850.GN1998@sirena.org.uk>
References: <20191123051927.5016-1-rodrigorsdc@gmail.com>
 <20191123114119.7b0c3447@archlinux>
 <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
 <20191201114032.1a972dda@archlinux>
MIME-Version: 1.0
In-Reply-To: <20191201114032.1a972dda@archlinux>
X-Cookie: Cleanliness is next to impossible.
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: multipart/mixed; boundary="===============4160267725535614144=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4160267725535614144==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ll0BBk1HBk/f94B0"
Content-Disposition: inline


--Ll0BBk1HBk/f94B0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Dec 01, 2019 at 11:40:32AM +0000, Jonathan Cameron wrote:

> +CC Mark as we probably need a more general view point on
> the question of whether SPI mode should be enforced by binding
> or in the driver.

Not sure I see the question here, I think I was missing a bit of
the conversation?  It's perfectly fine for a driver to specify a
mode, if the hardware always uses some unusual mode then there's
no sense in forcing every single DT to set the same mode.  On the
other hand if there's some configuration for the driver that was
handling some board specific configuration that there's already
some generic SPI support for setting then it seems odd to have a
custom driver specific configuration mechanism.

--Ll0BBk1HBk/f94B0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3mj5oACgkQJNaLcl1U
h9C/sgf/QxvazMVP9zm49jfiS4yHBJmRZeuDac6ZLwJIaSFBBjGWId42DRoQBXU+
1gZ9GH+tgeT7lGT1w+JXAky7yrNuwA0ERHAOQ1TzT0VF9DKqY+omAYwzBNC1P3A/
pldGP1I/5VsTcsJLVQemowwMzsNo4i3QTDDr07ENM5HAM4IvGVmCwJEfcCy9/q/8
fCpigQGTQRkfA12KD+KnN/87eUKwV93DB3mQ/Hgo9HvE3/BWF7Ra8TvfPCt0EKlV
NZQ4ohTyRRkuu8mwQnwJj5XhEAOa2+ueFH2WLhODhGDz58smKbv3cNASdq+t3Jg7
skZw6qsqmI38m+TAhRr33Kps+gZ8+g==
=JKhy
-----END PGP SIGNATURE-----

--Ll0BBk1HBk/f94B0--

--===============4160267725535614144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4160267725535614144==--
