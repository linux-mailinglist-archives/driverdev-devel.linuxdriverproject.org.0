Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2B82FA5EE
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 17:21:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29FC98508A;
	Mon, 18 Jan 2021 16:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HpAtOvjzPfce; Mon, 18 Jan 2021 16:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CB5D85085;
	Mon, 18 Jan 2021 16:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3A631BF32C
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 16:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE282866CA
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 16:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4QdiUhUWc9zn for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 16:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B68AE86091
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 16:20:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E545120715;
 Mon, 18 Jan 2021 16:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610986851;
 bh=c2vVpih3i95NJnI8vf6iq+cWxGzir4SmoRY8nZEYKsY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bpMFIoLteDM5YsC7y7x4dDjxA2CYAJPPFnczAFBHkIfLJwqIaqswPwxE5K5NPAaAR
 pvtsGsNcQrMnOX0fuUy6nudt7w9ybkpmWxEzwwHDoocgYhfEcLP3lJSXmSXfqwxzhl
 D1OxD6L30PRL1Tm103Q8123/npwLH2iiE1+TvfNRehJmB0EbptAzVnfYh7KECz75lT
 jB9fW/cBsdSeYU0LOW/gIFj4yNT2zgHexekNgonlK0Lvg581NxnljEJQSBSN755Je9
 393XtnvaMHAnV3oQnWFunGVDBb9CSXEg5rmx8VuoxPFJGOUDad1fErmVMs/vXuZToD
 M1wWMq7uR/9ng==
Date: Mon, 18 Jan 2021 16:20:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 11/13] regulator: hi6421v600-regulator: move it from
 staging
Message-ID: <20210118162014.GN4455@sirena.org.uk>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
 <d0a7cae3c654d25e01b0c436e00de55a21cd7f64.1610975633.git.mchehab+huawei@kernel.org>
 <20210118135440.GM4455@sirena.org.uk>
 <20210118170245.1bf5160f@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20210118170245.1bf5160f@coco.lan>
X-Cookie: Huh?
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: multipart/mixed; boundary="===============9000166429176114222=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9000166429176114222==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/JIF1IJL1ITjxcV4"
Content-Disposition: inline


--/JIF1IJL1ITjxcV4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 18, 2021 at 05:02:45PM +0100, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:

> > If for some reason the PMIC is sufficiently fragile to need a delay
> > between enables it's not clear why the driver is doing it before
> > enabling rather than after, presumably there's issues with the regulator
> > ramping up and stabalising its output=20

> I don't have any datasheets or documentation from this device, except for=
=20
> the Linaro's official driver for Kernel 4.9 (from where this driver
> was originally ported), and a high-level documentation for this=20
> hardware at 96boards site, which doesn't cover any details.

This misses the point.  To repeat, if the driver is hard coding
a delay why is the driver doing this *before* rather than *after*
enabling?

--/JIF1IJL1ITjxcV4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmAFtT0ACgkQJNaLcl1U
h9AyLQf/USNxx3EbzqfpSSHhNirhnkb/sC/qHjE6y5A1a/NBfHjUnqSukoxOZyvE
I/ri25KPFMXjiXzFqLiKzDQ6qp/1NrxSRO4jYaBAgCZ+AkkaBHOdcrH9QY4KVyD2
WAQ9m/66fz6T889YM8CShRLiSKtGKgWUlqZhpGB5eBC3YjNoh033UcWpF549eTF9
jFMXv+rm0aVUHKj0HGjIAp2UdxJpHyOzOLWcbG6GLlniaXQhz6b6kuQsQiv3CVqh
u2sD0D7REi1ur/1HKEGVIG2X0jAXfNBKO9qlIh+bQuyRhyEt21zQf5sGHN4pJ+qg
yamtABJJ0IgyfWAEVfjWwk+RWrUx6w==
=tOni
-----END PGP SIGNATURE-----

--/JIF1IJL1ITjxcV4--

--===============9000166429176114222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9000166429176114222==--
