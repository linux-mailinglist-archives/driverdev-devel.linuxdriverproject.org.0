Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD922B1D76
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 15:29:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24986878D9;
	Fri, 13 Nov 2020 14:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DymDREJQNMwp; Fri, 13 Nov 2020 14:29:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94004878A4;
	Fri, 13 Nov 2020 14:29:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C53E1BF3A0
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 14:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68C4487169
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 14:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofrY76cFo8qS for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 14:29:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D503387160
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 14:29:53 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2EB220715;
 Fri, 13 Nov 2020 14:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605277793;
 bh=e3QjDJePQNmrQAx9u96nNaIxxOGo5XiKT36hOiGvu+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qdIPXjqeu0rWfbDhg94jLjPcBpmjZIBwHLLPLWv8P6x9WxP7WDJlLcmQsmpV8vRGt
 OMAvIEyxcmZ1NB/z1oI3hSi74zITJffw9hIAMOQqum4nnm6Zfcb2rB+ZZN/WE/Zl+v
 9Wu52UzARkZm/5A7M04ywnI3+F30eZJLDlreIMsY=
Date: Fri, 13 Nov 2020 14:29:37 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
Message-ID: <20201113142937.GB4828@sirena.org.uk>
References: <20201104234427.26477-12-digetx@gmail.com>
 <20201110202945.GF2375022@ulmo>
 <20201110203257.GC5957@sirena.org.uk>
 <72ae6462-13df-9fcb-510e-8e57eee0f035@gmail.com>
 <20201111115534.GA4847@sirena.org.uk>
 <dd26eb18-8ac4-22a6-29b0-dbbe5fa6075b@gmail.com>
 <20201112171600.GD4742@sirena.org.uk>
 <b4b06c1d-c9d4-43b2-c6eb-93f8cb6c677d@gmail.com>
 <20201112200123.GF4742@sirena.org.uk>
 <ce9e2d9f-917e-fb8a-7323-f3bf1a367e9d@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ce9e2d9f-917e-fb8a-7323-f3bf1a367e9d@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1811722972848274824=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1811722972848274824==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CdrF4e02JqNVZeln"
Content-Disposition: inline


--CdrF4e02JqNVZeln
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 13, 2020 at 01:37:01AM +0300, Dmitry Osipenko wrote:
> 12.11.2020 23:01, Mark Brown =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >> But it's not allowed to change voltage of a dummy regulator, is it
> >> intentional?

> > Of course not, we can't know if the requested new voltage is valid - the
> > driver would have to have explict support for handling situations where
> > it's not possible to change the voltage (which it can detect through
> > enumerating the values it wants to set at startup).

> > [Requesting the same supply multiple times]

> But how driver is supposed to recognize that it's a dummy or buggy
> regulator if it rejects all voltages?

It's not clear if it matters - it's more a policy decision on the part
of the driver about what it thinks safe error handling is.  If it's not
possible to read voltages from the regulator the consumer driver has to
decide what it thinks it's safe for it to do, either way it has no idea
what the actual current voltage is.  It could assume that it's something
that supports all the use cases it wants to use and just carry on with
no configuration of voltages, it could decide that it might not support
everything and not make any changes to be safe, or do something like
try to figure out that if we're currently at a given OPP that's the top
OPP possible.  Historically when we've not had regulator control in
these drivers so they have effectively gone with the first option of
just assuming it's a generally safe value, this often aligns with what
the power on requirements for SoCs are so it's not unreasonable.

--CdrF4e02JqNVZeln
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+umFAACgkQJNaLcl1U
h9DRnAf/TT8I9XDaCoZsP58r0YQKOYiW9tWOMx5iUwJFikxSUl6upudJ8HrbvhS/
O1evWVxr6jTg2q8A2Rq24+SXSF7KEAINXdggEQ+N4q8l5CzBXLA84C+z5IRIb6lL
dgWqTg93CtK+XCEAKGWhAXn/nNFv8p9nol6fYYw6k8h00DJ+v04vDE/U+oofX1nn
bOkrueTE3zsDh0U6tHC2dXK7hZX5s8j+g5aN4C5B27Xip+nGg6iiGHUQmsNP33Vc
SLN6fJ7s1iNF+YNZBQLPWAeVTz44INs/8yIA6KTemFKz2lNUCozTaACHiLZTlyM2
/pcp+qCaLayuAuXMCA2bNUT5gef9cg==
=G9Fp
-----END PGP SIGNATURE-----

--CdrF4e02JqNVZeln--

--===============1811722972848274824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1811722972848274824==--
