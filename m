Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E5D2355EB
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 10:13:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF07F877A5;
	Sun,  2 Aug 2020 08:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbCGiSiyR5KJ; Sun,  2 Aug 2020 08:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF0A887789;
	Sun,  2 Aug 2020 08:13:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8901BF354
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 08:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 740898517E
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 08:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ry6rjfF_UIWm for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 08:13:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C50348502B
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 08:13:50 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 82AAB2400FF
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 10:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1596356027; bh=uAUgQdFrVVYolTVMI7InZ/rP4hH1B0Oi+OXjMUurkYY=;
 h=Date:From:To:cc:Subject:From;
 b=EctfdyHPZKPpRkwjGyOEmvfE7nRrylo85aVG+YgkdVY7CCMuYl5LFbjrGLKBpuBug
 K9SW5jlaMPvmfBYTkSvIMDYRyo678xvHhDmRhySblR98jO6QzvF/M5mXCWX+TV0Bs2
 n4uoIrHdHklaUubOfXzoViLl8+hj32EPW6x1GV+ZritpcSO58CJpLhja4ykTcuOm6i
 ix6japEr5dCiuxbSCO4MYoPAWLn7TKYXj2sMdzO5oBG3+VB7lAHkO4nd/TmEEqqz2K
 KcGpBUquUjjjHr2LB5HKXKGx7nSL7ioYIfSmDgkzt2WJ0q/1IcTjBV/Y+uHrP4RmU4
 mfiQK8pqOG64g==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4BKDLL3vY3z9rxW;
 Sun,  2 Aug 2020 10:13:46 +0200 (CEST)
Date: Sun, 2 Aug 2020 10:13:46 +0200 (CEST)
From: Marc Dietrich <marvin24@posteo.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
In-Reply-To: <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
Message-ID: <alpine.OSX.2.23.453.2008021007460.41131@macbook-pro.fritz.box>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
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
 Dan Carpenter <dan.carpenter@oracle.com>, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Rohit,

On Sat, 25 Jul 2020, Rohit K Bharadwaj wrote:

> changed usage of slave (which is deprecated) to secondary without breaking the driver
>
> Tested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Acked-by: Marc Dietrich <marvin24@posteo.de>
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>

please don't add "*-by"'s by yourself when you send a new patch version.
These will be added "automatically" during the patch handling. I just 
said, I *will* ack your patch, when you resent it, not that I did it 
already.

Thanks!

Marc

> ---
> v4: undo the changes (which broke the driver) to this line: if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr))
> v3: change patch subject, add version history
> v2: add changelog text in body of mail
> v1: fix style issues by changing usage of slave to secondary
>
> drivers/staging/nvec/nvec.c | 10 +++++-----
> 1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 360ec0407740..a7e995bfe989 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
> 	return IRQ_HANDLED;
> }
>
> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
> {
> 	u32 val;
>
> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
> }
>
> #ifdef CONFIG_PM_SLEEP
> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
> {
> 	disable_irq(nvec->irq);
> 	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
> @@ -839,7 +839,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
> 	}
> 	disable_irq(nvec->irq);
>
> -	tegra_init_i2c_slave(nvec);
> +	tegra_init_i2c_secondary(nvec);
>
> 	/* enable event reporting */
> 	nvec_toggle_global_events(nvec, true);
> @@ -913,7 +913,7 @@ static int nvec_suspend(struct device *dev)
> 	if (!err)
> 		nvec_msg_free(nvec, msg);
>
> -	nvec_disable_i2c_slave(nvec);
> +	nvec_disable_i2c_secondary(nvec);
>
> 	return 0;
> }
> @@ -923,7 +923,7 @@ static int nvec_resume(struct device *dev)
> 	struct nvec_chip *nvec = dev_get_drvdata(dev);
>
> 	dev_dbg(nvec->dev, "resuming\n");
> -	tegra_init_i2c_slave(nvec);
> +	tegra_init_i2c_secondary(nvec);
> 	nvec_toggle_global_events(nvec, true);
>
> 	return 0;
> -- 
> 2.25.1
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
