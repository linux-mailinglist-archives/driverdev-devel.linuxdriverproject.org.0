Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F94B605C2
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 14:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6F9B8623F;
	Fri,  5 Jul 2019 12:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1lYhe7Rc5qP; Fri,  5 Jul 2019 12:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47FA886222;
	Fri,  5 Jul 2019 12:13:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 323351BF2E5
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 12:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2AFB02044E
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 12:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QllXNyNy7qK for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 12:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A695203CC
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 12:13:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id g15so4243701pgi.4
 for <devel@driverdev.osuosl.org>; Fri, 05 Jul 2019 05:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jePOyDB+/BJqai65o/nniy/GmigQg37Te1D63738p1E=;
 b=JtlJfhOjR1la3EpAWrJCUcNV4oHwfD9FQubM6udvIOnuMNZ5uQpom0RPxotusXmHqm
 /7W3+ZerruZFxjPXXdsH5w5RvqPd3b1xaSL9W7Lf3ym0WRX2nM5yrjKiA28bEd6YUGrt
 NU3sZVP4+earPTO1vg2PCvVapr+lWxiawwFGRwzeVtOGW8cH+bKd46geULijeR+owSD7
 2fINXPA8ilMbwNs4q9tygYZTG8azh5u9Sz8/9npjs3I7DHcNJM6iv5GDXQtnBuzoj/PI
 5onvYs9savWSAkBlHPYoLmlgi5oxybS1sZIyOeKTbqUxyMT4MEjpUyaq9Q/Om6u60JZc
 3yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jePOyDB+/BJqai65o/nniy/GmigQg37Te1D63738p1E=;
 b=B3hN2do4zRxn/wc6E24sjn08+CTMH8dcDGHTwxrAdOldz3uPzTcz5ScxFe97roZfPm
 5j8XgWNXld/48bvueJItLFMNvXU0hVXKZJzJoM8ZCj6jK/MK5aafxovDmtFuIZxmxvKh
 4Ex/BOdZr+4V2SWABoEAnqV2R3eTSNUMXsocCIIQpv0qj6NfAHpx5c2pHXFEgctYXuhh
 hlOIT6kHRDoKRwngNWUN7aWjo9od+k/vN4eTkjN7G7ci3oxaXrQkGW4QdQ90yKd+Iw7m
 zP1xOL2a8Z6ozlSQ6nlOiQmHFOj7B25l1NC2AJodKA8kdkrxbzIQUcsezqvPDr2lgZgl
 e7qA==
X-Gm-Message-State: APjAAAWa8Q9Q1+T7dZXSRCV1zTqs1eMnkinAZPL09qmfMpphMHcM0OyT
 HmThk9HUQyJG/DWyoUfV7Lw=
X-Google-Smtp-Source: APXvYqy3i++VbGx86LnHqXfWM8gjGJRZBK1+vkUqx5LVHHUpUywmvMQXDo6JvqDrcbGPIIbM2HQ5uw==
X-Received: by 2002:a63:b904:: with SMTP id z4mr5103509pge.388.1562328799173; 
 Fri, 05 Jul 2019 05:13:19 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m9sm5693445pgr.24.2019.07.05.05.13.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 05:13:18 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190703081317.22795-2-nishkadg.linux@gmail.com>
 <20190705102650.GB1645@aptenodytes>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <1c5bd5a6-757e-2bce-6adf-6dafbf6956a6@gmail.com>
Date: Fri, 5 Jul 2019 17:43:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190705102650.GB1645@aptenodytes>
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05/07/19 3:56 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
>> Remove function cedrus_check_format as all it does is call
>> cedrus_find_format.
>> Rename cedrus_find_format to cedrus_check_format to maintain
>> compatibility with call sites.
>> Issue found with Coccinelle.
> 
> Maybe we could have a !! or a bool cast to make coccinelle happy here?

Coccinelle didn't flag the type mismatch, just the single-line 
functions. I could add the bool cast then?

Thanking you,
Nishka

> Cheers,
> 
> Paul
> 
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
>>   1 file changed, 2 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> index 0ec31b9e0aea..d5cc9ed04fd2 100644
>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>>   	return container_of(file->private_data, struct cedrus_ctx, fh);
>>   }
>>   
>> -static bool cedrus_find_format(u32 pixelformat, u32 directions,
>> -			       unsigned int capabilities)
>> +static bool cedrus_check_format(u32 pixelformat, u32 directions,
>> +				unsigned int capabilities)
>>   {
>>   	struct cedrus_format *fmt;
>>   	unsigned int i;
>> @@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
>>   	return false;
>>   }
>>   
>> -static bool cedrus_check_format(u32 pixelformat, u32 directions,
>> -				unsigned int capabilities)
>> -{
>> -	return cedrus_find_format(pixelformat, directions, capabilities);
>> -}
>> -
>>   static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>>   {
>>   	unsigned int width = pix_fmt->width;
>> -- 
>> 2.19.1
>>
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
