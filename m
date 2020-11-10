Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 283482AE0B9
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 21:33:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4BBF123115;
	Tue, 10 Nov 2020 20:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZI1QwLBPfuX; Tue, 10 Nov 2020 20:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FF5C22F26;
	Tue, 10 Nov 2020 20:33:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 645231BF32C
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 20:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5005522F26
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 20:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntaAR-1I8Iz4 for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 20:33:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D80722E96
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 20:33:12 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A8452065E;
 Tue, 10 Nov 2020 20:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605040391;
 bh=yJTYZmAXuxpcGEJyYxHhM5frnzHMmu2d66zn6Bja/hc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0+9M3MIhvG1jKl+29RdqvQt51vR+oaGK/8GCDfVOFt7DeuVYh3d1crHlNZUC8WDds
 g9vkQkcCbbEoXNQpyaSLrzdPjoLqf+ydgGGXiFyaUf3ctGyVRw0DSvUJ1vfluiCeqN
 k/eioYuKDJ0bQsdAJATDhkiDO1uTXHoc1BDNDaN4=
Date: Tue, 10 Nov 2020 20:32:57 +0000
From: Mark Brown <broonie@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
Message-ID: <20201110203257.GC5957@sirena.org.uk>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-12-digetx@gmail.com>
 <20201110202945.GF2375022@ulmo>
MIME-Version: 1.0
In-Reply-To: <20201110202945.GF2375022@ulmo>
X-Cookie: Disk crisis, please clean up!
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
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: multipart/mixed; boundary="===============0150899303155915007=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0150899303155915007==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f+W+jCU1fRNres8c"
Content-Disposition: inline


--f+W+jCU1fRNres8c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 10, 2020 at 09:29:45PM +0100, Thierry Reding wrote:
> On Thu, Nov 05, 2020 at 02:44:08AM +0300, Dmitry Osipenko wrote:

> > +	/*
> > +	 * Voltage scaling is optional and trying to set voltage for a dummy
> > +	 * regulator will error out.
> > +	 */
> > +	if (!device_property_present(dc->dev, "core-supply"))
> > +		return;

> This is a potentially heavy operation, so I think we should avoid that
> here. How about you use devm_regulator_get_optional() in ->probe()? That
> returns -ENODEV if no regulator was specified, in which case you can set
> dc->core_reg = NULL and use that as the condition here.

Or enumerate the configurable voltages after getting the regulator and
handle that appropriately which would be more robust in case there's
missing or unusual constraints.

--f+W+jCU1fRNres8c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+q+PkACgkQJNaLcl1U
h9Di3Af+KvYDy9j9hzr4giaqciyG6ZuO/j4tEwL8vjsyaMREZ12mZ3xOOgu04UTQ
KYUtOH+AIWAUWOBwJNWEgKiRd04eMyhD6IHeCT1lip3XWBxXOEr9/YGXba3fVI/J
vvHATycSemWFAYfZ1yjhz2fAxz4zxgwujwivC1/YKWjHZi8vFTy16R9yY5Eex5l/
eplxyfun7IvJxFiVf5XDK4K2lGmn783N6VYofq6lAUknQ+TxScbl9QNyKNihB7Ys
tOgGgxJpK6+xFKP8RWC34O3W++wjUL2sUZUhvVKP059roKdB0gej+D9DnV+RCYHf
AloxftWStaHBnOpYPmbGoUoaK8isGQ==
=oCrN
-----END PGP SIGNATURE-----

--f+W+jCU1fRNres8c--

--===============0150899303155915007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0150899303155915007==--
