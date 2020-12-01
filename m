Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87C2CA5BB
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 15:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B76021FA9;
	Tue,  1 Dec 2020 14:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cYNqg0tvyWRb; Tue,  1 Dec 2020 14:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F149E20762;
	Tue,  1 Dec 2020 14:34:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 182CE1BF290
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 14:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE7BE2040B
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 14:34:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lVzh7KtdCUgB for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 14:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4F083203CE
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 14:34:50 +0000 (UTC)
Received: from localhost (cpc102334-sgyl38-2-0-cust884.18-2.cable.virginm.net
 [92.233.91.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DDAA20757;
 Tue,  1 Dec 2020 14:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606833289;
 bh=MyXMx5yXcwhyHoSDPi4JqwtH6IbreqZ2dffpm2rMrnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dk2mKbi0tMydQDEKwILrugaQ4+lDOei99EiGyEzw8miGGC/enajtGKrNxNAgOh19d
 bUolBQkpIVH3Hui3nBJELnqmmCNUkGvsVFhpqQ5K0vNjOLXzgTLtjz0BPDjBiyCFTO
 H6YlxqFYzbMW5dFfkwv/1U0YroBSdxaecQ6rhs4U=
Date: Tue, 1 Dec 2020 14:34:20 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
Message-ID: <20201201143420.GD5239@sirena.org.uk>
References: <20201104234427.26477-1-digetx@gmail.com>
 <160683107675.35139.13466076210885462180.b4-ty@kernel.org>
 <858e4183-5064-084f-9b80-870e118c3edc@gmail.com>
MIME-Version: 1.0
In-Reply-To: <858e4183-5064-084f-9b80-870e118c3edc@gmail.com>
X-Cookie: Who was that masked man?
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
 linux-pwm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: multipart/mixed; boundary="===============9073776407641475222=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9073776407641475222==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SO98HVl1bnMOfKZd"
Content-Disposition: inline


--SO98HVl1bnMOfKZd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2020 at 05:17:20PM +0300, Dmitry Osipenko wrote:
> 01.12.2020 16:57, Mark Brown =D0=BF=D0=B8=D1=88=D0=B5=D1=82:

> > [1/1] regulator: Allow skipping disabled regulators in regulator_check_=
consumers()
> >       (no commit info)

> Could you please hold on this patch? It won't be needed in a v2, which
> will use power domains.

> Also, I'm not sure whether the "sound" tree is suitable for any of the
> patches in this series.

It didn't actually get applied (note the "no commit info") - it looks
like b4's matching code got confused and decided to generate mails for
anything that I've ever downloaded and not posted.

--SO98HVl1bnMOfKZd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl/GVGsACgkQJNaLcl1U
h9BikAf/buTRpKtsLDzFSoQBjj73gw+9m/quyO+03JWRrvv3U6Me8tZmCZHGcAhJ
5+PFS79ESOLZrypMM4IE6HEK1cq0AFNjUDMqVKtWFP4GgZ8LBjcLvSF8OYkdHwo7
TiUsxAOnhequj3OhP46T/AuusHAX53D4Fg4rLsJMCrJygo0e6kAaOB7F9ZlJqNQt
A3pk4g+mC153uBGhCsZRWQmj93R9SxH6vUd3g6ePE0jIZAqa3LSJHdYX3xRSfQWd
Iojrsh3QYMFNdrajfbhAcn9hyXU1O2Zy0NadudYbqOIYWBQ5TEbW8z55BJLr1a2O
09Ob2CqfLC5c6oPrJJtjRMGm4w8iaw==
=1gdB
-----END PGP SIGNATURE-----

--SO98HVl1bnMOfKZd--

--===============9073776407641475222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9073776407641475222==--
