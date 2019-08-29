Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA66A1A49
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 14:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D557888841;
	Thu, 29 Aug 2019 12:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qFiydB79+Xe1; Thu, 29 Aug 2019 12:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D4A088321;
	Thu, 29 Aug 2019 12:40:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B15E51BF380
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 12:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADCF08831F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 12:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NF6aPk-lYZmT for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 12:40:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AAE168831B
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 12:40:38 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id g24so3933098edu.3
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 05:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wmJIhmpe5eh+/gW/vr2H2oqa0HY38tUTFnJyQ/g2lnw=;
 b=BEHX6O5kpPqJazg+Y2J0VIoeG6AGVw4bHdRUQz3Gp24W7bpATqmb1cfj0SUVh8svAj
 jiNgAROYNIATDIu9Mh2tlTxusICw/9IFN/1wKDB5WUfdvb+Vsab94ha496M/YAk/tAiR
 YENrFGmeZ/jNzTJOv9nr4gztoyemotgelzf9AugZtZ36/RY6JSlCcJJyXO680UrNfmjf
 PgZ+lTtcUUsC291zWbuA4EjqHWemFIe2zMX+Ata+yPcafZfq96PszMER/vtQ6ZiNuYrX
 1DfAvqVgff1f7PcBVSCLE6C+l/bYgJ66YeekAN69XoYJgO+WzUSmqzMDKSf96bGPAgHe
 1NLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wmJIhmpe5eh+/gW/vr2H2oqa0HY38tUTFnJyQ/g2lnw=;
 b=s3MUasL12R7z1EtiFLRiUS01V6AqrPNkkxPzsNHMJoZHDH5P1fVKjrrnpToQdLpafx
 1qMxqN96FAf0U92kOMAxPelo1BP44WQnc+rB89H+iLMKGjn+yQkFJWJM5F856v/rKMs9
 aZ0CAE1W2DGQEriBp+EKyRVSQH0H9AufDJD3OjwCGvFRsLKx/K74Voj1euP5ouAP8c7c
 WxxloO5N/yZFph6zeCyFiHORcmGBxWSeupHy0719cKaEWv7lzlFXtZ49XKw9d6qIGQsk
 /a/U2FcS35k8mpHzvIwQa1Awu3G27U5O6C2XYSHG9aT7g4xLfgvHdGimu3E0NB4se53M
 7vCg==
X-Gm-Message-State: APjAAAVPTBmaqx2hJSCuPjLU9ud+kGpS93xFdk8HdE1nbxGT7esXDS0z
 vMiDONCkmE7BsqISC6JEfWI=
X-Google-Smtp-Source: APXvYqwH9FMfs2BkjfucZGdoByxkMhDUjVy7mZQxKMVesrJgd1wU7+pYohArwwuIOgvcTiwdJw/6Vw==
X-Received: by 2002:a17:906:c2c9:: with SMTP id
 ch9mr8121634ejb.167.1567082436874; 
 Thu, 29 Aug 2019 05:40:36 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id l26sm367862ejg.70.2019.08.29.05.40.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 05:40:35 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:40:34 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH] media: staging: tegra-vde: Disable building with
 COMPILE_TEST
Message-ID: <20190829124034.GA19842@ulmo>
References: <20190826133140.13456-1-yuehaibing@huawei.com>
 <7f73bcac-f52d-f1b3-324c-e9b551c5378b@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <7f73bcac-f52d-f1b3-324c-e9b551c5378b@xs4all.nl>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 jonathanh@nvidia.com, iommu@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, digetx@gmail.com, mchehab@kernel.org,
 robin.murphy@arm.com, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4556206933643941543=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4556206933643941543==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2019 at 01:39:32PM +0200, Hans Verkuil wrote:
