Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD8F126542
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 15:53:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A259688672;
	Thu, 19 Dec 2019 14:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-rb8MVtnEAM; Thu, 19 Dec 2019 14:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 072138757C;
	Thu, 19 Dec 2019 14:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49AF41BF2C4
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 14:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 45ED220368
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 14:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s9imJJqB0fmu for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 14:53:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 27BE92035B
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 14:53:46 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y11so6272052wrt.6
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 06:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=01d2gKZkJOH7YhD865nJbGooLC6bhXHzXr9512PTLlc=;
 b=BxnoeLQes+YjrmmG4OTy/48AZHav+Dt5GpOaL3hMU+F4oppqTj8h4gqN2IGwBNYDh/
 yYO/r7jtiLxS6CGumCLBPxdBDA8wyWbdKXfMmpAtdRJph6b/3NTE6A1uCOWiydC/VYGW
 Aa++D0PiA+2zJBCMCVTF8m0JsHF6zwmPg0/3r60X7zmQ6xOqGxYam8CsiR/XXgzcqL5M
 00b6iwhISyn5bTb7iAskcftlCcbODZgn9wL2ybxTRhq3iisB1FccX7E9xgg3bY2CfmRJ
 zzz9UuxUnpJ0W/Wk5hY3wCQhcfg8bRUkpAL2gm2RqkdspDJU82bm1ywStdKTaWgi7Nsz
 RqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=01d2gKZkJOH7YhD865nJbGooLC6bhXHzXr9512PTLlc=;
 b=ZIDCGxRPD5EnnbtkdHaLO45dMTsXYqbIsKVCKXLycEVpRdteHL04rks4Xw7LJha1GU
 PnRyYKA6v4L+j6g0Sy4ly/6c5VUxDXIjdILB3Um+MaaZGsyeQyTEfymGNb3vv15GR+lF
 qtq35cPzfwbKw9rhguxIx0kUKL47O5klLv1RdROe+WrxzMkThzKbHErON5dNBwyZ96q0
 HpkuUnugaRSdtUMi/IOmG1w8uo+EV8qH8KrWLGsQ0crXpzHuwXP1DKEdCMba17OdWeLw
 DyDgwHOZJWKMLrG5zNvCYtzS/nS+TkZnllTsxBORAASocvx/zBiz055IcOfPBL+99Exb
 Wqlw==
X-Gm-Message-State: APjAAAU80NU90ewteQUOewNgiRQNkxUDVTAa4DEOihWf0/9DUVnvEJiM
 Hl1y3dsGK5deY64Fr3EOL2w=
X-Google-Smtp-Source: APXvYqxtcDi/kFePMXlvYf2lp9TovOeQHaEGqXYMgs/QzTIXtDNWbb4uLwN21d0Buj8R8pQZwYj0ug==
X-Received: by 2002:adf:fd91:: with SMTP id d17mr10409326wrr.340.1576767224435; 
 Thu, 19 Dec 2019 06:53:44 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id o1sm6728363wrn.84.2019.12.19.06.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 06:53:42 -0800 (PST)
Date: Thu, 19 Dec 2019 15:53:41 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
Message-ID: <20191219145341.GL1440537@ulmo>
References: <20191215183047.9414-1-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191215183047.9414-1-digetx@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
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
Cc: devel@driverdev.osuosl.org, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-tegra@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1655083522576652243=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1655083522576652243==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yQDbd2FCF2Yhw41T"
Content-Disposition: inline


--yQDbd2FCF2Yhw41T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2019 at 09:30:44PM +0300, Dmitry Osipenko wrote:
> Hello,
>=20
> I was investigating why CPU hangs during of GPIO driver suspend and in
> the end it turned out that it is a Broadcom WiFi driver problem because
> it keeps OOB wake-interrupt enabled while WLAN interface is DOWN and this
> may cause a bit weird CPU hang on writing to INT_ENB register during of
> GPIO driver suspend. Meanwhile I also noticed that a few things could be
> improved in the driver, that's what this small series addresses.
>=20
> Dmitry Osipenko (3):
>   gpio: tegra: Use generic readl_relaxed/writel_relaxed accessors
>   gpio: tegra: Properly handle irq_set_irq_wake() error
>   gpio: tegra: Use NOIRQ phase for suspend/resume
>=20
>  drivers/gpio/gpio-tegra.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)

Patches look good:

Reviewed-by: Thierry Reding <treding@nvidia.com>

I also applied this series on top of v5.5-rc1 and ran it through our
test system:

    Test results:
        13 builds:  13 pass, 0 fail
        22 boots:   22 pass, 0 fail
        34 tests:   34 pass, 0 fail

    Linux version:  5.5.0-rc1-g3d0b4fced39e
    Boards tested:  tegra124-jetson-tk1, tegra186-p2771-0000,
                    tegra194-p2972-0000, tegra20-ventana,
                    tegra210-p2371-2180, tegra30-cardhu-a04

All tests passing, so:

Tested-by: Thierry Reding <treding@nvidia.com>

--yQDbd2FCF2Yhw41T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl37jvMACgkQ3SOs138+
s6HZYA/+KkwZWvDrOQ/xInN24cWeziIx62H3vJwfR9+Tjbdww4+9yMeMtj5ZWqMy
fXJZ5t/UokIk+x9MoUYHUIOB6Iv0JhobZ9vWW9IikMfPKbHUPsQI8PrDG5Irnqxg
AehGhD5Z11O3CSR/N1AEP5iv5udWFuhcb23FJMBNYhNxx7+DfU0iDJ54BmRKoaTG
xWH5wBIJIXR06J80bJUaJezl5yocm6I7LgC/rzbiM1R+8hNz/nkyLoon5MEJOvUy
dfNNn+2upmavuoG+EMcZgKCHPHb8CILSciNrcDmSp2EP1/OOYgm9urytQRrnHwWn
0a/P//Zasnmb7kUYqcSNa9b8xD7aZ/lMS2zvLmtWHeF9uQigJtxmeFcFEU/DofeV
LMfxE+ePRof2N7EztSgOxpVqS6V0OMzr5TquUq9d0CxDVkfzq1LHZO+9XY4MCTzi
xD+Ncn/te+xJmLoiXMMVOnlpa4e3BzO583aBMAR6cLwzNHRhKOAhCws1pxieH9aR
Bg2vGbwkrDK4c2AouHoNROlu/DN2n+GVhlH+b93P0xRJJAvgvwOhuUnwYj4Nt4Hf
oTWbSN9AVBRSBQQdnH4R3N6idMPj4SInVWWF2jgvl5IJGGWOtKQCHYI/TmFmu69i
LKcAZPJjK+eOdWMaoCrhnv0QMN7Of+4Rhx1OLSRm9MX9QF40E6I=
=CltG
-----END PGP SIGNATURE-----

--yQDbd2FCF2Yhw41T--

--===============1655083522576652243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1655083522576652243==--
