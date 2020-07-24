Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4650422C0EA
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 10:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52D458841E;
	Fri, 24 Jul 2020 08:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id idKqWbAXXGS7; Fri, 24 Jul 2020 08:35:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E729C883F9;
	Fri, 24 Jul 2020 08:35:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4DD21BF301
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 08:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF5F38880C
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 08:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWz+7k-HdM6z for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 08:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D18F887EB
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 08:35:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id a23so4669800pfk.13
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 01:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VakwdzTZbI2NrCcqrnEUNuPYEf7c6UvJxHXZ+U7HH4E=;
 b=vaag5+kXqh0WoB5YdjhridcMexiFTp4DHEGtD16kRVcu3+qu0M3MT47HNoZihGGvNv
 TyWGOZfT1NERXzL5ZDffLMeBm6e6lcwiEmOxvRCl3gkeXHaEaickWtz47D4z4ONUS3nh
 TV60q6saBvHjLbPPvbvBm0RzYUJGN/QsgLLM1P7m4tsFGaKLEQ/AMQUobpsCefP0FAnD
 r7znb5iHrKfixfHAgixO4u8mkqeh8qYeKuBKX5OlBrt+PBCNR34Ni/UtP6OqYwBhBlD+
 GERR0sLUwWWgziMFlFzGectNCgX2UCYOl1691qcrJDRpp6awF1MjDnQdNB6d/svVUYW2
 XZsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VakwdzTZbI2NrCcqrnEUNuPYEf7c6UvJxHXZ+U7HH4E=;
 b=AP696jGlZzq8+aOB/oD3LLFfQo/SO2JEGFfNFq5an0C435Vnrj0ENlhKQKctFw0Syo
 fg1K9z1fp6zfe+87j0aYzPMVtL7H3hYrodPUbwXesbDWYD4tVxnfrnQbYlxYkwrEI/5B
 3TGxq+diJwymEGpV5xssFlZuQmBYBsxEZzJpDe0GRuR+f1PSG5CmEDOBqdVRqBbmyn+T
 dr7wrJthyl9y98H+DzMb7Jgd1P9Qa3rK+OkwMVDaZ1NFYGboJUH9VtyS38hnG65ZClni
 SV0DtiUYvWe5X9SN2o1ZYtynQgxqMHbgbnkuhyjSpq0wakezSU1DKwdFMieZxh+J+G/F
 ZBPA==
X-Gm-Message-State: AOAM532gvrYfx92zeJK4t+eg7r5YMfmcu/N9BjAA+0rjGFBHlXejMwNl
 LiPeLENJ3tiQUQH3Rq4tdeBFF25pHv8=
X-Google-Smtp-Source: ABdhPJzBefa0MLGwqncznAGtC+wzq8qw2xBQKiR3rn+mgB4J8bbDiglgqAPgbhnnAbm415CwvYFEsw==
X-Received: by 2002:a62:8482:: with SMTP id k124mr7980683pfd.285.1595579752530; 
 Fri, 24 Jul 2020 01:35:52 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id x66sm5523500pgb.12.2020.07.24.01.35.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 01:35:51 -0700 (PDT)
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
 <20200724082810.GA3977020@kroah.com>
From: Rohit Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <34e6c906-7def-816d-a45d-03d366f32c61@gmail.com>
Date: Fri, 24 Jul 2020 14:05:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200724082810.GA3977020@kroah.com>
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
 ac100@lists.launchpad.net, p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24/07/20 1:58 pm, Greg KH wrote:
> On Fri, Jul 24, 2020 at 01:44:27PM +0530, Rohit Bharadwaj wrote:
>> On 24/07/20 10:06 am, Rohit K Bharadwaj wrote:
>>> changed usage of slave (deprecated) to secondary
>>>
>>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
>>> ---
>>> v3: change patch subject, add version history
>>> v2: add changelog text in body of mail
>>> v1: fix style issues by changing usage of slave to secondary
>>>
>>>  drivers/staging/nvec/nvec.c | 12 ++++++------
>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
>>> index 360ec0407740..5d7b66719a39 100644
>>> --- a/drivers/staging/nvec/nvec.c
>>> +++ b/drivers/staging/nvec/nvec.c
>>> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>>>  	return IRQ_HANDLED;
>>>  }
>>>  
>>> -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>> +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
>>>  {
>>>  	u32 val;
>>>  
>>> @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
>>>  }
>>>  
>>>  #ifdef CONFIG_PM_SLEEP
>>> -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
>>> +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
>>>  {
>>>  	disable_irq(nvec->irq);
>>>  	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
>>> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>>>  	platform_set_drvdata(pdev, nvec);
>>>  	nvec->dev = dev;
>>>  
>>> -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
>>> +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
>>>  		dev_err(dev, "no i2c address specified");
>>>  		return -ENODEV;
>>>  	}
>>> @@ -839,7 +839,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>>>  	}
>>>  	disable_irq(nvec->irq);
>>>  
>>> -	tegra_init_i2c_slave(nvec);
>>> +	tegra_init_i2c_secondary(nvec);
>>>  
>>>  	/* enable event reporting */
>>>  	nvec_toggle_global_events(nvec, true);
>>> @@ -913,7 +913,7 @@ static int nvec_suspend(struct device *dev)
>>>  	if (!err)
>>>  		nvec_msg_free(nvec, msg);
>>>  
>>> -	nvec_disable_i2c_slave(nvec);
>>> +	nvec_disable_i2c_secondary(nvec);
>>>  
>>>  	return 0;
>>>  }
>>> @@ -923,7 +923,7 @@ static int nvec_resume(struct device *dev)
>>>  	struct nvec_chip *nvec = dev_get_drvdata(dev);
>>>  
>>>  	dev_dbg(nvec->dev, "resuming\n");
>>> -	tegra_init_i2c_slave(nvec);
>>> +	tegra_init_i2c_secondary(nvec);
>>>  	nvec_toggle_global_events(nvec, true);
>>>  
>>>  	return 0;
>>>
>> Dear All, this message was not delivered to marvin24@gmx.de, I'm getting that The response from the remote server was:
>> 554 gmx.net (mxgmx016) Nemesis ESMTP Service not available No SMTP service Reject due to policy restrictions, 
> 
> Not a big deal, email address atrophy over time.  That's why you always
> cc: a public mailing list for patches.
> 
> thanks,
> 
> greg k-h
> 
Thank you so much for the reply sir, I hope this patch gets accepted.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
