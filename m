Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19B72AE109
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 21:51:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E03E873B1;
	Tue, 10 Nov 2020 20:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g+UmBdYhrYRQ; Tue, 10 Nov 2020 20:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE9E6870EF;
	Tue, 10 Nov 2020 20:51:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92A6B1BF32C
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 20:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 84CD423018
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 20:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izx65M5GaM0N for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 20:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3484F1FEAB
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 20:51:02 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c17so14209867wrc.11
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 12:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7HIcKzFu5PUUQcFiE5YVq2OrMCSk+O2P2oBdDfJbjm4=;
 b=p3IuKkDXlF3/hpGET8e431R9TjI8VmaD+tYyRxHQGfyz1Zii2UqQIUz90t+lwWNG3V
 BSvrTnzMRaDza3nj7lIX82CRMGAvsjEdjNzfHjEnvpAFxV5wVG9/Tdztnp70jZFTX9n7
 XVoGGmB3AUEEriWlJRtubCXxQZ+7IfKCFRLa1Bs/eq7/b3hujUOOe/nhApmQ3zZBcQr6
 XTN4tHq9WBwGu9zozNsOUEZcudsB0kAiBu+SsVkmAu2gY+R5sjJku3BNQyWBpCWiG0dn
 F9Q53i5FcdYDhmSQYf/6sS4PokOHp+ScuogduJxME0MCnBiwFP3QWlpGVvuQch6XGJqx
 df+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7HIcKzFu5PUUQcFiE5YVq2OrMCSk+O2P2oBdDfJbjm4=;
 b=aevTlRfP/ifb4Ep2Q55f+UF5ZxofSPwhJfswtJ//tAT8+ysjKYUkg7pijx+urEnJMG
 pXddu174ethTeRAsrPfDTlZUcwUBdhVw0a17JCcojz4LS+EO1jfq8FRTry6NpRGr2we+
 oEED5Sh8bHLJmGlPgZLtN0w2XbdZv+cadkY7H2TzOfQUR0G9C1t3tevb+/IsMTxdEFWk
 E1a6uH/VYkClTjYNydWKUEkOOWKnwCTcmD0SSss1ycQiTJGne0blOuHSGe3LPmQH7KXO
 oO1TBp81P0PpGtY7jMERQzzh3xq99hesjo2AV1j2mgfRKlYGyb9DT7aId/0NoYtZRb/a
 o4tA==
X-Gm-Message-State: AOAM5308Vh7teKqCpVUbJT/1mwl93xaYwgBkM1keGsE6kfIPUevV8hrj
 aNuSSCmHnD51Uo2Isgy7NyQ=
X-Google-Smtp-Source: ABdhPJxzIEmPPnLANkIp2K03g8rC5eaOPrtyiZGMeuwPXYl02/6Hg+v9qU2Prx3ft4ivHx0jS/Q3dA==
X-Received: by 2002:a5d:51c2:: with SMTP id n2mr12551938wrv.326.1605041460687; 
 Tue, 10 Nov 2020 12:51:00 -0800 (PST)
Received: from localhost ([217.111.27.204])
 by smtp.gmail.com with ESMTPSA id z5sm18029459wrw.87.2020.11.10.12.50.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 12:50:59 -0800 (PST)
Date: Tue, 10 Nov 2020 21:50:57 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 18/30] pwm: tegra: Support OPP and core voltage scaling
Message-ID: <20201110205057.GH2375022@ulmo>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-19-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20201104234427.26477-19-digetx@gmail.com>
User-Agent: Mutt/1.14.7 (2020-08-29)
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: multipart/mixed; boundary="===============2135468137464674193=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2135468137464674193==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v2Uk6McLiE8OV1El"
Content-Disposition: inline


