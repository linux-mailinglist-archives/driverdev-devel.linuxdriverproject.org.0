Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA6520AD7D
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 09:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B79AD87C4E;
	Fri, 26 Jun 2020 07:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wga8zUMjgsEr; Fri, 26 Jun 2020 07:45:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA893879E9;
	Fri, 26 Jun 2020 07:44:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5871BF2E4
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 07:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C66686A27
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 07:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKCMtSM9uERO for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 07:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62BB486B5A
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 07:44:56 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id p20so8384539ejd.13
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 00:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kU/B1sJTuCokA2IOHzhwK6lGdLVmn0o+3nqsLQjCX/w=;
 b=uqOwG7jfmszvkBS98WHWlb+ErrJ3rplWAe1N+tZ70V6gaxZaIssqgJplr0HsImtDW7
 MS5sqzqzd3Zvuw1kFVHQH/ZuVjoxvGMhrdsarRePzpj0V1HRWsZmmQaoMFuHswB5t8Ql
 Y1WoO6E2ReOoLvnNjpH/CEe7yJS/MVMjnywLFKXCHcg5M7ey8FpGBHoNgBlJekFHuCSy
 V1lUpAE0379jXn2j8iinYJu6oQufioWv97KjuopapfQ3gd1edf28x8yFldi+a7+F3k3I
 m2AAQS1TMRoFfhxa+0ERvEnLPVPa+q+Afv4rQjSMrlSoMI6zy5BZ3T9FFCpvkfmnIsiJ
 tt3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kU/B1sJTuCokA2IOHzhwK6lGdLVmn0o+3nqsLQjCX/w=;
 b=jiknSFiW2yyJ3O9lNVYYVEYJE59TcUBWtzGU7V4l8rVyMwCuxplaQPJbi3YxQOupeB
 80dK/PjEzbP/CG9u/KN7x8V/MwQWU5vSQT1UjUz/bKDAy7tKbgYWzPMNAK7lj1wAhdFy
 joHi6LnK7CCJZIKKGOM8EMtoJMpT621dKUQ0wzinDRdeiSxnIbnyXMxt3nj1DhaZuitD
 yUu3t5FHY+nPJxIcN3Ht3RtaVIN6ZRRx4owVAYLHyR/nUCydJ4EZJ1cF8aTU7pruyiPu
 Qhhd+4IHCMR3x4VJOL4oGoGFjVNEsqnfuqFjj/PRSU76cGwxUA3sekR5e2RrW1E78kU5
 S6pw==
X-Gm-Message-State: AOAM533t+KcktsDTeqR+cZ0rv/n1F1ALQJQ5xf80qseHxel+coaE0gq9
 yqhoKzH8k8wBvyBkeAOlttVm9sQa
X-Google-Smtp-Source: ABdhPJwgDELHR/pkSZSgsSrSDw8660GOT3i9Uqby79Mu8x0hhTO7jsPXBWxdQfzdQdyjsShYWq3dIw==
X-Received: by 2002:a17:906:1c05:: with SMTP id
 k5mr1400352ejg.320.1593157494786; 
 Fri, 26 Jun 2020 00:44:54 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id gs6sm4815776ejb.93.2020.06.26.00.44.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 00:44:53 -0700 (PDT)
Date: Fri, 26 Jun 2020 09:44:52 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 2/4] media: staging: tegra-vde: Runtime PM is always
 available on Tegra
Message-ID: <20200626074452.GC3109062@ulmo>
References: <20200624150847.22672-1-digetx@gmail.com>
 <20200624150847.22672-3-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200624150847.22672-3-digetx@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7543838855990299967=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7543838855990299967==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WplhKdTI2c8ulnbP"
Content-Disposition: inline


--WplhKdTI2c8ulnbP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2020 at 06:08:45PM +0300, Dmitry Osipenko wrote:
> Runtime PM is always available on Tegra nowadays since commit 40b2bb1b132a
> ("ARM: tegra: enforce PM requirement"), hence the case of unavailable RPM
> doesn't need to be handled.
>=20
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/vde.c | 16 ----------------
>  1 file changed, 16 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--WplhKdTI2c8ulnbP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl71p3QACgkQ3SOs138+
s6G0vQ//dpkQN0nsvPYnk0HeH8sLhO6u9BWqfrWsCUM8ZM7Jr+G08Q7YjDLcF72K
awBVBLgjK0ZkBXmMoT64J57xHfC7O9747zPiPedoCntFPjYTC5cLXVW61LRLrZFD
aGRLXJ50YQCf5bshtmRfK+PVL2bcXvjV2fJUP+MremfE24OALFW3IkFP13BPhxVs
d2fYwTly8qqAu6eG4vj5b4wzd0u1d5Zq0qVIxE2kwb26jY+8qtLZz8Fm0d1P1jYV
FBen5xgv1x2G1KKedLyHakMXh3EjziF5SARiuM3KqpOtf3jQc3niXfxuK2ocLb43
PvpaMmCpKP9QPPcWPANtLdHb6tIpTKdvzhqSmoKKyZ1mfsr4P9Wou8V0j/csTP5q
vn4DuAaZp3ub76f84RSBb3aPen6Xtx1tALh0eONWFiuKDzKdbEDKxrO19t5eD3Fx
zSPijXgN4kxRMyDgiHIbUNMMdoF69fhO9lTB0zgl35AFM8YV3G5MozNtl8pB/ZSk
21BaDXvsHvPIuI6glZGVvSSDPDRpEz/DAu7MNOeMkOSy5vNz3mOHDhAL1gMVeU4d
KcRkYSlDnfyHizQIMTXzfsgnTazFFBx8UaKwhsKEP83xJpCeULZehO2vKib9xKJm
m4ig+UbpWnkync+LRXUGBph3gDX8yvoTaRjotANmfK8upi0VBu0=
=8Q9h
-----END PGP SIGNATURE-----

--WplhKdTI2c8ulnbP--

--===============7543838855990299967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7543838855990299967==--
