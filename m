Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C9E3061F9
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 18:28:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5CA88600D;
	Wed, 27 Jan 2021 17:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JzcxAsWLLy1; Wed, 27 Jan 2021 17:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8936485FD6;
	Wed, 27 Jan 2021 17:28:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA3581BF392
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 17:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E657987210
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 17:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9lr3uxUwha3 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 17:28:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B025C8720D
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 17:28:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 983C760187;
 Wed, 27 Jan 2021 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611768514;
 bh=mYtzn/q1nKLwQRM6vNVlonRfNKC+omR21A7650MMNT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CKLLrmy0SIBF0Pgq2xxc/DQ6/f4dlPuS9Zy9L9R7QWYWZTZ8MX8KCsTNd/knGvUlb
 NPIUz0tP9l4ovfbrPTeakcW4TFWFDODq9KQ0JhxQC0ke6rDCAveaiY636aWUWZ99C2
 bi1254+7GWlcuh7FKK/dIW6lL42n907P2pr1V7DsfSMUtcMIBn6CVpMVkN6M+Pcj6k
 uC72+qecvtmy9MIOfgEGKbn/OHwY/Iue+XSO05HmanQB9B5jn1qOgyr545WDYtA8mu
 wQBWlvZDfRctMjgzLgGPpYTxrLFanj61fZXsEM6O/maN/BSLbUe/EBPPVIhyXc5psm
 I0L/a3xtHNYQw==
Date: Wed, 27 Jan 2021 17:27:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <20210127172751.GF4387@sirena.org.uk>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
 <YBErBByYD8lNIWAX@kroah.com> <20210127120426.GB4387@sirena.org.uk>
 <YBFrc/yk7uvh9HX8@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YBFrc/yk7uvh9HX8@kroah.com>
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/mixed; boundary="===============0436389897073419982=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0436389897073419982==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bGR76rFJjkSxVeRa"
Content-Disposition: inline


--bGR76rFJjkSxVeRa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 27, 2021 at 02:32:35PM +0100, Greg Kroah-Hartman wrote:
> On Wed, Jan 27, 2021 at 12:04:26PM +0000, Mark Brown wrote:

> > The whole reason the driver is in the staging tree is that Mauro has a
> > requirement to do things in a way that preserves history and so won't
> > send any non-incremental patches.

> Ok, should we wait until after 5.12-rc1 is out then?

Ah, turns out I actually need up to patch 14 anyway which updates the
MFD bits so may as well leave things for now and work out what to do
once that's reviewed.

--bGR76rFJjkSxVeRa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmARopYACgkQJNaLcl1U
h9CALQf+LPgVavGx9La4+KJMbPR1EyEKu26jy8GRu6wk+6SwMFiQQUjbCZBZjEEs
UME4UHzjtdoiXx0RClRXBJVQ7C76CXNcKY4G4OaogtsmftOLxmR07ykhkoCLkIMx
xozYQjnmNgtQTFnUQjLJ4/RpVpVYAgLjQomEMROJetWtbMwEB4coiaWDuFGux8XZ
i1nhW51kyznvzezgUJnEfmmA66wToltj+R6Tx7cuwnpMLFll1oGtZNlgnHl9oxiQ
/Jge6+/XcFze/4N/jFa6YidUftYRM8mnyO89Y9Nzy+t9LnL++/K+od8CMHi7M8nI
yE+LH+Zv+1KtZa9szMsX0D/zDgOR7Q==
=qC2N
-----END PGP SIGNATURE-----

--bGR76rFJjkSxVeRa--

--===============0436389897073419982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0436389897073419982==--
