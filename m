Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8F320AD76
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 09:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 419D6883F0;
	Fri, 26 Jun 2020 07:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJg9trI-29Ma; Fri, 26 Jun 2020 07:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6BC38830F;
	Fri, 26 Jun 2020 07:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E9FB1BF2E4
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 07:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 65EB18830F
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 07:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iA13+1DmgDOq for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 07:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 542B388305
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 07:43:38 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id rk21so8443766ejb.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 00:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3yJ82f9BPEQUN7JLYmeqgANkQ0MjK9DvwvjuJ/fNfPo=;
 b=Nn06aiq83iYmWi0EkxFhcC3cdp2tRFj4IjGqSjmF/POte6PFnDxFYoVA+u/jzpBNq3
 UD23kLfqwMAICTvv4tZojnM2RyCqLIrKbqLwacwTFLlKUo5sBPvRfvg3Lhho5o/IM+cE
 YDtGs6gE0vEkPPfnscsF6KcmZVlgbLy6E7kb7fM/4ll7pJEOo4bhdBISPSWBXM2ywmSl
 j1UHerRv65FPRKqE1I8PaTCl8ZZd7I1G5LVXMom3o4cY0YQzPlhQJd1N71mZsDg20Bdj
 NDu/ucYreZCIlqr2oBj1cOL1DElEgYbmAmvDsTGe1tBEDc+1omKF3nKXWBkhkz9z1nvh
 q1aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3yJ82f9BPEQUN7JLYmeqgANkQ0MjK9DvwvjuJ/fNfPo=;
 b=olc3b0vw9PvQHE2vSdy1cAXlyvaxkMrBgohMfrdf7lT3LJhZLO7ERZw6LR1PstMj/2
 MuhX6U15gKV4poo+ms1a0fZrIXdo32nHd6j/30gVsk5uEo5NY+ctA37qICa4jdsyoeuB
 VCJBAx2V1Xwy6Oi3RrQRHV1fIx6jSDfMOFIz0GJ7pMhGqV9oJjsDIJJ+B6N/Ysdo53WD
 8KkdrxADV2TaTS7VPvGrski08xCQD6+ayPVt/NhH0m7omxWinrnlK7IHeMkgQE4g9m1j
 rxA78FfmIRSjg1q2Byt/t4JrLP1NmlZk+hRygPHREmeoOhC0Pt7I1l8bRfnMG+AV5+NX
 xf6w==
X-Gm-Message-State: AOAM533Fan8OvU8809G2ndsNMQszEiOxt35EY+AwwDfXubU7A3bK5l61
 i1MnpC0v50N8iJvF3rkJCiA=
X-Google-Smtp-Source: ABdhPJyMuYQbZiFGkRDmBWgsi5klIv7Zbl33i2Thb5I4DzbIWId5Oe4mx8pFBA08+4iCtQfnQi044g==
X-Received: by 2002:a17:906:4f13:: with SMTP id
 t19mr1373989eju.269.1593157416369; 
 Fri, 26 Jun 2020 00:43:36 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id g25sm20051925edq.34.2020.06.26.00.43.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 00:43:34 -0700 (PDT)
Date: Fri, 26 Jun 2020 09:43:33 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 3/4] media: staging: tegra-vde: Turn ON power domain
 on shutdown
Message-ID: <20200626074333.GB3109062@ulmo>
References: <20200624150847.22672-1-digetx@gmail.com>
 <20200624150847.22672-4-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200624150847.22672-4-digetx@gmail.com>
User-Agent: Mutt/1.14.4 (2020-06-18)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1886423902573483136=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1886423902573483136==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+pHx0qQiF2pBVqBT"
Content-Disposition: inline


--+pHx0qQiF2pBVqBT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2020 at 06:08:46PM +0300, Dmitry Osipenko wrote:
> On some devices bootloader isn't ready to a clamped VDE power, and thus,
> machine hangs on a warm reboot (CPU reset). The VDE power partition is
> turned ON by default on a cold boot, hence VDE driver should keep power
> partition enabled on system's reboot too. This fixes hang on a warm reboot
> on a Tegra20 Acer A500 device, which is handy if Embedded Controller
> driver is unavailable, i.e. cold reboot can't be performed.
>=20
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/vde.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

Unfortunate that we have to do this, but looks fine:

Acked-by: Thierry Reding <treding@nvidia.com>

--+pHx0qQiF2pBVqBT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl71pyUACgkQ3SOs138+
s6F5dw/8CW7nKPapQO4CpytXDxMMoCTTtQyWgDFYQ/xU3ylzovRIiKhI+LeVqVTn
Rdi4QA5q5nZPPASa5H9gKccbKel0rgoZFmRt0Lfsz49e/vM7VsoN0+STNG0/cLP8
cn2+ZKSNi1Pdp+kjoHdet3Lep5X3u3wRWlYP18r6D2zRC40WQnV9xzREOwoLZbi2
6MqN1AgbJoLJuKjSFLTqWmegx+J0UtpNhU7SMzPT4BzyGSbssdsu4dkBzDsknq9X
tXGCHE5yYwNZ8L4qqZJHs5Z9B5Xgt4S8hoV3fLHBPHiULPsPbqRrCu/Olto1z2br
wNfzo3idaet4Rpt1LeaIQf4XFikpOyJzFAmWk05rrcdOV98lGDS/wYiffwl0VF9C
FaYtJpoQBKLWAlAGtDyYOUCdpRsRnTYr2D8fQU5li5E+NixhF0MmIAkKmBty8w9l
3sO3na4DMbOmVv6TyT41jpWyYQBgENBeQm1CyxifcgdvTcnuXlW3LAShO3BlVuRi
pEOKovKDd0o/BDnjrcJCBuXebZjFs9tdJMNFnvWcGFcgmW48Q1NNrn+8uJhCEjej
8dX50tDvBKvGgD7rhQ5XhV/UxSU9pi5WjHBWzWuPoQo3M0prZzktl6aLRZCMT6Wo
NIxCf/cuXOtvwQrGeVse3gFZijVOJdNs0OdVbIsCCAEmOthIDl0=
=jvXi
-----END PGP SIGNATURE-----

--+pHx0qQiF2pBVqBT--

--===============1886423902573483136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1886423902573483136==--
