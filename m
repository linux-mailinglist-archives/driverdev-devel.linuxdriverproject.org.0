Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F6F20AD89
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 09:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CB8087C6F;
	Fri, 26 Jun 2020 07:48:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9cA24Yq5xnE; Fri, 26 Jun 2020 07:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BEF487C42;
	Fri, 26 Jun 2020 07:48:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F344F1BF2E4
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 07:48:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D180D2078D
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 07:48:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2ggIC7htRbw for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 07:48:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 981762036B
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 07:48:22 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id g20so5963079edm.4
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 00:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8ZuBpL+DueJSj3ESdnpMvaqVHDILjG0S2PgRb9yfKf0=;
 b=JsjBhJAgNeURhM0Py1PIcRXRuE04q42TcLg5/ef9+czyB3mSBr9hia7pSc7mm1qjTQ
 +r6bvyODJNEZgoJfjX6jUyVFjzir1Im8jqNrNIBDa0QAfbT6ghdgd4DDrPH/ekSy48/7
 V7mKlGZq6KOVRVkAzs+tkDkzWfHc894J2WulMQ4sW21d03SWgaIC74Ri/2C0mOc69k29
 yteCpAzK0T4J2Vm7uE3/XE62sjl5SJzAp9X3uMyNuH3dQSMK+/TywUcnt0qfkDHuQJqC
 T+9pUF4ERbpuS660WVdVaSdv7hoa/lvXZPQiewzq2LNtDSHlHIYgAKmvlRoP+XEVhO7W
 uISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8ZuBpL+DueJSj3ESdnpMvaqVHDILjG0S2PgRb9yfKf0=;
 b=n90WzevreAFNhwgFB6vRYu34l2qh+N4xQjDtC97k03o21BZaN3sDc0GkyzvL0CzJXo
 G9DBMOEMJQWriPyrDNCNrZQMnO0z7Mgfm9BhXbOF/fAXxe2aaJeuMCc6z+pyLkbmjVLq
 eEIYgl8K0zCQyuSGs36eWb7SVxbafHY8lv7r5ObS7uqnmMrZm1fkTKsp8v5hKtQFxK/L
 xRU5T1efN90LabLOpzHs/hl/NSYg7X/uoNfFpqbuO3BDSMsD/+TU5GreAd7tuZ3BDn1I
 VhEdrhnXcH3FdCwSH3mxjekD6atEg86ecYcLR7T4OwZMtoIDI6lGxU3gjvVOxQLZ2FUj
 YFbg==
X-Gm-Message-State: AOAM5301Sq3UQ2GOwgfo8AURRHfxBn6oCLRZ+2KFE6Ka8JnElfJFznwv
 nj/aOCi7jFpSCjcZPxkg3zk=
X-Google-Smtp-Source: ABdhPJyTPMnA4ZDNUga7Eq86eb1GfwZHTZUs72CRpch7F3Xlk9TokAP7DIwzvavrBSv1H028kYyzzw==
X-Received: by 2002:a05:6402:b6c:: with SMTP id
 cb12mr2125748edb.116.1593157700838; 
 Fri, 26 Jun 2020 00:48:20 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id lx26sm18372419ejb.112.2020.06.26.00.48.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 00:48:19 -0700 (PDT)
Date: Fri, 26 Jun 2020 09:48:18 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 4/4] media: staging: tegra-vde: Power-cycle hardware
 on probe
Message-ID: <20200626074818.GD3109062@ulmo>
References: <20200624150847.22672-1-digetx@gmail.com>
 <20200624150847.22672-5-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200624150847.22672-5-digetx@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5348295543476005284=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5348295543476005284==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VMt1DrMGOVs3KQwf"
Content-Disposition: inline


--VMt1DrMGOVs3KQwf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2020 at 06:08:47PM +0300, Dmitry Osipenko wrote:
> VDE partition is left turned ON after bootloader on most devices, hence
> let's ensure that it's turned OFF in order to lower power leakage while
> hardware is idling by turning it ON and OFF during of the driver's probe.
>=20
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/vde.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/medi=
a/tegra-vde/vde.c
> index b64e35b86fb4..3be96c36bf43 100644
> --- a/drivers/staging/media/tegra-vde/vde.c
> +++ b/drivers/staging/media/tegra-vde/vde.c
> @@ -1068,6 +1068,14 @@ static int tegra_vde_probe(struct platform_device =
*pdev)
>  	pm_runtime_use_autosuspend(dev);
>  	pm_runtime_set_autosuspend_delay(dev, 300);
> =20
> +	/*
> +	 * VDE partition may be left ON after bootloader, hence let's
> +	 * power-cycle it in order to put hardware into a predictable lower
> +	 * power state.
> +	 */
> +	pm_runtime_get_sync(dev);
> +	pm_runtime_put(dev);
> +
>  	return 0;
> =20
>  err_deinit_iommu:

Shouldn't this happen automatically? My understanding is that power
domains are turned on automatically before ->probe() and then unless a
runtime PM reference is taken during ->probe() it will get turned off
again after ->probe()?

Is that not happening? Is auto-suspend perhaps getting in the way
somehow?

Thierry

--VMt1DrMGOVs3KQwf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl71qEIACgkQ3SOs138+
s6F2BRAAqITs8YO7f90qNTucc+6aVUaPhcOoeLRSA384Hh4M4RfzKwKV1ivLrL4H
VkMWU+BB4N5ABiJxNbLnwuvh6O7y9vg1l7ovi/lg4qHTj96GmdZAuXpEFsqG2VWY
WMUX60Wc3x6vqhJPVnroCRj++WmA74nlzieWnzrR36wF91p7lpisLNjlGY90VrOq
nSatzzNO2Na9BEQnVzGqxYU7OThPB/MHJOviY5X21SXWCluc40tb0Qz4d8pbDUqB
aXQ0uMNrf8kgX0YyARa+R+U8op8R9oRTkgRCf1SHwifbb2dlnjIw2sw27ORyfzr8
h87kcTOlkTZhxehUG7eIHpyIUmgCWpXtBwt+Blww0o28LxW0+yEQHymenMlUNtY6
18mSdMQGO2k6dwgWa2znsETezLrv1lYX2nT6FxZ6niTzYZRPiA2WJ4YTa79h5yDJ
KtbvBz9b2kKzMl6R5084U2P8fh7tZH2oTs3W6n3f/NnA5+eGIBeCKu1wLQrh1M9u
2bTTPOrJOhAQMZiJCq6CJ4Bmr5+X7Cmp5bTkNOiY9lBweTpWcJHAWqgybEHCajEf
0dTnrWm4BVwGmfYUDNsm8rffkO/avUUvYBC21kZr2ATYWkrYQyheooiYC5qNLJFL
lJClO+wrkJuTqWiyB0BdOJ90jHnFMolBZOjTN/Ot7BkPCgWo8uE=
=0TFC
-----END PGP SIGNATURE-----

--VMt1DrMGOVs3KQwf--

--===============5348295543476005284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5348295543476005284==--
