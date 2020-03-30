Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EAE197F44
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 17:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 059CD86824;
	Mon, 30 Mar 2020 15:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPPKPjy-YHug; Mon, 30 Mar 2020 15:09:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC53A8793D;
	Mon, 30 Mar 2020 15:09:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6521C1BF40E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F8A220130
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-HYnU-qRHlB for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 15:09:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by silver.osuosl.org (Postfix) with ESMTPS id A031F204D8
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585580947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x5LM5MIN1sETGXzrhKoMxa1G4sxxZ8VvjOH7glpQrrw=;
 b=DUeL6Ves9McBablgLKNllHU9LMrdaiXbRqAAJ5HKxzNeqnIA8ar0Ae2AlH3iV9zGOfQQ8j
 j9qgUmX0Fv+XHzMk9iiILrvT8AZ/SlEruGrIJyel8Rtc/h9MjiY8HGk2iGwTYkB/C7UUIl
 nwojGq3gvCA3XPC/NtOnJSP9cqwD3Co=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-CpKT-m-2NHGeApytR2HpsQ-1; Mon, 30 Mar 2020 11:09:05 -0400
X-MC-Unique: CpKT-m-2NHGeApytR2HpsQ-1
Received: by mail-wm1-f71.google.com with SMTP id i13so3849718wml.7
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 08:09:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+kYWet4bixbZbPNRdWuq5DEiauOXhGbRO6V2Oqjfd2E=;
 b=YaEDIAnpHa6xkXyTgI+y1zeMEQNUT/6J0AU27lvtJHCgu9HNjyigCdENw/bMAvWA+3
 ukNM5xl9szfPOWFrSQ7qZ1E+LIEZznwYu6IKEAYYncZqPjeTurbR3BDPvCopbo6GoTeG
 +I8OBxQlZ0JcpD2r/qOMgVdBhDwZ9ZBKgH/WvFYwv1GXOlOckMuNj3USlAKe2XQ4SM5a
 XKhw4IfQzWZKUoTTB8oJFex/fPI55cYgGWW49HO/E/5ddeMpROvn5jlaO2sCnCVRGIIX
 69DvcnFf8cEAPaonTNTZXfMplhScPUtXtwT/crE047PDD4Uc2llhGK1YCGu9SczMg4uv
 q6rg==
X-Gm-Message-State: ANhLgQ2DO6pe8V0RU864RHg1rlMzbE47g311Qf055liK3RIDPSEXZnps
 mDVmfpqk0SdU5nJo60yBssxqGYjrvPrD9b8Sbmtc5yX6uePps/qhjwzdjXLOo9/E5whOsnNpE4C
 vA/WvtFbzR2pAJkWATdn/1pKF
X-Received: by 2002:a5d:6a82:: with SMTP id s2mr15825819wru.205.1585580944002; 
 Mon, 30 Mar 2020 08:09:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuK8fcHl6Eny3iPtQKj+itNFU3owKwmKMTZmJFabvEZvt/zBN1Zam2KGqhvau5vjZNoeoFTjg==
X-Received: by 2002:a5d:6a82:: with SMTP id s2mr15825786wru.205.1585580943712; 
 Mon, 30 Mar 2020 08:09:03 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id o145sm10142606wme.42.2020.03.30.08.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 08:09:03 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: ltykernel@gmail.com
Subject: Re: [Update PATCH] x86/Hyper-V: Initialize Syn timer clock when it's
In-Reply-To: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
References: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
Date: Mon, 30 Mar 2020 17:09:00 +0200
Message-ID: <87d08t3mnn.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: wei.liu@kernel.org, sthemmin@microsoft.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, haiyangz@microsoft.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, michael.h.kelley@microsoft.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, devel@linuxdriverproject.org, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ltykernel@gmail.com writes:

> From: Tianyu Lan <Tianyu.Lan@microsoft.com>
>
> Current code initializes clock event data structure for syn timer
> even when it's not available. Fix it.
>
> Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
> ---
> - Fix the wrong title.

The new one is ... weird too :-)

I think it was supposed to be something like "x86/Hyper-V: don't
allocate clockevent device when synthetic timer is unavailable"

>  
>  drivers/hv/hv.c | 15 +++++++++------

Which tree is this patch for? Upstream clockevent allocation has moved
to drivers/clocksource/hyperv_timer.c 

>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
> index 632d25674e7f..2e893768fc76 100644
> --- a/drivers/hv/hv.c
> +++ b/drivers/hv/hv.c
> @@ -212,13 +212,16 @@ int hv_synic_alloc(void)
>  		tasklet_init(&hv_cpu->msg_dpc,
>  			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
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
>  		}
> -		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>  
>  		hv_cpu->synic_message_page =
>  			(void *)get_zeroed_page(GFP_ATOMIC);

-- 
Vitaly

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
