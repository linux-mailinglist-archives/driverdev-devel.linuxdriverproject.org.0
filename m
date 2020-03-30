Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E30197E21
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 16:15:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACEC022EE6;
	Mon, 30 Mar 2020 14:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id my29YFdpGMZB; Mon, 30 Mar 2020 14:15:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2966F2288F;
	Mon, 30 Mar 2020 14:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DF501BF40A
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49493878BA
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3Mvy5JFvZIJ for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 14:15:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D24C878AE
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:15:01 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id a24so1805178pfc.8
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 07:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LHpYxloEox5M+OYYOazQjYBzXSAVfO7j8aplQ6oJYxQ=;
 b=gCFxQqLyhNPSjgmGxHuNq222H5JbO4wINP0HDWUv/Z7j/x4noY9JNjTJKyLiT1xUX2
 GlbnZnsa96CbEpJWZINoGbvqeT8mMoZ3IFE5dICmW1vvh5aZbxuMCW2HVsmza8+lUPWR
 HEA7xVUAcafFMa/NsZqoeOCSFxGhtwd+jg9lmFx/ajbisFwnzefgunUel+mbBrHLE2dS
 AShUCx2tjdxiEUzL9nLs0pT1ZoaUhOQNkWp4KcgWoY8o5ZaJMMlv0Wpt9lVK7fXV3r+V
 ykrMUPvpGwy62iG0r5rzv+S+s+GZzXyeZFLr7LmRGPokojc+ICfCBUmZDNxYjm4fDgQ3
 Z0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LHpYxloEox5M+OYYOazQjYBzXSAVfO7j8aplQ6oJYxQ=;
 b=INWMxgsGVB2/Wg5Op+sSk9Sz2IgSGYFvxHbFd1An06UVvH+54ULhRnA3bv/XPSFC/b
 lU5CVqIQMPJo5iNHmHCcH5p4SDRMHqHcT+TXVc5RyeyB7mdQiSJL4Cz1uXqHzxfqS2P1
 bTnRtcs///vPNfT/mp5YnrsAwegDGnetZoIYP5v4zA4BU6mhHIDDo9UmO0cmt70yNa+N
 I8pohbX02wraa3rBoUgzsCF9m+6cr8UmgBq2h0SluosIaURWf8nb8WblGbPnrHi9b+l1
 YoUOwHqob0oiCryudcZjFdJKSkEsChc4uoC1avgLanY3ao+EwLskuxkqIcZUc0o1xW7u
 787w==
X-Gm-Message-State: ANhLgQ2lXTTo4AYVjTJ4MB6hPUFF9K2YdktVZzw8EE+HfZEsxxeRmX1b
 Zsg83YAef2J4gWefCDTrNaI=
X-Google-Smtp-Source: ADFU+vvKGPTUFjrDtOV4CTd4oVb3E0pEsG6rV4uN/Ex30RjVponCRhDiEw4xU9duZ/HJajUqJXue+Q==
X-Received: by 2002:a62:7c8b:: with SMTP id
 x133mr12784696pfc.229.1585577701224; 
 Mon, 30 Mar 2020 07:15:01 -0700 (PDT)
Received: from ?IPv6:2404:f801:0:6:8000::a31c? ([2404:f801:9000:18:efed::a31c])
 by smtp.gmail.com with ESMTPSA id b3sm9762367pgs.69.2020.03.30.07.14.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 07:15:00 -0700 (PDT)
Subject: Re: [PATCH] x86/Hyper-V: Initialize Syn timer clock even when it's
 not available
From: Tianyu Lan <ltykernel@gmail.com>
To: kys@microsoft.com, haiyangz@microsoft.com, sthemmin@microsoft.com,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 x86@kernel.org, michael.h.kelley@microsoft.com, wei.liu@kernel.org
References: <20200330140950.12714-1-Tianyu.Lan@microsoft.com>
Message-ID: <afe8f1a1-a33c-b1cc-3c22-34c6155ac0b1@gmail.com>
Date: Mon, 30 Mar 2020 22:14:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200330140950.12714-1-Tianyu.Lan@microsoft.com>
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
Cc: devel@linuxdriverproject.org, vkuznets@redhat.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry for wrong title. Please ignore it.

On 3/30/2020 10:09 PM, ltykernel@gmail.com wrote:
> From: Tianyu Lan <Tianyu.Lan@microsoft.com>
> 
> Current code initializes clock event data structure for syn timer
> even when it's available or not. Fix it.
> 
> Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
> ---
>   drivers/hv/hv.c | 15 +++++++++------
>   1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
> index 632d25674e7f..2e893768fc76 100644
> --- a/drivers/hv/hv.c
> +++ b/drivers/hv/hv.c
> @@ -212,13 +212,16 @@ int hv_synic_alloc(void)
>   		tasklet_init(&hv_cpu->msg_dpc,
>   			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
>   
> -		hv_cpu->clk_evt = kzalloc(sizeof(struct clock_event_device),
> -					  GFP_KERNEL);
> -		if (hv_cpu->clk_evt == NULL) {
> -			pr_err("Unable to allocate clock event device\n");
> -			goto err;
> +		if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> +			hv_cpu->clk_evt =
> +				kzalloc(sizeof(struct clock_event_device),
> +						  GFP_KERNEL);
> +			if (hv_cpu->clk_evt == NULL) {
> +				pr_err("Unable to allocate clock event device\n");
> +				goto err;
> +			}
> +			hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>   		}
> -		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>   
>   		hv_cpu->synic_message_page =
>   			(void *)get_zeroed_page(GFP_ATOMIC);
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
