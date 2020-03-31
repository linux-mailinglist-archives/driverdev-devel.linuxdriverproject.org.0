Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C64B1995F7
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 14:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D47521FA8;
	Tue, 31 Mar 2020 12:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R4nCfdQbN3Lx; Tue, 31 Mar 2020 12:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0C3820506;
	Tue, 31 Mar 2020 12:06:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B3EE1BF834
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 12:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8683986B92
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 12:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1C5vv8lQyFFL for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 12:06:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71ECF86B74
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 12:06:09 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id l36so981796pjb.3
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 05:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t3s/VyfIuN88XmQbt4LtAx88/o8uoI4xPIOjtF8N7a8=;
 b=TUYTZLh0mZkdBxBpmk1035sLwQw5a5koO5WsnCz1sAWv5zA+WcIY/3mDPUvZftp9fw
 xi6tnrpsfIxaWtvqhTcrC8G6FmPkMFvn0RyJcMZ3Puft3rPZM4kBiyQ6jkVdiZj5pfzH
 x5x+tJFdNE+2rh1pzfN1WvYhksO3zmRDBQgnu4JwC99OgMBkotNnlRMOO9G8Nf9bN4sG
 XFTND6XXnsLfXJ/pY8yq5cUZoFVLIokM5LKgKV4+bnIFHSDQ8rcV7YnTgGOS169TU6f4
 E6MLPninDc9+2VlKm/7y9lrzMqf4OXxpIbdmTXhPhRvz3i0jINJxEvOR5MehCNVHF5w9
 FGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t3s/VyfIuN88XmQbt4LtAx88/o8uoI4xPIOjtF8N7a8=;
 b=mqEyTBAa1JhshzcTY2G/m+K0++itiVYS2gu9eJ7DVW0qIqcIh9FbkVWG7wqbrPPc7O
 XqESZQe/xh/KazjgHI7/H8mMk90wYyNZ8hnLtDHFDkYOsUqS8f3/xPxUYnKd+e1bySTi
 ISNDR0LNAbzjuy1Afg/cSGNRw5Y7xm4jbqY7BUU8/ZBwYCqK2NukNvLUlysaJQ6ZZ+4r
 S7e2CKsHf8y/WGnagdD2hUsZiF3oWlyTrST8/NGjqXYHeoy1q2MO+nzflKOtVHWgWFjY
 KpElR4VWlQ6PrQgPJdHPyvfo7Z7I6M6XrrBYovE+5vu4BF6NMXZKcV6jZB1SRvAtFAR9
 qH0Q==
X-Gm-Message-State: ANhLgQ3OU40TeCQ/BZyeW83ENr9zSek8RGT88ihigcHZu478fB0Yg/Vs
 5oyAFOpN6IQVUXBkeR4gflk=
X-Google-Smtp-Source: ADFU+vv/ie2Pk8JnGrq9pWhB0Z6fgO1RmRJAXLAFlkvgKUPI9v2YF6YNkPPaC2ByRXft1s+fzA4h2w==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr16489249plj.206.1585656369062; 
 Tue, 31 Mar 2020 05:06:09 -0700 (PDT)
Received: from ?IPv6:2404:f801:0:6:8000::a31c? ([2404:f801:9000:18:efed::a31c])
 by smtp.gmail.com with ESMTPSA id b2sm1770763pjc.6.2020.03.31.05.06.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Mar 2020 05:06:08 -0700 (PDT)
Subject: Re: [PATCH V2] x86/Hyper-V: don't allocate clockevent device when
 synthetic timer is unavailable
To: Vitaly Kuznetsov <vkuznets@redhat.com>
References: <20200331021738.2572-1-Tianyu.Lan@microsoft.com>
 <87sgho22ki.fsf@vitty.brq.redhat.com>
From: Tianyu Lan <ltykernel@gmail.com>
Message-ID: <eaa37ee8-8d16-95a5-c1b3-360fb8af58b5@gmail.com>
Date: Tue, 31 Mar 2020 20:06:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87sgho22ki.fsf@vitty.brq.redhat.com>
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

On 3/31/2020 7:20 PM, Vitaly Kuznetsov wrote:
> ltykernel@gmail.com writes:
> 
>> From: Tianyu Lan <Tianyu.Lan@microsoft.com>
>>
>> Current code initializes clock event data structure for syn timer
>> even when it's unavailable. Fix it.
>>
>> Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
>> ---
>> Change since v1:
>> 	Update title and commit log.
>>
>>   drivers/hv/hv.c | 15 +++++++++------
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
> Thank you for fixing the subject! I had one more question on the
> previous version which still stands: which tree is this patch for?
> Upstream, clockevent allocation has moved to
> drivers/clocksource/hyperv_timer.c and the code there is different.
> 
Yes, I just noticed I fixed an issue on the old code after Michael 
reminded me. Sorry for noise. Please ignore it.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
