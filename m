Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5524B305AC0
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 13:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39612871B6;
	Wed, 27 Jan 2021 12:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmusfaWIC20Z; Wed, 27 Jan 2021 12:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A1A38718E;
	Wed, 27 Jan 2021 12:05:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5642B1BF5E6
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 12:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E64786452
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 12:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGwVn1fT3JAl for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 12:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B85F086429
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 12:05:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD01220781;
 Wed, 27 Jan 2021 12:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611749109;
 bh=3RBTVL1iF42NCBHvowP/tzdrAJTD7tRnl7zSmjKg/BU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RqiTxbZ+x1490GbJal6dfrK8j/avd6fsnOy+FrkbXMElpnrSd3nLHJDKtC2Mz5y6d
 ChtaV0tRp36ta2YMGyfuLXxdCdBmK96FpKGkW8mHtEdX371me5Mqwvpp4YXJhXdlEs
 OGTwXdUPK/SHwqWHUwxhI9XAkWhpAX9eSSpSb1NDQy5hFjqGVPleJDzUOatmguqZUI
 YolMtRHNDRPs4pdP5iOD2bSl5VuxPxkk1xjgxE76ykYL2BGXufO3Qw4QVweCnWb/1e
 nfvCxRX6ZKMZIHguB4ysQDYP8dyTaUn6Cp6wqLtlSKuj7p7Cj/ueKMFnIoQub6ITTP
 hApq6CKKK0jqg==
Date: Wed, 27 Jan 2021 12:04:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <20210127120426.GB4387@sirena.org.uk>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
 <YBErBByYD8lNIWAX@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YBErBByYD8lNIWAX@kroah.com>
X-Cookie: La-dee-dee, la-dee-dah.
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-arm-msm@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7821469191379041957=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7821469191379041957==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RASg3xLB4tUQ4RcS"
Content-Disposition: inline


--RASg3xLB4tUQ4RcS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 27, 2021 at 09:57:40AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Jan 26, 2021 at 06:11:24PM +0000, Mark Brown wrote:

> > > Do you need a tag to pull from?

> > It'd be nice but not essential.

> Why do you want/need this?  Having these changes in your tree is good,
> but what about other coding style cleanups that I will end up applying
> over time before the 5.12-rc1 merge window opens?  Are you wanting to
> take the moved driver in your tree, or something else?

I want to apply the regulator driver so I stop being sent this patch
series which will help keep my backlog more manageable.

> Traditionally moving drivers out of staging can be done 2 ways:
> 	- all happens in the staging tree, I take an ack from the
> 	  subsystem maintainer that this is ok to do.
> 	- A new driver enters the "real" subsystem tree, and then I
> 	  delete the driver in the staging tree.  This doesn't preserve
> 	  history as well (not at all), but can be easier for trees that
> 	  move quickly (like networking.)

The whole reason the driver is in the staging tree is that Mauro has a
requirement to do things in a way that preserves history and so won't
send any non-incremental patches.

> Which ever works for you is fine with me, but relying on the code to
> stay "not touched" in my tree after you pull it almost never happens due
> to the number of drive-by coding style cleanups that end up in the
> staging tree every week.

I'm sure someone can work out the conflicts if they're going to happen.

--RASg3xLB4tUQ4RcS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmARVsoACgkQJNaLcl1U
h9CwZwf/Y4GV970+UoDmVlH4gvV6PpELe5BpI9sfABbfvY4sD+ozqjiJdzjRecw3
yn5O3nm62AX6VR3vEhua6wA8iZAg6ShI1kVX8u8atddzuPwPDYkIjjW0y94kI5j0
Fle7XbIJQpaSkFOykOaqKe6PoVl/CdGXp2dQ1Dvno6LecZnEkalJ47lSdLawUgax
9POSQ0pg5htrSwGfBSjsmtIO1szwkuJs2KTn/nwQR+EF9+HMZH/fdDOwoslB06cA
m+SM+rQyE7O/cbEZepBc1REC9ND4cpZPIQ9VmodaoqajQ89oSdGf3dhN8RaFpBWq
9j/SadeGlnCgk583W33vC5H3R73uZA==
=Voti
-----END PGP SIGNATURE-----

--RASg3xLB4tUQ4RcS--

--===============7821469191379041957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7821469191379041957==--
