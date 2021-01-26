Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431623045CE
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 18:58:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EFFB87061;
	Tue, 26 Jan 2021 17:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JLkww7xfEu0; Tue, 26 Jan 2021 17:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0934D87001;
	Tue, 26 Jan 2021 17:58:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39FA91BF2EF
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 36548867AE
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12TDNe8DXo25 for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 17:58:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB24E86755
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 17:58:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9D2A22228;
 Tue, 26 Jan 2021 17:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611683915;
 bh=JqysvydwDUKj1yfhbxxNYxFV3o0GLYfGUQY0dhuSy8E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DKsiFyHZdKqd8yujcPLEsK5kbxR3hgBE+vDlm45CwddOk5jvn6QoIYatuDQWgvjGG
 +GLG9bAs7mzkpzWI5wmhx1THuHpc19n2qEZbau+ZmlR/t0rtRuWu5qFszGtdbxYZGV
 /U5bUTApJocxMtffqhaF2NJNlNXE3x91CsnQgBynPSD3wdQHNCSvMsROTE80JNZqGP
 scUmSTXHw1Ye9TDzRV/3iO7I5+0bLaXEL9gPobm2hPGCCn3s46OlysZLeZlA7xTfYL
 305JXjPGaz6zGYceaBz8LO3xEWtFBD9h8VNTS8tGxxsU4vbcoMldL41ZmVPJB5tOBb
 WIGedf1b3xszg==
Date: Tue, 26 Jan 2021 17:57:52 +0000
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <20210126175752.GF4839@sirena.org.uk>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YBBXcdLbj92yMJhw@kroah.com>
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
 Rob Herring <robh+dt@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2621834086308357136=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2621834086308357136==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FoLtEtfbNGMjfgrs"
Content-Disposition: inline


--FoLtEtfbNGMjfgrs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 26, 2021 at 06:54:57PM +0100, Greg Kroah-Hartman wrote:

> I've applied the first 13 patches, except for patch 3, as that did not
> apply, to my tree, thanks.

Is there a branch we can pull from?

--FoLtEtfbNGMjfgrs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmAQWCAACgkQJNaLcl1U
h9DWLwf9GOwp0ilayT81yRRDzKHtM/R3iAuHhu+73HMAoE1RVse5WGuQJZdgfuzz
RGMUEVfOhxguPn/C6yzxTcPWJbrF7vlyfqR5a0wrD725Y4eVsVVCVvW7wsZW0Vcr
s1FnzFGzfgEhuL+EOWzvB8cJoW6G+mz/8Ddez5VIK/syAtarmrYHDqUH5Nuox914
R6FJD37IyTE3/P2ddv8jltJYaepL15MgI2A/5PqeI2jqRcZ1wshafliorZ0ISfnh
2IncyITNtZKJQAJ2+b3gHxr9UaW5kJeQL+fuUxKsQB8rAZ+m1ixiw97FmI4pMr+W
+M6SBEeOR7dwFi3RF9ip9vlyh2k5xg==
=4XGD
-----END PGP SIGNATURE-----

--FoLtEtfbNGMjfgrs--

--===============2621834086308357136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2621834086308357136==--
