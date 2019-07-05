Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCF6605BE
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 14:11:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FD8A880C8;
	Fri,  5 Jul 2019 12:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ev0prQH7iSiM; Fri,  5 Jul 2019 12:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D9568808D;
	Fri,  5 Jul 2019 12:11:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A4B21BF2E5
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 12:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 66F3B874CD
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 12:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g+q2RdI-s4yV for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 12:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1BE4E874DA
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 12:11:38 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so871939pls.8
 for <devel@driverdev.osuosl.org>; Fri, 05 Jul 2019 05:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fGg5cmQPJco2qB5UDLvFiWfaIFjGf3sdq62tG9ZVImE=;
 b=ZY6pJFD4rbKle44KkGiMoNj9hXi7Xp+EL6hAnQSSJhI4vj6R/BOzRackxznm0/aFcv
 QFV3qyiwYaTZc9ME3Si/B5tq4Y3u7/lcrSxK4RgaaYbcBNxgQjusG4U87YZYSX4+yjRB
 HODp5hO69Tm9qMuW+lCUF5+eNhfTRTbFkBxf6+lh1yb5JnTwvMDrtXrPWzb15JTKmp12
 QgIsxqLWyUEveXJq2Iyk2zXHQbyPUld9+MRTBl9TJX8uJTYq+dlP6K4v3DFYY6OVzzfy
 nnaQFsNGZJ8ERRO0BQ2e1s1K5w5RVN+nVn7Vfo4yjlmZthI+6En/Vz/WB1sQCzc4F94h
 Te+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fGg5cmQPJco2qB5UDLvFiWfaIFjGf3sdq62tG9ZVImE=;
 b=IvmFUxZsQDx6inZuFeoI31HuG5R0jEUvvdC5I96lLOa4486ELj7LGY2gyJfrCXNRk6
 TEj15VK/O3neM8QOIOET5yvMJjuT3jYWXCV8NfbC00WRbuM24kc3cZyZ1/KO+53hgUqD
 xsKPBX77D3OxPK1S70+C421wqjqZCEw5iKi/zgA+LaD9dNoJ0E/IYaKScSgXmFxrwjCj
 gRJTWSVIqB9mNJahSKMF9+2WGx8V7NqMhoUMUGnwTHi8/tFoYd4kZrIc/EZwdrzAdDnC
 AZT5790BcpBYRCVMJQuwdL0bQhGnNAa5mgrNQ6t8AZ/J8rDiouiqAob0bePV0v6vtE/8
 bo2A==
X-Gm-Message-State: APjAAAW/XLolUYGx+si6g7Yt0V788w1gWScFd7XDHYwd8KSCXSreZf2r
 pXoZu4iOiYqrSyYEilEjEFc=
X-Google-Smtp-Source: APXvYqzsy1r0hgrfbmfcd/68Z1oyOkJvepWGSLGX0UsVBJP9RB1teHvNd3rCpUvJh7rDk5p2+nTgag==
X-Received: by 2002:a17:902:b603:: with SMTP id b3mr5302378pls.9.1562328697756; 
 Fri, 05 Jul 2019 05:11:37 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id o16sm24507895pgi.36.2019.07.05.05.11.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 05:11:37 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: media: sunxi: Change return type of
 cedrus_find_format()
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190705102603.GA1645@aptenodytes>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <e177ab7b-2e1d-536c-6b30-3fdb9ae0ff31@gmail.com>
Date: Fri, 5 Jul 2019 16:41:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190705102603.GA1645@aptenodytes>
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
>> Change return type of cedrus_find_format to bool as it is only called
>> once, by a function whose return value is bool, and the return value of
>> cedrus_find_format is returned as-is at the call-site.
>> Issue found with Coccinelle.
> 
> The purpose of this function (although definitely under-used at this point),
> was to return the pointer to the element structure, not to indicate whether
> the format format is part of the list or not.
> 
> In spite of that, this change reduces the use case for the function, so I do
> not think it is beneficial, sorry.

Okay, thank you for the clarification.

Nishka

> Cheers,
> 
> Paul
> 
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 11 ++++-------
>>   1 file changed, 4 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> index 9673874ece10..0ec31b9e0aea 100644
>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>>   	return container_of(file->private_data, struct cedrus_ctx, fh);
>>   }
>>   
>> -static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>> -						unsigned int capabilities)
>> +static bool cedrus_find_format(u32 pixelformat, u32 directions,
>> +			       unsigned int capabilities)
>>   {
>>   	struct cedrus_format *fmt;
>>   	unsigned int i;
>> @@ -70,13 +70,10 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>>   
>>   		if (fmt->pixelformat == pixelformat &&
>>   		    (fmt->directions & directions) != 0)
>> -			break;
>> +			return true;
>>   	}
>>   
>> -	if (i == CEDRUS_FORMATS_COUNT)
>> -		return NULL;
>> -
>> -	return &cedrus_formats[i];
>> +	return false;
>>   }
>>   
>>   static bool cedrus_check_format(u32 pixelformat, u32 directions,
>> -- 
>> 2.19.1
>>
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
