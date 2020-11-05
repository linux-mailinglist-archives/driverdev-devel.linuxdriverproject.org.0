Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE6E2A830C
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 17:07:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE72085A82;
	Thu,  5 Nov 2020 16:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id woz9EZELOtn9; Thu,  5 Nov 2020 16:07:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44AC2858D3;
	Thu,  5 Nov 2020 16:07:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09B181BF2BF
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 16:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F06F02045F
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 16:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LjdcrzlUTnsA for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 16:07:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from netrider.rowland.org (netrider.rowland.org [192.131.102.5])
 by silver.osuosl.org (Postfix) with SMTP id BFC362013C
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 16:07:44 +0000 (UTC)
Received: (qmail 1615519 invoked by uid 1000); 5 Nov 2020 11:07:43 -0500
Date: Thu, 5 Nov 2020 11:07:43 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 21/30] usb: host: ehci-tegra: Support OPP and SoC core
 voltage scaling
Message-ID: <20201105160743.GA1613614@rowland.harvard.edu>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-22-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104234427.26477-22-digetx@gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 05, 2020 at 02:44:18AM +0300, Dmitry Osipenko wrote:
> Add initial OPP and SoC core voltage scaling support to the Tegra EHCI
> driver. This is required for enabling system-wide DVFS on older Tegra
> SoCs.
> 
> Tested-by: Peter Geis <pgwipeout@gmail.com>
> Tested-by: Nicolas Chauvet <kwizart@gmail.com>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---

I'm no expert on OPP stuff, but some of what you have done here looks 
peculiar.

> diff --git a/drivers/usb/host/ehci-tegra.c b/drivers/usb/host/ehci-tegra.c
> index 869d9c4de5fc..0976577f54b4 100644
> --- a/drivers/usb/host/ehci-tegra.c
> +++ b/drivers/usb/host/ehci-tegra.c
> @@ -17,6 +17,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_gpio.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
> @@ -364,6 +365,79 @@ static void tegra_ehci_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
>  	free_dma_aligned_buffer(urb);
>  }
>  
> +static void tegra_ehci_deinit_opp_table(void *data)
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
> +static int devm_tegra_ehci_init_opp_table(struct device *dev)
> +{
> +	unsigned long rate = ULONG_MAX;
> +	struct opp_table *opp_table;
> +	const char *rname = "core";
> +	struct dev_pm_opp *opp;
> +	int err;
> +
> +	/* legacy device-trees don't have OPP table */
> +	if (!device_property_present(dev, "operating-points-v2"))
> +		return 0;
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
> +	err = dev_pm_opp_of_add_table(dev);
> +	if (err) {
> +		dev_err(dev, "failed to add OPP table: %d\n", err);
> +		goto put_table;
> +	}
> +
> +	/* find suitable OPP for the maximum clock rate */
> +	opp = dev_pm_opp_find_freq_floor(dev, &rate);
> +	err = PTR_ERR_OR_ZERO(opp);
> +	if (err) {
> +		dev_err(dev, "failed to get OPP: %d\n", err);
> +		goto remove_table;
> +	}
> +
> +	dev_pm_opp_put(opp);
> +
> +	/*
> +	 * First dummy rate-set initializes voltage vote by setting voltage
> +	 * in accordance to the clock rate.
> +	 */
> +	err = dev_pm_opp_set_rate(dev, rate);
> +	if (err) {
> +		dev_err(dev, "failed to initialize OPP clock: %d\n", err);
> +		goto remove_table;
> +	}
> +
> +	err = devm_add_action(dev, tegra_ehci_deinit_opp_table, dev);
> +	if (err)
> +		goto remove_table;
> +
> +	return 0;
> +
> +remove_table:
> +	dev_pm_opp_of_remove_table(dev);
> +put_table:
> +	dev_pm_opp_put_regulators(opp_table);

Do you really want to use the same error unwinding for opp_table values 
obtained from dev_pm_opp_set_regulators() as from 
dev_pm_opp_get_opp_table()?

> +
> +	return err;
> +}
> +
>  static const struct tegra_ehci_soc_config tegra30_soc_config = {
>  	.has_hostpc = true,
>  };
> @@ -431,6 +505,11 @@ static int tegra_ehci_probe(struct platform_device *pdev)
>  		goto cleanup_hcd_create;
>  	}
>  
> +	err = devm_tegra_ehci_init_opp_table(&pdev->dev);
> +	if (err)
> +		return dev_err_probe(&pdev->dev, err,
> +				     "Failed to initialize OPP\n");

Why log a second error message?  Just return err.

Alan Stern
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