> On 8/26/19 3:31 PM, YueHaibing wrote:
> > If COMPILE_TEST is y and IOMMU_SUPPORT is n, selecting TEGRA_VDE
> > to m will set IOMMU_IOVA to m, this fails the building of
> > TEGRA_HOST1X and DRM_TEGRA which is y like this:
> >=20
> > drivers/gpu/host1x/cdma.o: In function `host1x_cdma_init':
> > cdma.c:(.text+0x66c): undefined reference to `alloc_iova'
> > cdma.c:(.text+0x698): undefined reference to `__free_iova'
> >=20
> > drivers/gpu/drm/tegra/drm.o: In function `tegra_drm_unload':
> > drm.c:(.text+0xeb0): undefined reference to `put_iova_domain'
> > drm.c:(.text+0xeb4): undefined reference to `iova_cache_put'
> >=20
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Fixes: 6b2265975239 ("media: staging: tegra-vde: Fix build error")
> > Fixes: b301f8de1925 ("media: staging: media: tegra-vde: Add IOMMU suppo=
rt")
> > Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > ---
> >  drivers/staging/media/tegra-vde/Kconfig | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/staging/media/tegra-vde/Kconfig b/drivers/staging/=
media/tegra-vde/Kconfig
> > index ba49ea5..a41d30c 100644
> > --- a/drivers/staging/media/tegra-vde/Kconfig
> > +++ b/drivers/staging/media/tegra-vde/Kconfig
> > @@ -1,9 +1,9 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  config TEGRA_VDE
> >  	tristate "NVIDIA Tegra Video Decoder Engine driver"
> > -	depends on ARCH_TEGRA || COMPILE_TEST
> > +	depends on ARCH_TEGRA
>=20
> What happens if you drop this change,
>=20
> >  	select DMA_SHARED_BUFFER
> > -	select IOMMU_IOVA if (IOMMU_SUPPORT || COMPILE_TEST)
> > +	select IOMMU_IOVA if IOMMU_SUPPORT
>=20
> but keep this change?
>=20
> iova.h has stubs that are used if IOMMU_IOVA is not set, so it should
> work when compile testing this tegra-vde driver.
>=20
> Haven't tried it, but making sure that compile testing keep working is
> really important.

Yeah, that variant seems to work for me. I think it's also more correct
because the IOMMU_IOVA if IOMMU_SUPPORT dependency really says that the
IOVA usage is bound to IOMMU support. If IOMMU support is not enabled,
then IOVA is not needed either, so the dummies will do just fine.

Thierry

--2fHTh5uZTiUOsy+g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1nx78ACgkQ3SOs138+
s6FjdBAAjPVTLKQa12c+8O/ecTX4Bkd37JWHnmOyfuQByXvgyFwDufWK1I19NpQh
gunYeGFxSe36t4aIK8w27Jtr86Zo7tw8xUmNs2cZrNLZahvEx4DERmV3VeqqKv8L
hNjLT61akI4MlN7rGpRcwbUrtL39NJW3msO/NzvnZAy8EetobwDPVkcyhG+XfQhc
XsNXJhnvj3W5PR1+RzhL1i2UGwpc4HhLEFjHgzHcBsVgo6QixR/vSCNQ+mJPEcsz
G5NRpG8zqh6gGUCs4Fxi2Pn6FwWqYaqyqBbSZoAydYULWMhEUsZPTiyihsOP2PxM
V8ni2vhx6hzqlr0Sml5LfsT8eDjuKLFHacfFzg0ediSy7HI3p8hxotcdZXfJ0T9G
q1W7wK5WDhA3FP/z9iBQRjryaTUUQtf/F1NBMvTPvIfUipxqcgYq2/SayQ12g/9l
e36ocSD+yuI0sZNa549AVTF5hYmmbkGAcrX+vF6OB0e0tGZoPAmBvQwd7XH2MHzI
T2r6b1S4WMlZ6XX4ko8boqXVGzO8cGybF2S3pdNnQrWQc/EiFimCLlxVFjdvR6w2
MdzxVAYlU47MNIhMaCbOCzEW5lq6krlMSVC3vpK13RGegyM7LHp5XXrhnRk5n6yf
Ap68NCbc9fsg3oNPcddpiHnadEVLap36FWSpLixSYuZLUevnhZc=
=jI77
-----END PGP SIGNATURE-----

--2fHTh5uZTiUOsy+g--

--===============4556206933643941543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4556206933643941543==--
