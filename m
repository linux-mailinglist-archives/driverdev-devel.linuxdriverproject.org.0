Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953312B44BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:33:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28BFE870D0;
	Mon, 16 Nov 2020 13:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eaCS-50laPAS; Mon, 16 Nov 2020 13:33:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 380DE870CD;
	Mon, 16 Nov 2020 13:33:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87C481BF2EC
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D6898686C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKle2wyZuhzs for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 13:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AE9186841
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 13:33:30 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C9B522240;
 Mon, 16 Nov 2020 13:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605533610;
 bh=AfprN1MLPuZxPJwWwhQ10Y05soQ+6PcoI/dzBev3uK4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TvMUPFfEnYP+7X+I3jS+BXXvuFdvsu7NObQM9gv3lyhncPwBvdgPZlymPe5fe5a3m
 2KnG9/v/PHJePREmnrtVnbtuyG+VQu8l3LuvhED4Ys4T/ruz+EAGsYatEYG75BgSL0
 lfVz49hRDbF2lTeo3XY3s53AU53yvuriDvJOgIOY=
Date: Mon, 16 Nov 2020 13:33:11 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 11/30] drm/tegra: dc: Support OPP and SoC core voltage
 scaling
Message-ID: <20201116133311.GB4739@sirena.org.uk>
References: <20201112171600.GD4742@sirena.org.uk>
 <b4b06c1d-c9d4-43b2-c6eb-93f8cb6c677d@gmail.com>
 <20201112200123.GF4742@sirena.org.uk>
 <ce9e2d9f-917e-fb8a-7323-f3bf1a367e9d@gmail.com>
 <20201113142937.GB4828@sirena.org.uk>
 <7f066805-97d9-088f-e89d-a554fe478574@gmail.com>
 <20201113161550.GC4828@sirena.org.uk>
 <3beaa12b-4a50-a3b6-fc43-ebb5ce7a8db7@gmail.com>
 <20201113172859.GF4828@sirena.org.uk>
 <74cfc6a9-3f59-d679-14b7-51102a6f11b3@gmail.com>
MIME-Version: 1.0
In-Reply-To: <74cfc6a9-3f59-d679-14b7-51102a6f11b3@gmail.com>
X-Cookie: Immanuel doesn't pun, he Kant.
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
Content-Type: multipart/mixed; boundary="===============7203378582811777565=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7203378582811777565==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U+BazGySraz5kW0T"
Content-Disposition: inline


--U+BazGySraz5kW0T
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 15, 2020 at 08:42:10PM +0300, Dmitry Osipenko wrote:
> 13.11.2020 20:28, Mark Brown =D0=BF=D0=B8=D1=88=D0=B5=D1=82:

> >> What should we do?

> > As I keep saying the consumer driver should be enumerating the voltages
> > it can set, if it can't find any and wants to continue then it can just
> > skip setting voltages later on.  If only some are unavailable then it
> > probably wants to eliminate those specific OPPs instead.

> I'm seeing a dummy regulator as a helper for consumer drivers which
> removes burden of handling an absent (optional) regulator. Is this a
> correct understanding of a dummy regulator?

> Older DTBs don't have a regulator and we want to keep them working. This
> is equal to a physically absent regulator and in this case it's an
> optional regulator, IMO.

No, you are failing to understand the purpose of this code.  To
reiterate unless the device supports operating with the supply
physically absent then the driver should not be attempting to use
regulator_get_optional().  That exists specifically for the case where
the supply may be absent, nothing else.  The dummy regulator is there
precisely for the case where the system does not describe supplies that
we know are required for the device to function, it fixes up that
omission so we don't need to open code handling of this in every single
consumer driver.

Regulators that are present but not described by the firmware are a
clearly different case to regulators that are not physically there,
hardware with actually optional regulators will generally require some
configuration for this case.

--U+BazGySraz5kW0T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+yf5YACgkQJNaLcl1U
h9AVMQf+IoDe7CVrA+pGhJ28AkcYg8sn+fM3Rc1IOht/iu21+rnclIoozR+TXdQS
Jm4mLzjjC4nogj7AsCKZhCKkWguwmpqIJMNSgmWoVJ74EOVlelev8tfIq9Ih2wNS
OfwLqZWOpetdcf2LYiCCMhJtAsfS0c8vaqXWKQyTFc1I12BSuWZD+CPPtw8c3h97
grOgbw1i3OIO5veJ0o6Ia96tJGNokju2054eJsAP0I+H5KXg4emm7um4AzSDmNh+
ewuLlkg4vtgEtT07Vf59X4CD3TEiHzZJpg6ADEaZmbDRYkPeogIw1W7R1lPJ/ahg
9kpqISDUQWH2TtJJXqZWteiMDzVYsQ==
=DOOy
-----END PGP SIGNATURE-----

--U+BazGySraz5kW0T--

--===============7203378582811777565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7203378582811777565==--