--v2Uk6McLiE8OV1El
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 05, 2020 at 02:44:15AM +0300, Dmitry Osipenko wrote:
[...]
> +static void tegra_pwm_deinit_opp_table(void *data)
> +{
> +	struct device *dev = data;
> +	struct opp_table *opp_table;
> +
> +	opp_table = dev_pm_opp_get_opp_table(dev);
> +	dev_pm_opp_of_remove_table(dev);
> +	dev_pm_opp_put_regulators(opp_table);
> +	dev_pm_opp_put_opp_table(opp_table);
> +}
> +
> +static int devm_tegra_pwm_init_opp_table(struct device *dev)
> +{
> +	struct opp_table *opp_table;
> +	const char *rname = "core";
> +	int err;
> +
> +	/* voltage scaling is optional */
> +	if (device_property_present(dev, "core-supply"))
> +		opp_table = dev_pm_opp_set_regulators(dev, &rname, 1);
> +	else
> +		opp_table = dev_pm_opp_get_opp_table(dev);
> +
> +	if (IS_ERR(opp_table))
> +		return dev_err_probe(dev, PTR_ERR(opp_table),
> +				     "failed to prepare OPP table\n");
> +
> +	/*
> +	 * OPP table presence is optional and we want the set_rate() of OPP
> +	 * API to work similarly to clk_set_rate() if table is missing in a
> +	 * device-tree.  The add_table() errors out if OPP is missing in DT.
> +	 */
> +	if (device_property_present(dev, "operating-points-v2")) {
> +		err = dev_pm_opp_of_add_table(dev);
> +		if (err) {
> +			dev_err(dev, "failed to add OPP table: %d\n", err);
> +			goto put_table;
> +		}
> +	}
> +
> +	err = devm_add_action(dev, tegra_pwm_deinit_opp_table, dev);
> +	if (err)
> +		goto remove_table;
> +
> +	return 0;
> +
> +remove_table:
> +	dev_pm_opp_of_remove_table(dev);
> +put_table:
> +	dev_pm_opp_put_regulators(opp_table);
> +
> +	return err;
> +}

These two functions seem to be heavily boilerplate across all these
drivers. Have you considered splitting these out into separate helpers?

Thierry

--v2Uk6McLiE8OV1El
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl+q/TEACgkQ3SOs138+
s6FEeBAAokltgZ7HHYhhwbbWHXNUkzO/NUlYWsInWSSKGta8fNY21NFKFf6nxcqg
ysIyLPN9dv8a9saNwqn3LEtMcfrRlwhNI22SJT9qeJccG/FrVSt9wPszq4Sm/6+/
XjySJpMVvKGnrZTlrDIqTPjxnocpBDumCM+jSDtNH/VPaGozHg1Zx0qh8/beFTmv
Vtb0OcnD4qtkufaD0UNVfgFgwtFA3kRYS4cn6HfvqtjefLPSoQPAsdm7Bv4k7x5c
KT12aYsPstalOtHu+FLiNVpazIpRiQcf1r4C/NtBsZcakeN5yuDe5TjP81BWYYmL
q2d7TSeKz7bETNVkYlHJYDjvmDKdxfSaCkZYzfrHZlGIIFkDVUldkWLqi3g7SFe8
SZTVRmWNiXrs6yvvJLLATV+By1fXEUHT+5EncaaS2KKWIER/rkBfZaTU5sm1Dh2e
1uYKgu1HT00/215AdNLi/QpUSCMoP+RUixydwl9b0+dkJ5mbcY3Zyqz0iyFKEPg6
EnkFO/edSWtmvQeFqqapWBfvO7ilH+yrlO8usp0A4pFhHFrs5D7k+oij9lDKVDPO
LT092WpWBVzCxAYioMUGADderKfCTP3Tp4W5Lw9Tp2zyHG6Qze+UsbvNoPwYhb8G
l0UKpbDA7nfIhJ3zrFcENxPPGXWP7aDaL8sG6HnZ5FQZoyj/w2Y=
=OvzO
-----END PGP SIGNATURE-----

--v2Uk6McLiE8OV1El--

--===============2135468137464674193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2135468137464674193==--
