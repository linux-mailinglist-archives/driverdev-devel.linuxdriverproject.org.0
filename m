Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C86782A7B2F
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 10:58:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A2B38613C;
	Thu,  5 Nov 2020 09:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GtTxR1zmNvd5; Thu,  5 Nov 2020 09:58:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F946860F1;
	Thu,  5 Nov 2020 09:58:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B62371BF378
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ABF03870BC
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RNn5PDmAvy2D for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 09:58:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38508870BA
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 09:58:47 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id p5so1750726ejj.2
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 01:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8/0+xGMrqmCQCrjRIhp34cgoVWyVPh+6Sc63/MCPbP8=;
 b=i+mDDBQGg9bf9ZIFzChyy7Rq+AK2ujK0vNsYtVg1phv8sxI4NYIxwWWLXmBO1AoPnr
 2uAFrojlzm/ql3PTMenBeK5Xq0Ad0WXHmPNn+Zt5r98YKoAxvp2wSLmxnWNwYgCvB4CN
 lRm9qRiNr4WJ1qN37G+/1M5YXyx4EmkOfDqMpjAfr9MPFTJ7M8zyrThQ9cssePg7fEGo
 5AAqlqj48wJIvqREQzT41ALbORJ0Ke8tq/ZFNwNADWHAos3p8LRY0+kFTfxfvmQpfEYt
 J2J4a7RvoVFp+QSO8Q29MM0YfPsa+NYD2yQ4RoaPzew1LRwJnQfhkx6+8bZPNJFsNw4N
 H0LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8/0+xGMrqmCQCrjRIhp34cgoVWyVPh+6Sc63/MCPbP8=;
 b=bwS/6S1+7OhLCEKndgcQhRfEEdR4fgO2tEVcDeIQMpZA7oUs3y065tbBaD7yB1inma
 Nq1jTftGPSG7vfOxBTiRvuNjJCMP1Pw1gzNGJtZWg3GNABiuNtAKH50tadYKt4BMBts4
 PsuwKo5neqgD8D8lytEbz3CrvYquqswui6MRTbw4Q7MblI37pUF45IpOIdXdQ9w/K7d5
 3w58sADyqDlQH9uL4bvImdKrrcyUlCOz1qLouNG4iLR9tXDiq+pUEpx8Kkm5fJbDZUlI
 CsSiHRIb5vS8E+jcHkyxJcqcP/WHBOea2w11XACg2dHDvBZZKW8+DoAbLngxvOEhvixt
 yPFg==
X-Gm-Message-State: AOAM5303Vor/e9MSM4GijyaF6iRnOT/X5CCAesKMPEQ4zG8MheUbZdjK
 +/1SbSltnlo7D0SyDBoPA4b4ve2ptLMRq4GRuMk=
X-Google-Smtp-Source: ABdhPJyn8dHU+iql4LIPEGykzYeJPOpKnFuZLrqcQJDf2Cin2XWenUKK05ejEnpNpXJIWT3fxGVNQdHuR8JyYUjfQ0g=
X-Received: by 2002:a17:906:3689:: with SMTP id
 a9mr1424841ejc.403.1604570325540; 
 Thu, 05 Nov 2020 01:58:45 -0800 (PST)
MIME-Version: 1.0
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
In-Reply-To: <20201104234427.26477-18-digetx@gmail.com>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Thu, 5 Nov 2020 15:28:34 +0530
Message-ID: <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Dmitry Osipenko <digetx@gmail.com>
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
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 5, 2020 at 5:15 AM Dmitry Osipenko <digetx@gmail.com> wrote:

> diff --git a/drivers/mmc/host/sdhci-tegra.c b/drivers/mmc/host/sdhci-tegra.c

> +static void sdhci_tegra_deinit_opp_table(void *data)
> +{
> +       struct device *dev = data;
> +       struct opp_table *opp_table;
> +
> +       opp_table = dev_pm_opp_get_opp_table(dev);

So you need to get an OPP table to put one :)
You need to save the pointer returned by dev_pm_opp_set_regulators() instead.

> +       dev_pm_opp_of_remove_table(dev);
> +       dev_pm_opp_put_regulators(opp_table);
> +       dev_pm_opp_put_opp_table(opp_table);
> +}
> +
> +static int devm_sdhci_tegra_init_opp_table(struct device *dev)
> +{
> +       struct opp_table *opp_table;
> +       const char *rname = "core";
> +       int err;
> +
> +       /* voltage scaling is optional */
> +       if (device_property_present(dev, "core-supply"))
> +               opp_table = dev_pm_opp_set_regulators(dev, &rname, 1);
> +       else


> +               opp_table = dev_pm_opp_get_opp_table(dev);

Nice. I didn't think that someone will end up abusing this API and so made it
available for all, but someone just did that. I will fix that in the OPP core.

Any idea why you are doing what you are doing here ?

> +
> +       if (IS_ERR(opp_table))
> +               return dev_err_probe(dev, PTR_ERR(opp_table),
> +                                   "failed to prepare OPP table\n");
> +
> +       /*
> +        * OPP table presence is optional and we want the set_rate() of OPP
> +        * API to work similarly to clk_set_rate() if table is missing in a
> +        * device-tree.  The add_table() errors out if OPP is missing in DT.
> +        */
> +       if (device_property_present(dev, "operating-points-v2")) {
> +               err = dev_pm_opp_of_add_table(dev);
> +               if (err) {
> +                       dev_err(dev, "failed to add OPP table: %d\n", err);
> +                       goto put_table;
> +               }
> +       }
> +
> +       err = devm_add_action(dev, sdhci_tegra_deinit_opp_table, dev);
> +       if (err)
> +               goto remove_table;
> +
> +       return 0;
> +
> +remove_table:
> +       dev_pm_opp_of_remove_table(dev);
> +put_table:
> +       dev_pm_opp_put_regulators(opp_table);
> +
> +       return err;
> +}
> +
>  static int sdhci_tegra_probe(struct platform_device *pdev)
>  {
>         const struct of_device_id *match;
> @@ -1621,6 +1681,10 @@ static int sdhci_tegra_probe(struct platform_device *pdev)
>                 goto err_power_req;
>         }
>
> +       rc = devm_sdhci_tegra_init_opp_table(&pdev->dev);
> +       if (rc)
> +               goto err_parse_dt;
> +
>         /*
>          * Tegra210 has a separate SDMMC_LEGACY_TM clock used for host
>          * timeout clock and SW can choose TMCLK or SDCLK for hardware
> --
> 2.27.0
>
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
