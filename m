Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1902FB677
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 14:47:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 017B785092;
	Tue, 19 Jan 2021 13:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wy0tLCPBzE5r; Tue, 19 Jan 2021 13:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94639850E0;
	Tue, 19 Jan 2021 13:47:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 528401BF313
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 13:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EABC86587
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 13:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S6R0w3pfPZ-M for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 13:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C89CF85CDB
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 13:47:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AF27D2250E;
 Tue, 19 Jan 2021 13:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611064020;
 bh=x3Nf2PHRn9TwCsGFAWZvhYd7uIrj1x5RZr9UBFNVJvc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZRtWhGL1UcgDyQqM/m9RtVxZGLZTxGdjkFunj+TAhpCLnecQy5vaei/eZCiA0ckLn
 A3NgGUUZzwkuMmtLooMWt7LzaogkfIrenb/WeqHQ7mTxXwOcGp5K1w5zs3qf6n1YD3
 tL87yZ4LlXOlnqvldr4acw34XgwhEb68B64vToLmy4foHDvRUDGKE+8E3uh9rx9JqE
 P1iMOmlQqlq7v9zwFA7oF881FFTMtenUU1ZF9Cg3udLzA/TZroHSX2XJuTkQsT6NxA
 C3q8Mo1org1pLAMf8AbsCYopDazNeJSYJo4wnGGD52O5DDiT+8M3OBGfaWunr3LLBw
 dAxQlFxMSSw7g==
Date: Tue, 19 Jan 2021 13:46:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v3 15/18] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210119134622.GB4478@sirena.org.uk>
References: <cover.1611048785.git.mchehab+huawei@kernel.org>
 <aa17f0fee8cfcd654e107897d350cb3b0438763b.1611048785.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <aa17f0fee8cfcd654e107897d350cb3b0438763b.1611048785.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: multipart/mixed; boundary="===============3849962094025496442=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3849962094025496442==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UHN/qo2QbUvPLonB"
Content-Disposition: inline


--UHN/qo2QbUvPLonB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 19, 2021 at 11:14:20AM +0100, Mauro Carvalho Chehab wrote:

> +int hi6421_spmi_pmic_read(struct hi6421_spmi_pmic *pmic, int reg)
> +{
> +	struct spmi_device *pdev;
> +	u8 read_value = 0;
> +	u32 ret;
> +
> +	pdev = to_spmi_device(pmic->dev);
> +	if (!pdev) {
> +		pr_err("%s: pdev get failed!\n", __func__);
> +		return -ENODEV;
> +	}
> +
> +	ret = spmi_ext_register_readl(pdev, reg, &read_value, 1);
> +	if (ret) {
> +		pr_err("%s: spmi_ext_register_readl failed!\n", __func__);
> +		return ret;
> +	}
> +	return read_value;
> +}
> +EXPORT_SYMBOL(hi6421_spmi_pmic_read);

The I/O here looks a lot like regmap_spmi_ext.

--UHN/qo2QbUvPLonB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmAG4q0ACgkQJNaLcl1U
h9Bu+gf/QL/7v3L34aIxXW3kud1F+4veVCvL3XD1ZfuYTqQp907pWqUKpPqGQbec
mG66jEV1IR/iRNjHwbrZYak3VC/SJHREm6/NDANQKNH28IL6AG0nLiCPpGW3ejJP
f4dUMyzVs79uMNEOVXGwOejOLtKt8eHvZM4ESbbUFXUR3aeelLsNoKYdWwKgC2Kx
hnbC8aSIw+wugd/AjS5MhDngdCgN9J0JoIIhrIqW252iiKFaqD+4hXFZrkXOiOVe
WcTyBgpXqsocPPrTlOGHbHOEjah3Yl4DP1otSN+9WbLGjBP6CU472HvcDHXNYzs8
PzFPUxDqDBSQGyz3QAEw4Me3yxFzGg==
=H1ya
-----END PGP SIGNATURE-----

--UHN/qo2QbUvPLonB--

--===============3849962094025496442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3849962094025496442==--
