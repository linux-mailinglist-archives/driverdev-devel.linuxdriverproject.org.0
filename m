Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7486C2F3255
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Jan 2021 14:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E00AE2045F;
	Tue, 12 Jan 2021 13:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LvLNiOtwYus8; Tue, 12 Jan 2021 13:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D87FA203BD;
	Tue, 12 Jan 2021 13:58:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA1DE1BF285
 for <devel@linuxdriverproject.org>; Tue, 12 Jan 2021 13:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5A498561D
 for <devel@linuxdriverproject.org>; Tue, 12 Jan 2021 13:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BEr55J_7yN8B for <devel@linuxdriverproject.org>;
 Tue, 12 Jan 2021 13:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
 [209.85.221.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19A6185618
 for <devel@driverdev.osuosl.org>; Tue, 12 Jan 2021 13:58:19 +0000 (UTC)
Received: by mail-vk1-f181.google.com with SMTP id v3so630139vkb.1
 for <devel@driverdev.osuosl.org>; Tue, 12 Jan 2021 05:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NXadZdz8Ctiv1n9eDAHyiJm1Q2gQ3cn9xSsA8PIpIy8=;
 b=X6eafdEk/mhZKGkplAkeZlHtw5MHYiPGzuLqaU/8QIJNUYdB77gAnLlDUNAiD4hMNh
 xtLhe6wxwEiVq1lSHcSdByEjddJcVv0v0t0oPEFeAc9L27R7dcQSR2snp4mzm54uhMOV
 QKMmK332VJC9oTr7isDNxdOmzA+cqgmtgUlK1ECND3GRn5P+0A4DXM4oMIsVo0M63aHu
 tz/gPl2J8bw3GAsqZAj7v5VCFpg1TO+MjzWZoFbxAP5iVZXNmoKqZLzr4y4p5HBfjEPW
 z4ZdM03MFp9BUDCj2gplHxCyRyXtyF1F2XMD9c4mZY1sgSAu7ecGDfwd89/tv+VfhSp4
 YzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NXadZdz8Ctiv1n9eDAHyiJm1Q2gQ3cn9xSsA8PIpIy8=;
 b=GvFnyqhv28odnayVK9NCNRjuvWbZSfs7mD1vBDQoRHpUxwTC52ZydBEtAylSKW02fZ
 EYLo3ITT8dKOR7tCBqEnbDjVpLYLKYZTSD+JZoJ6CEvE+vlA0zdAg/XGB9oU0YdeBw0j
 7r9C6SN4hE4sq93bjLC+TdhL+UXeBfswqzoWnAHJahRpvfwEOQP3sy1D2GIM9l0PpjIl
 LVWG7pqe2ceeylNWcC2tbGy8c4q6SfrUAJWhO54XRW5beg6NXJTSc4AC7lEWWXCk/E54
 O2BBPIH61hq9IOW0dV00fGltO1i1A63Mk5ShF1+abmNr7nfx/lGmhe5agXRGdfBdw8pl
 qJrQ==
X-Gm-Message-State: AOAM531/qu6ovL3eFm2wygGE9KTBNnxRT006bG/ccbfNBgLFYeJSEXU8
 Sn8LVpYxhPTPByeyGHPNn2QIyrPVvnNiMDnMDSbEGQ==
X-Google-Smtp-Source: ABdhPJy+B3y/eESbyu3OC6gky5khJjR8g/IPWLuj2VIXLHRwiMv4vqF7OT9LeQIvE4BHFVFqSxmsFb+5AO9DEtsQ0nY=
X-Received: by 2002:a1f:8f08:: with SMTP id r8mr3665187vkd.15.1610459897870;
 Tue, 12 Jan 2021 05:58:17 -0800 (PST)
MIME-Version: 1.0
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-32-digetx@gmail.com>
In-Reply-To: <20201217180638.22748-32-digetx@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Jan 2021 14:57:41 +0100
Message-ID: <CAPDyKFrRKbQS1+t_nGH9RRKf0WGcAf-Pjzo1rJt=Sz=SMWOa7Q@mail.gmail.com>
Subject: Re: [PATCH v2 31/48] soc/tegra: regulators: Support Core domain state
 syncing
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
Cc: Michael Turquette <mturquette@baylibre.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 driverdevel <devel@driverdev.osuosl.org>, Kevin Hilman <khilman@kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 17 Dec 2020 at 19:07, Dmitry Osipenko <digetx@gmail.com> wrote:
>
> The core voltage shall not drop until state of Core domain is synced,
> i.e. all device drivers that use Core domain are loaded and ready.
>
> Support Core domain state syncing. The Core domain driver invokes the
> core-regulator voltage syncing once the state of domain is synced, at
> this point the Core voltage is allowed to go lower.
>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

This looks reasonable to me, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


> ---
>  drivers/soc/tegra/regulators-tegra20.c | 19 ++++++++++++++++++-
>  drivers/soc/tegra/regulators-tegra30.c | 18 +++++++++++++++++-
>  2 files changed, 35 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/tegra/regulators-tegra20.c b/drivers/soc/tegra/regulators-tegra20.c
> index 367a71a3cd10..e2c11d442591 100644
> --- a/drivers/soc/tegra/regulators-tegra20.c
> +++ b/drivers/soc/tegra/regulators-tegra20.c
> @@ -16,6 +16,8 @@
>  #include <linux/regulator/driver.h>
>  #include <linux/regulator/machine.h>
>
> +#include <soc/tegra/common.h>
> +
>  struct tegra_regulator_coupler {
>         struct regulator_coupler coupler;
>         struct regulator_dev *core_rdev;
> @@ -38,6 +40,21 @@ static int tegra20_core_limit(struct tegra_regulator_coupler *tegra,
>         int core_cur_uV;
>         int err;
>
> +       /*
> +        * Tegra20 SoC has critical DVFS-capable devices that are
> +        * permanently-active or active at a boot time, like EMC
> +        * (DRAM controller) or Display controller for example.
> +        *
> +        * The voltage of a CORE SoC power domain shall not be dropped below
> +        * a minimum level, which is determined by device's clock rate.
> +        * This means that we can't fully allow CORE voltage scaling until
> +        * the state of all DVFS-critical CORE devices is synced.
> +        */
> +       if (tegra_soc_core_domain_state_synced()) {
> +               pr_info_once("voltage state synced\n");
> +               return 0;
> +       }
> +
>         if (tegra->core_min_uV > 0)
>                 return tegra->core_min_uV;
>
> @@ -58,7 +75,7 @@ static int tegra20_core_limit(struct tegra_regulator_coupler *tegra,
>          */
>         tegra->core_min_uV = core_max_uV;
>
> -       pr_info("core minimum voltage limited to %duV\n", tegra->core_min_uV);
> +       pr_info("core voltage initialized to %duV\n", tegra->core_min_uV);
>
>         return tegra->core_min_uV;
>  }
> diff --git a/drivers/soc/tegra/regulators-tegra30.c b/drivers/soc/tegra/regulators-tegra30.c
> index 0e776b20f625..42d675b79fa3 100644
> --- a/drivers/soc/tegra/regulators-tegra30.c
> +++ b/drivers/soc/tegra/regulators-tegra30.c
> @@ -16,6 +16,7 @@
>  #include <linux/regulator/driver.h>
>  #include <linux/regulator/machine.h>
>
> +#include <soc/tegra/common.h>
>  #include <soc/tegra/fuse.h>
>
>  struct tegra_regulator_coupler {
> @@ -39,6 +40,21 @@ static int tegra30_core_limit(struct tegra_regulator_coupler *tegra,
>         int core_cur_uV;
>         int err;
>
> +       /*
> +        * Tegra30 SoC has critical DVFS-capable devices that are
> +        * permanently-active or active at a boot time, like EMC
> +        * (DRAM controller) or Display controller for example.
> +        *
> +        * The voltage of a CORE SoC power domain shall not be dropped below
> +        * a minimum level, which is determined by device's clock rate.
> +        * This means that we can't fully allow CORE voltage scaling until
> +        * the state of all DVFS-critical CORE devices is synced.
> +        */
> +       if (tegra_soc_core_domain_state_synced()) {
> +               pr_info_once("voltage state synced\n");
> +               return 0;
> +       }
> +
>         if (tegra->core_min_uV > 0)
>                 return tegra->core_min_uV;
>
> @@ -59,7 +75,7 @@ static int tegra30_core_limit(struct tegra_regulator_coupler *tegra,
>          */
>         tegra->core_min_uV = core_max_uV;
>
> -       pr_info("core minimum voltage limited to %duV\n", tegra->core_min_uV);
> +       pr_info("core voltage initialized to %duV\n", tegra->core_min_uV);
>
>         return tegra->core_min_uV;
>  }
> --
> 2.29.2
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
