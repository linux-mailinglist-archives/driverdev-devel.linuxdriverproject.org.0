Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F21119899F
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 03:47:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B35C24A82;
	Tue, 31 Mar 2020 01:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUdcsK8EI3pU; Tue, 31 Mar 2020 01:47:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA58A24AF1;
	Tue, 31 Mar 2020 01:47:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD2B21BF388
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 01:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D459C85910
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 01:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASjoez9VC4WO for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 01:47:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57DF68511B
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 01:47:43 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id l36so410326pjb.3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 18:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UpB1U8UKWiq62j367un43EKBFMcPdAcS2CCdpbcdj5g=;
 b=rRwnd3Q+/K7GUz1KqhJpsqM5TKuifHL29DE4+s4HIRQcp3BUcKgjsMXYlNE+fxxUUR
 Un3xX902i0Ruh0XR/RzD/CNgDWUzdqXFX8RPJx1B9RawpI85LnhUTAmtwTVNcycX5JKB
 XQzaODmkf5wLCwtKBpCxaSsIEOtTas0QVU3qP5Qit+ihGFiop0G4QqvoVmwfzBlRJAZk
 2DaJ277tJ5/fArAGPSKSLv9KtqtcHi0mD+FQCuvDfmR/N43+bCbxfqI3ClbqbahN6euL
 6rizcaUrDGlzeACSCHrDDP9uPOd9WFQyubTQvs93nZw/qD09txqPMq5Lzm8NkFlHYa5m
 wd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UpB1U8UKWiq62j367un43EKBFMcPdAcS2CCdpbcdj5g=;
 b=gEa4FVNiy8nLp0+BK58mx0GRmzxgzRubBWMCCxm/BOSyspla2nB6IreSj2YcPaiZJE
 Bf01dMOGpEB4XpZjII2zErVovUZonibsKKWCzrwhYwjJ2MeIPHOVXrt9m4gzoT0pBN5M
 eqYbQatNiQQ/qe0j0FVyamqasYgWx/4sgYixFcomhljU6q4biF/uO5IIEH/3H+v6rPnB
 POLiz7IHFg12sn+G6BX+SNHkWogh6j4KmTEZhBh9IcOUjsoPdyqx2vOyxqeS0fxVBcEJ
 VSBKtVOXlJoJ2R8IbN1uPBMKTQeOHEhNJiwfn6u7jo8DeNkSR5ojk4w5oy0P5FC+E405
 ahBA==
X-Gm-Message-State: ANhLgQ18QqH9smbV5pL/z2ce9N46ACuYDOwQSZWO+vc0tnvE+NLTe10u
 qkvIczzovOe5jOlX+KlMg5k=
X-Google-Smtp-Source: ADFU+vv8BSGdbavs2Hov/tawhora8KeuW5yRc9VYjhPkUHGT4das0ikDjzFi6zXXec/X/y9yAPhUVA==
X-Received: by 2002:a17:902:8d91:: with SMTP id
 v17mr14466026plo.53.1585619262926; 
 Mon, 30 Mar 2020 18:47:42 -0700 (PDT)
Received: from ?IPv6:2404:f801:0:6:8000::a31c? ([2404:f801:9000:1a:efeb::a31c])
 by smtp.gmail.com with ESMTPSA id c207sm11171917pfb.47.2020.03.30.18.47.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 18:47:42 -0700 (PDT)
Subject: Re: [Update PATCH] x86/Hyper-V: Initialize Syn timer clock when it's
To: Vitaly Kuznetsov <vkuznets@redhat.com>
References: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
 <87d08t3mnn.fsf@vitty.brq.redhat.com>
From: Tianyu Lan <ltykernel@gmail.com>
Message-ID: <01238d57-3eee-ddee-0fa8-7e387709abbb@gmail.com>
Date: Tue, 31 Mar 2020 09:47:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87d08t3mnn.fsf@vitty.brq.redhat.com>
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
Cc: wei.liu@kernel.org, sthemmin@microsoft.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, haiyangz@microsoft.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, michael.h.kelley@microsoft.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, devel@linuxdriverproject.org, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Vitaly:
     Thanks for your review.

On 3/30/2020 11:09 PM, Vitaly Kuznetsov wrote:
> ltykernel@gmail.com writes:
> 
>> From: Tianyu Lan <Tianyu.Lan@microsoft.com>
>>
>> Current code initializes clock event data structure for syn timer
>> even when it's not available. Fix it.
>>
>> Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
>> ---
>> - Fix the wrong title.
> 
> The new one is ... weird too :-)
> 
> I think it was supposed to be something like "x86/Hyper-V: don't
> allocate clockevent device when synthetic timer is unavailable"

Good suggestion. Will update in the next version.
> 
>>   
>>   drivers/hv/hv.c | 15 +++++++++------
> 
> Which tree is this patch for? Upstream clockevent allocation has moved
> to drivers/clocksource/hyperv_timer.c
> 
>>   1 file changed, 9 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
>> index 632d25674e7f..2e893768fc76 100644
>> --- a/drivers/hv/hv.c
>> +++ b/drivers/hv/hv.c
>> @@ -212,13 +212,16 @@ int hv_synic_alloc(void)
>>   		tasklet_init(&hv_cpu->msg_dpc,
>>   			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
>>   
>> -		hv_cpu->clk_evt = kzalloc(sizeof(struct clock_event_device),
>> -					  GFP_KERNEL);
>> -		if (hv_cpu->clk_evt == NULL) {
>> -			pr_err("Unable to allocate clock event device\n");
>> -			goto err;
>> +		if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
>> +			hv_cpu->clk_evt =
>> +				kzalloc(sizeof(struct clock_event_device),
>> +						  GFP_KERNEL);
>> +			if (hv_cpu->clk_evt == NULL) {
>> +				pr_err("Unable to allocate clock event device\n");
>> +				goto err;
>> +			}
>> +			hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>>   		}
>> -		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>>   
>>   		hv_cpu->synic_message_page =
>>   			(void *)get_zeroed_page(GFP_ATOMIC);
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
