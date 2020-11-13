Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 982ED2B1FE3
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 17:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03E3B2E241;
	Fri, 13 Nov 2020 16:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ay-6MwiURZvD; Fri, 13 Nov 2020 16:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7033E204C3;
	Fri, 13 Nov 2020 16:16:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97AB01BF281
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 16:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9440687526
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 16:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3hLPczM28ns8 for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 16:16:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 651C68751B
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 16:16:07 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 630DC2076E;
 Fri, 13 Nov 2020 16:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605284166;
 bh=A78YcjU5wXa8tlzrOpaXDNnSzLAvardtp8E9bjbkobU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CMzBr7E+FDS6ZgWNYaYY3g8HwzJPjCCycp7a2gmh7cOvce7d+siQhoXfXognj2qzp
 pOGN3bp7VECK6K7YnDSdbMnw2aziHM6PtIwEwXTG+V8K8/U6wr3sW76YvNpadEF11r
 zy7FZ9Dl6HkgEn015hlL9KrIauCdzqRkLRZJSiqA=
Date: Fri, 13 Nov 2020 16:15:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
Message-ID: <20201113161550.GC4828@sirena.org.uk>
References: <20201110203257.GC5957@sirena.org.uk>
 <72ae6462-13df-9fcb-510e-8e57eee0f035@gmail.com>
 <20201111115534.GA4847@sirena.org.uk>
 <dd26eb18-8ac4-22a6-29b0-dbbe5fa6075b@gmail.com>
 <20201112171600.GD4742@sirena.org.uk>
 <b4b06c1d-c9d4-43b2-c6eb-93f8cb6c677d@gmail.com>
 <20201112200123.GF4742@sirena.org.uk>
 <ce9e2d9f-917e-fb8a-7323-f3bf1a367e9d@gmail.com>
 <20201113142937.GB4828@sirena.org.uk>
 <7f066805-97d9-088f-e89d-a554fe478574@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7f066805-97d9-088f-e89d-a554fe478574@gmail.com>
X-Cookie: No solicitors.
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: multipart/mixed; boundary="===============6592256103434521486=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6592256103434521486==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="adJ1OR3c6QgCpb/j"
Content-Disposition: inline


--adJ1OR3c6QgCpb/j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 13, 2020 at 06:55:27PM +0300, Dmitry Osipenko wrote:
> 13.11.2020 17:29, Mark Brown =D0=BF=D0=B8=D1=88=D0=B5=D1=82:

> > It's not clear if it matters - it's more a policy decision on the part
> > of the driver about what it thinks safe error handling is.  If it's not

> If regulator_get() returns a dummy regulator, then this means that
> regulator isn't specified in a device-tree. But then the only way for a
> consumer driver to check whether regulator is dummy, is to check
> presence of the supply property in a device-tree.

My point here is that the driver shouldn't be checking for a dummy
regulator, the driver should be checking the features that are provided
to it by the regulator and handling those.  It doesn't matter if this is
a dummy regulator or an actual regulator with limited features, the
effect is the same and the handling should be the same.  If the driver
is doing anything to handle dummy regulators explicitly as dummy
regulators it is doing it wrong.

> We want to emit error messages when something goes wrong, for example
> when regulator voltage fails to change. It's fine that voltage changes
> are failing for a dummy regulator, but then consumer driver shouldn't
> recognize it as a error condition.

If you're fine with that you should also be fine with any other
regulator for which you failed to enumerate any voltages which you can
set.

> The regulator_get_optional() provides a more consistent and
> straightforward way for consumer drivers to check presence of a physical
> voltage regulator in comparison to dealing with a regulator_get(). The
> dummy regulator is nice to use when there is no need to change
> regulator's voltage, which doesn't work for a dummy regulator.

To repeat you should *only* be using regulator_get_optional() in the
case where the supply may be physically absent which is not the case
here.

--adJ1OR3c6QgCpb/j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+usTYACgkQJNaLcl1U
h9Cdtgf+KPTFZMOoWB6AmVx7uO9sDi9hMEVVCzp/m6ePr9MDeju+i5ix2FQINkxE
D3+IHQpy5uNaihmetU14FQqj46ci6B9LfYY2bJ83O4DQbLGFBp4IjfGHUZHSrG/H
uOlmTAln3D7hJvmlexfC3pr/DaCmS29p9Zr9/jI7m96gq+QpksXL8vK347+CUcZi
HB5BciEamTey+AESLGu13X9rEPhkyLuNpU3N53bp6rg+jZqEqXJz8NCfQ0DeGbRU
ssePVo1EThW95vi1G7cQCi9XO+MaNQFp7YRQ91nQMfeY6UMgF6TCUvBB31A9U0BF
N1T5iPikwB5hLC/LTyappOFpxG0AMw==
=4ogU
-----END PGP SIGNATURE-----

--adJ1OR3c6QgCpb/j--

--===============6592256103434521486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6592256103434521486==--
