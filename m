Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B80304608
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 19:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8DE4867CC;
	Tue, 26 Jan 2021 18:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qqr6-sgtdZ-F; Tue, 26 Jan 2021 18:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B20B48674E;
	Tue, 26 Jan 2021 18:12:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CC371BF2F5
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 18:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55875204D0
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 18:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PcqLlxJnRFBq for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 18:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DA453204A5
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 18:12:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 20A7820780;
 Tue, 26 Jan 2021 18:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611684726;
 bh=37j/jpNataYZFpVX890tq37uguJ0zy2E+OtjeAdyp2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J83Q2v41VJpXFMJIOWBdp4DJpkzdEYeoFYDsIp4a8KAYHxSgYYnep3uo6HcGZSA4L
 AY3zMhC3ZlacogVThGHaGC7SQcfdO3iOMc0f2LKBLCcSo4hZSCjlxD8Aa2l3zalngu
 QwEzYUs8sd5X3UtMjtaIfq9tHtGYfZBsNEHn3Yt/2mjs1rp6fkB/xEh9b5cGL35DjR
 lu9YOQUgEA2Pyq7ibf6hZgi7ZSOSpP6jIp6S1wZFKFu6uvNOBWLkZzAExQCu8Iifz5
 PAHlJiQPpoC/4+7smILuum5+EwZLHp1Ye1Y5ch56xmCMdVvx7vSulpmGZmPPl5XNaD
 okzdqScSd+wzw==
Date: Tue, 26 Jan 2021 18:11:24 +0000
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <20210126181124.GG4839@sirena.org.uk>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YBBZP9LjXPi/rzfP@kroah.com>
X-Cookie: I don't understand you anymore.
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/mixed; boundary="===============9132087415205441223=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9132087415205441223==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lQSB8Tqijvu1+4Ba"
Content-Disposition: inline


--lQSB8Tqijvu1+4Ba
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 26, 2021 at 07:02:39PM +0100, Greg Kroah-Hartman wrote:
> On Tue, Jan 26, 2021 at 05:57:52PM +0000, Mark Brown wrote:

> > Is there a branch we can pull from?

> Once 0-day passes, you can pull from my staging-testing branch from
> staging.git on git.kernel.org if you want.  Give it 24 hours to pass
> before it hits that location.

Thanks.

> Do you need a tag to pull from?

It'd be nice but not essential.

--lQSB8Tqijvu1+4Ba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmAQW0sACgkQJNaLcl1U
h9DkuAf+I7C5HDi8sRGbQ5BB8gnyBQc1J1NvPGhgCZLqgcZ/C6kaERvIEIUx415Z
tKXNEW2y1+JCItwwxaggUZntczggAKTsttUr05nZLfggBZVfOaRlHTSocejd8ybT
8J1A5onhtDBcHHYfKOeET14kS4ie1HLWqIdOAnN/rsIcaQ+v7w+LFvJ6NxdbI1d3
LsiWeEPsfgqNZOtlP4h8cCvo2Oky2TbXFvKFz0mKa9iKb+QXfEPjdgTlJj9uJaG3
38HRI8sr652FqHQQAacySWVyKFELguBd+AOqDxTdpxrYod2vJuhgPYS+4j/eiYHp
MlLwWUv9cc+VvM2Hlx3f8g+5lWxcXQ==
=v1EX
-----END PGP SIGNATURE-----

--lQSB8Tqijvu1+4Ba--

--===============9132087415205441223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9132087415205441223==--
