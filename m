Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DB72FBEE4
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 19:26:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B1CD85631;
	Tue, 19 Jan 2021 18:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RA9nCZKuTgxK; Tue, 19 Jan 2021 18:26:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F14C8506E;
	Tue, 19 Jan 2021 18:26:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB8411BF298
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 18:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA72920470
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 18:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTuvcCOxqGGG for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 18:26:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 192B320437
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 18:26:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F2DFA23138;
 Tue, 19 Jan 2021 16:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611073229;
 bh=64AjEifXMNBvzlHCnURQuhMqMBw4Vwtflqm/WmV7xqA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lQnKmZmHTzUoU3y0IQQczbLSgD41b/i4VaQAl0Q7EADTORfEpLNVAAZnJlK5XXbGJ
 5ZytsC9pjcsoeQC4WbX9PjjXgcHx2DBnt6zE4xXwEk8GWrukCpcMPLlVw02ljRfGaz
 cM8uoD0qwGAfr1TOs8Vnf7sdHi2cWruKJTM6ZKPaFI5kjmve+9wIQl498QeB0C0Di0
 xs/+QdGyxtLIbVppucqHdqZXEmcWXvLf3A/aVhqj2QiA1pLoV+x4BCbS5b5NCb3NDT
 qPcDxw9WD1qWYghoUeT5OdMGXfRCZwn4PumH6KZAI7GloHNN4Su2lWD7wYsXcwNcUr
 amSST/on2GxTQ==
Date: Tue, 19 Jan 2021 16:19:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 19/21] regulator: hi6421v600-regulator: move it from
 staging
Message-ID: <20210119161950.GC4478@sirena.org.uk>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <8000252dfd10677c5eb52d498e68de9c65304cf4.1611072387.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <8000252dfd10677c5eb52d498e68de9c65304cf4.1611072387.git.mchehab+huawei@kernel.org>
X-Cookie: Yow!  Am I in Milwaukee?
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>
Content-Type: multipart/mixed; boundary="===============4955021828489562894=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4955021828489562894==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sHrvAb52M6C8blB9"
Content-Disposition: inline


--sHrvAb52M6C8blB9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 19, 2021 at 05:10:45PM +0100, Mauro Carvalho Chehab wrote:

> +static int hi6421_spmi_regulator_get_voltage_sel(struct regulator_dev *rdev)
> +{

> +static int hi6421_spmi_regulator_set_voltage_sel(struct regulator_dev *rdev,
> +						 unsigned int selector)

Now that the driver has been converted to regmap these are just
duplicates of the regmap helpers.  You may also be able to use them for
the disable() and is_enabled() operations, I didn't confirm that that's
OK with the device using multi-bit enable controls for some reason IIRC.

--sHrvAb52M6C8blB9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmAHBqUACgkQJNaLcl1U
h9D3Owf/cbGWiEnDSCjUCkOceFn1nPslHI9p0GCP6typnAUlLJ5ncPcclNGCVhiE
dO8v80ZBl17ZHecxXkObmnjtpTMM0m12onuk+Ack8o/5r+MM8kdl3funGXhgASzc
Ep7bY17fo4a2xUb6l3/usDfK/FTmKXuyKc3ac2Jj1efxgjbMR3qAIBEBvPOyMQRn
UioGpSk2fCnM3Rth6Ds+0Ao5IKHiHQaek5cxcypOpRmjUOCqBZ4Zg3qXMEXgIM4a
OlN3PQFPRG2SfdZgPwUpGJ1VuvVP2PC3PkTTvntwMu08N0m4QFjy/laEfvREc0Nv
U4+mfeyAsATetiwCfC0CPaWqgCF+9w==
=gGRY
-----END PGP SIGNATURE-----

--sHrvAb52M6C8blB9--

--===============4955021828489562894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4955021828489562894==--
