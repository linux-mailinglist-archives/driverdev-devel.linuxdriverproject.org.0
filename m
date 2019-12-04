Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C061411305F
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 18:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B35B588499;
	Wed,  4 Dec 2019 17:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRm2IjQDZIZ8; Wed,  4 Dec 2019 17:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F137888416;
	Wed,  4 Dec 2019 17:01:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B19661BF336
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 17:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A407687D36
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 17:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rX1D+rSYvO0r for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 17:01:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
 [172.104.155.198])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E31ED87865
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 17:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=asdcy8EJ6DybeaXz0S+Y5PU/41Q6cNiuOXJn7dxF4fs=; b=RMkJ8v/vMPBYXFddlJ8CE2112
 o4Fd/fPh6+Bw1xmhc1H9D6wwiNrIo4vGlB2SeEGjk4i6KbYGYqJpgHwwX+jFkI3ixAcjn8Tf09h8M
 r9RbqBnpf/UjAoT445k1I5a5JqzzncUtD3rIGyt4GsgN3r6ohV1Qen6+tMoStISjfOUP8=;
Received: from 92.40.248.27.threembb.co.uk ([92.40.248.27]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1icY1P-0001Kc-QP; Wed, 04 Dec 2019 17:01:03 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 5DE17D0046D; Wed,  4 Dec 2019 17:00:59 +0000 (GMT)
Date: Wed, 4 Dec 2019 17:00:59 +0000
From: Mark Brown <broonie@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v4] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Message-ID: <20191204170059.GX1998@sirena.org.uk>
References: <20191123051927.5016-1-rodrigorsdc@gmail.com>
 <20191123114119.7b0c3447@archlinux>
 <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
 <20191201114032.1a972dda@archlinux>
 <20191203163850.GN1998@sirena.org.uk>
 <20191203165154.00005793@Huawei.com>
 <c725b1b1475148ded6168667fa0227bc18de0854.camel@analog.com>
MIME-Version: 1.0
In-Reply-To: <c725b1b1475148ded6168667fa0227bc18de0854.camel@analog.com>
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
 "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============9148133337934171091=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9148133337934171091==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z3PcgjD2qOzdkXVS"
Content-Disposition: inline


--z3PcgjD2qOzdkXVS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 04, 2019 at 07:18:15AM +0000, Ardelean, Alexandru wrote:

> One example (for spi-cpha):
>         if (of_property_read_u32(nc, "spi-cpha", &tmp) == 0) {
>                 spi->mode |= SPI_CPHA_OVERRIDE;
>                 if (tmp)
>                     spi->mode |= SPI_CPHA;

We could also do this with a separate flag saying that the wire
format is forced from DT rather than having one per setting.

> Or maybe, a more complete solution would be an "spi-mode-conv" driver.
> Similar to the fixed-factor-clock clk driver, which just does a computation
> based on values from the DT.

> To tell the truth, this would be a great idea, because we have something
> like a passive 3-wire-to-4-wire HDL converter. This requires that the
> driver be configured in 3-wire mode, the SPI controller in normal 4-wire.
> That's because the SPI framework does a validation of the supported modes
> (for the SPI controller) and invalidates what the device wants (which is
> very reasonable).

This is harder to achieve here because we don't have drivers for
random bits of the wire format...

--z3PcgjD2qOzdkXVS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3n5koACgkQJNaLcl1U
h9DYmAf+LJFYyW1Y0Lbiqs9/Nt03tZeA+6ImdccknWsoJohuCVeKHXZWA7YFquKx
5WeuRir2eKQQGpCiv5W95qcwpv/QUVpYMTGevZECSnOQHym1pgTknVFIc51RzD/m
OEG8gVZ1zeSVoGg/2/DvipOFUuj2QToLRFP26tGIIaceY6MGpCDrMg4cLYuGr2ir
ro5NXmvHrLyD6Yic6GWpwCwSegaX7hFQrQ46Bbvzi1fRFdQOixFqXS8AdtRupmK5
7Aw1laczA+/C3Ceox6s8UfkOVwJAEt0KAy/afe6tTREtRVtB9rAoT6HmECHk7xgd
VDDIhbiunTvPZZEsyIlXg1/WZYn4+g==
=a7mZ
-----END PGP SIGNATURE-----

--z3PcgjD2qOzdkXVS--

--===============9148133337934171091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9148133337934171091==--
