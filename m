Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF482AE147
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 22:02:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7172523115;
	Tue, 10 Nov 2020 21:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qgyRKzNRQFQ4; Tue, 10 Nov 2020 21:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3BC9420029;
	Tue, 10 Nov 2020 21:02:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D5341BF32C
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80C86862F4
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 21:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TM29lgqRbH+2 for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 21:02:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DBA9C86193
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 21:02:16 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id n5so13528347ile.7
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 13:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hTEZuc82d1g5VvucdImgjg3ULND3nOsOgigDk2DI/+8=;
 b=T9D/WIcsClZwpGKErlJuHTFALDz6vsuxGxC1d23FpoAq5emQMX6ZPFB58AHesKL4Np
 tcU2ntQUFGsV5Fmvtxy12aE51gFg/hgx6zBLjtyGmAoHaAFYlV6HWA1e1dPXHWbBGFq0
 jKWHhyDfPV6q/pCSOGvu4Zn12BRot5pZCwKDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hTEZuc82d1g5VvucdImgjg3ULND3nOsOgigDk2DI/+8=;
 b=IwcyYC7zoD7MxY1cKr3FbG4GCySEFaEP5ARYVBUEb2PyTzd4/ZnqbuqAn8Uu442D/w
 qnYWq4qPWHhCV8OVO8vqGPC1wr4mKpISVgbNrQdvn9jgZ2rFCkcTHAEiZTNYM5ZrR51x
 2TglL6GgDmx+KAjaaGxnCHZSv2cu9kIzvg2AePTNl+1A5TeICkc8EUVMbsjSrfhHAjlJ
 b255x28JvJSC5sZTtcI9wDdG20uxl3eoAQiqFqEGYhkEWekmjXxaaUFC3mMzO+BlZuyt
 F1qd+wrlAh0hfWVcJjxJVnTPdq4pWVaqmyCd3hgAlaJ1KVBpnL8brdTAHKdFDbT3AiQ9
 pqIQ==
X-Gm-Message-State: AOAM533QcfpfEHsCNFKkgdG+6tdKSGzRVmZ1xFOxQqzMy06VSr+Fi5MA
 g5UvicD55u6DAsDCJJovFJuwQA==
X-Google-Smtp-Source: ABdhPJwy0XBegJgfxBv38odl1jCZvoE6acuK2Tr9mU3ARqr4mDAA0qHwmB6d9Byriqqy6+c1VLzreA==
X-Received: by 2002:a92:85cd:: with SMTP id f196mr14652639ilh.92.1605042136242; 
 Tue, 10 Nov 2020 13:02:16 -0800 (PST)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id x14sm58031ior.7.2020.11.10.13.02.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 13:02:15 -0800 (PST)
Subject: Re: [PATCH 12/13] drivers/staging/unisys/visorhba: convert stats to
 use seqnum_ops
To: Greg KH <gregkh@linuxfoundation.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
 <6fb679d23de785bbd1be6a528127e29f8ee6abd7.1605027593.git.skhan@linuxfoundation.org>
 <X6r7LVcXBBvRIbd8@kroah.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <82a5ad26-a633-bf76-0591-14f803133666@linuxfoundation.org>
Date: Tue, 10 Nov 2020 14:02:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <X6r7LVcXBBvRIbd8@kroah.com>
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
Cc: devel@driverdev.osuosl.org, keescook@chromium.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11/10/20 1:42 PM, Greg KH wrote:
> On Tue, Nov 10, 2020 at 12:53:38PM -0700, Shuah Khan wrote:
>> seqnum_ops api is introduced to be used when a variable is used as
>> a sequence/stat counter and doesn't guard object lifetimes. This
>> clearly differentiates atomic_t usages that guard object lifetimes.
>>
>> seqnum32 variables wrap around to INT_MIN when it overflows and
>> should not be used to guard resource lifetimes, device usage and
>> open counts that control state changes, and pm states.
>>
>> atomic_t variables used for error_count and ios_threshold are atomic
>> counters and guarded by max. values. No change to the behavior with
>> this change.
>>
>> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
>> ---
>>   .../staging/unisys/visorhba/visorhba_main.c   | 37 ++++++++++---------
>>   1 file changed, 19 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
>> index 7ae5306b92fe..3209958b8aaa 100644
>> --- a/drivers/staging/unisys/visorhba/visorhba_main.c
>> +++ b/drivers/staging/unisys/visorhba/visorhba_main.c
>> @@ -10,6 +10,7 @@
>>   #include <linux/module.h>
>>   #include <linux/seq_file.h>
>>   #include <linux/visorbus.h>
>> +#include <linux/seqnum_ops.h>
>>   #include <scsi/scsi.h>
>>   #include <scsi/scsi_host.h>
>>   #include <scsi/scsi_cmnd.h>
>> @@ -41,8 +42,8 @@ MODULE_ALIAS("visorbus:" VISOR_VHBA_CHANNEL_GUID_STR);
>>   struct visordisk_info {
>>   	struct scsi_device *sdev;
>>   	u32 valid;
>> -	atomic_t ios_threshold;
>> -	atomic_t error_count;
>> +	struct seqnum32 ios_threshold;
>> +	struct seqnum32 error_count;
> 
> Are you sure the threshold variable is a sequence number >
> It goes up and down, not just up and up and up.

Right. I does go down. Turns out this is the only place seqnum32_dec()
is used. :)

I will fix. I noticed you made a comment about _dec() interfaces on
1/13. I can drop those as well. This way seqnum_ops can be just used
for up counters.

thanks,
-- Shuah
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
