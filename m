Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C55322C07F
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 10:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E88986F3C;
	Fri, 24 Jul 2020 08:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O-w8IeUAgHUz; Fri, 24 Jul 2020 08:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D029A8689C;
	Fri, 24 Jul 2020 08:14:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16B471BF301
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 08:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 132668669E
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 08:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9c7wpdtdNUHl for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 08:14:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3C6B86576
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 08:14:33 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id k27so4824711pgm.2
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 01:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+3Btf3RUan5JaJp4OaRNcP9LO0uESKbVyLB3jgnOn5U=;
 b=WRZaX5dfjm3ToASG0+NF+KvXNvDS2zXlg8ks99AuIWPF0bYLQy7Pv98WM6nDZL2ucR
 KiIy+PCa0YCN9uW2j9tJyzzhltzFiCwpbIXItqmR6rZZZAPTXew9RllBF/xv2oq7uOiO
 gvbyYNlbGBpbepVennIYVgxCppeKljtzqtFmVZDiAaEgaCuRCJR+qK13yS2pjgSCJS53
 948AZGtYBAWZ7oEGxnkwJ/N2vaVN0GQnPGyXLKfo7qRdBfY0UMNmaUhA/3//a/8xFsn6
 dgRdtQUsHrW4lScFuNLWdhUdqLFT6EO9yFH5VdJfAOxmpdxxX8/6glBYHpq1MtVqcOlA
 9LCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+3Btf3RUan5JaJp4OaRNcP9LO0uESKbVyLB3jgnOn5U=;
 b=igpAS34XEx1XSGsj9rc7wnrW+QQOQYDFaSSFj0GULspWkcLHTqp1TuZC+mS0T4eEs5
 L5PZvduIZ0KBjBKhu5dmO+r76WQkftY3wI6kFPdzmrDrbgbKlb7crERuq3p5IlQZmdZI
 2l89L+6mH1gTVbSPP436r261Ke9GTy907fd75lcrlzzoPCGse+q13CqP8Ceaes6sEuXq
 Y2tseIuLddrrnk5FWoKW+C4L4f/L1a1MsXY8SUj84WsEOKmCNkhbj+pGOdWdJf/rkBqT
 bXHp8ChF66VmPNDAFcu72EzTUCGcUKrHxLv7awg17KZhJprhmvhqG56BJmsog1I3FRkX
 tiHQ==
X-Gm-Message-State: AOAM530ra3MDR/+AqpSjDfBJBCMlp1CrMe9taEb5QUpJ8qF3ZBBhFY+c
 WLDMbZLYPdQi3yS2BLLht0hRk/JBkug=
X-Google-Smtp-Source: ABdhPJyYEf7F4n2HKBk9oBatX7j13h0QPU0g1qBJufcj1zx68AQELo1ToVZESgNRlhWxcXOwtfvRGQ==
X-Received: by 2002:a63:7802:: with SMTP id t2mr7717982pgc.421.1595578472908; 
 Fri, 24 Jul 2020 01:14:32 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id q14sm5439829pgk.86.2020.07.24.01.14.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 01:14:32 -0700 (PDT)
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
To: marvin24@gmx.de, gregkh@linuxfoundation.org, p.zabel@pengutronix.de
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
From: Rohit Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
Date: Fri, 24 Jul 2020 13:44:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
Content-Language: en-US
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24/07/20 10:06 am, Rohit K Bharadwaj wrote:
> changed usage of slave (deprecated) to secondary
> 
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
> ---
> v3: change patch subject, add version history
> v2: add changelog text in body of mail
> v1: fix style issues by changing usage of slave to secondary
> 
>  drivers/staging/nvec/nvec.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 360ec0407740..5d7b66719a39 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  	return IRQ_HANDLED;
>  }
>  
> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
>  {
>  	u32 val;
>  
> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>  }
>  
>  #ifdef CONFIG_PM_SLEEP
> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
>  {
>  	disable_irq(nvec->irq);
>  	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, nvec);
>  	nvec->dev = dev;
>  
> -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
> +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
>  		dev_err(dev, "no i2c address specified");
>  		return -ENODEV;
>  	}
> @@ -839,7 +839,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>  	}
>  	disable_irq(nvec->irq);
>  
> -	tegra_init_i2c_slave(nvec);
> +	tegra_init_i2c_secondary(nvec);
>  
>  	/* enable event reporting */
>  	nvec_toggle_global_events(nvec, true);
> @@ -913,7 +913,7 @@ static int nvec_suspend(struct device *dev)
>  	if (!err)
>  		nvec_msg_free(nvec, msg);
>  
> -	nvec_disable_i2c_slave(nvec);
> +	nvec_disable_i2c_secondary(nvec);
>  
>  	return 0;
>  }
> @@ -923,7 +923,7 @@ static int nvec_resume(struct device *dev)
>  	struct nvec_chip *nvec = dev_get_drvdata(dev);
>  
>  	dev_dbg(nvec->dev, "resuming\n");
> -	tegra_init_i2c_slave(nvec);
> +	tegra_init_i2c_secondary(nvec);
>  	nvec_toggle_global_events(nvec, true);
>  
>  	return 0;
> 
Dear All, this message was not delivered to marvin24@gmx.de, I'm getting that The response from the remote server was:
554 gmx.net (mxgmx016) Nemesis ESMTP Service not available No SMTP service Reject due to policy restrictions, 

I'm really sorry if I'm wasting your time by these trivial problems, thanks a lot for your time, could you please let me know whether I have to resend the patch again or is the patch fine currently and can be accepted into the linux kernel tree?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
