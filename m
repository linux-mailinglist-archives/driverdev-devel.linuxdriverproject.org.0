Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6449DA329
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 03:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21384869FE;
	Thu, 17 Oct 2019 01:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOXnK7uEwerK; Thu, 17 Oct 2019 01:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 488A886A42;
	Thu, 17 Oct 2019 01:29:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F4031BF580
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C08B85CFF
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEiRBZgedOWS for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 01:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9069F85C92
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 01:29:45 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id f16so374199qkl.9
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 18:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=WuM4nCTZ81BlJjiPSurvi5qoJfBbsasN21+Lbs4hI80=;
 b=YZgbqFiOHWigqEcnJTqSXSR3rpJQ9coxv7bijJC+IrPHRpZfIMgmMKhjjg8ltsUrzY
 d3fm19++8UGhjVn/X0+q2Q2uAY/8+ogW8b3lLVAwHB+yIbhvadVpU5f5Dw5hGIWONQQj
 cz5lAUxv5QsvX4TsyvcRAc6L0inAPwA2WuDEq6COkDo92UjY7tDN9KQo5y7sc+DzWYLx
 LVL1FA9TFH0kOlqet1p/FCqG5ptiGrftb5LIWKFdxMuS3ERsBhXtMtp7PmlPBUcSgxmc
 O8V8P4oQsfDs/FDa5FKdKIhXc9h8UFxCPSt5zOx8TzMtIMw8EnnHbDnC8766FJcDTALH
 FrUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=WuM4nCTZ81BlJjiPSurvi5qoJfBbsasN21+Lbs4hI80=;
 b=YvOjCNcyuyicOZB5j6Oue4agbbOSfZOTfdzGFRViFFmOxASY4qH4FGCnm+ozAW5Xve
 hRf68/WnshY6SwqaQs/GMwoI2CR6Uvqf8JxThnz/GNmdxxoiOWPC5/drqwMmQfi2T5tj
 X8tRjXdLJVxleLgL+ka3Jlx4XefeSVKU3KR6IYrPe2M+k8JITwOXuFqvVAjTkWqrFxdf
 dz+RVm+7nZ671e1QDHEOxBxQ3SFUbeyZM/qqaUTdb8WFUZ4D73hzg64/tTiitPTtzmdg
 SZ3g0Xdf09SKxdNaii3rLtW5qbsX6rNSgdfOrA8j9rX7KSoHQa655k9mfUF7QXiWPKgy
 uJeQ==
X-Gm-Message-State: APjAAAUq95tur7WSRvi6f8fGiRpngBVnGey4rPA9mTsKzbpwcvyeUeqt
 deB7iUX0mPpj76fZ18PT3rQ=
X-Google-Smtp-Source: APXvYqyEL0e9Qjox5zgJhKGGHo4fwV8d4cO8SiGrDORpEBQhAgKYy+ontyyqyDjou0k5tCq2KZ/XdA==
X-Received: by 2002:a05:620a:1211:: with SMTP id
 u17mr975797qkj.310.1571275784353; 
 Wed, 16 Oct 2019 18:29:44 -0700 (PDT)
Received: from [192.168.1.101] ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id g25sm350465qtp.96.2019.10.16.18.29.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 18:29:43 -0700 (PDT)
Subject: Re: [PATCH] staging: sm750fb: format description of parameters the to
 kernel doc format
To: Randy Dunlap <rdunlap@infradead.org>, outreachy-kernel@googlegroups.com,
 sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 gregkh@linuxfoundation.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, trivial@kernel.org
References: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
 <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
From: gbittencourt <gabrielabittencourt00@gmail.com>
Message-ID: <d55516db-28c5-aa53-8d07-20201dc4ffca@gmail.com>
Date: Wed, 16 Oct 2019 22:29:27 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Randy,

On 10/16/19 10:25 PM, Randy Dunlap wrote:
> Hi,
>
> On 10/16/19 6:18 PM, Gabriela Bittencourt wrote:
>> Cluster comments that describes parameters of functions and create one
>> single comment before the function in kernel doc format.
> Good plan.
>
> How did you test this patch?
I haven't test it. How can I do it?
>
>> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
>> ---
>>   drivers/staging/sm750fb/sm750_accel.c | 65 +++++++++++++++------------
>>   1 file changed, 37 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
>> index dbcbbd1055da..d5564cd60f3b 100644
>> --- a/drivers/staging/sm750fb/sm750_accel.c
>> +++ b/drivers/staging/sm750fb/sm750_accel.c
>> @@ -130,20 +130,24 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
>>   	return 0;
>>   }
>>   
>> -int sm750_hw_copyarea(
>> -struct lynx_accel *accel,
>> -unsigned int sBase,  /* Address of source: offset in frame buffer */
>> -unsigned int sPitch, /* Pitch value of source surface in BYTE */
>> -unsigned int sx,
>> -unsigned int sy,     /* Starting coordinate of source surface */
>> -unsigned int dBase,  /* Address of destination: offset in frame buffer */
>> -unsigned int dPitch, /* Pitch value of destination surface in BYTE */
>> -unsigned int Bpp,    /* Color depth of destination surface */
>> -unsigned int dx,
>> -unsigned int dy,     /* Starting coordinate of destination surface */
>> -unsigned int width,
>> -unsigned int height, /* width and height of rectangle in pixel value */
>> -unsigned int rop2)   /* ROP value */
>> +/**
> Missing function name and short description.  Documentation/doc-guide/kernel-doc.rst says:
>
> The general format of a function and function-like macro kernel-doc comment is::
>
>    /**
>     * function_name() - Brief description of function.
>     * @arg1: Describe the first argument.
>     * @arg2: Describe the second argument.
>     *        One can provide multiple line descriptions
>     *        for arguments.
>     *
>     * A longer description, with more discussion of the function function_name()
>     * that might be useful to those using or modifying it. Begins with an
>     * empty comment line, and may include additional embedded empty
>     * comment lines.
>     *
>     * The longer description may have multiple paragraphs.
>     *
>     * Context: Describes whether the function can sleep, what locks it takes,
>     *          releases, or expects to be held. It can extend over multiple
>     *          lines.
>     * Return: Describe the return value of function_name.
>     *
>     * The return value description can also have multiple paragraphs, and should
>     * be placed at the end of the comment block.
>     */
>
>> + * @sBase: Address of source: offset in frame buffer
>> + * @sPitch: Pitch value of source surface in BYTE
>> + * @sx, @sy: Starting coordinate of source surface
> Those should be on separate lines.
>
>> + * @dBase: Address of destination: offset in frame buffer
>> + * @dPitch: Pitch value of destination surface in BYTE
>> + * @Bpp: Color depth of destination surface
>> + * @dx, @dy: Starting coordinate of destination surface
> Ditto.
>
>> + * @width, @height: width and height of rectangle in pixel value
>> + * @rop2: ROP value
>> + */
>> +int sm750_hw_copyarea(struct lynx_accel *accel,
>> +		      unsigned int sBase, unsigned int sPitch,
>> +		      unsigned int sx, unsigned int sy,
>> +		      unsigned int dBase, unsigned int dPitch,
>> +		      unsigned int Bpp, unsigned int dx, unsigned int dy,
>> +		      unsigned int width, unsigned int height,
>> +		      unsigned int rop2)
>>   {
>>   	unsigned int nDirection, de_ctrl;
>>   
>> @@ -288,20 +292,25 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>>   	return de_ctrl;
>>   }
>>   
>> -int sm750_hw_imageblit(struct lynx_accel *accel,
>> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
>> -		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
>> -		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
>> -		 u32 dBase,    /* Address of destination: offset in frame buffer */
>> -		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
>> -		 u32 bytePerPixel,      /* Color depth of destination surface */
>> -		 u32 dx,
>> -		 u32 dy,       /* Starting coordinate of destination surface */
>> -		 u32 width,
>> -		 u32 height,   /* width and height of rectangle in pixel value */
>> -		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
>> -		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
>> -		 u32 rop2)     /* ROP value */
>> +/**
> Similar comments here...
>
>> + * @pSrcbuf: pointer to start of source buffer in system memory
>> + * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
>> + * and -ive mean button up
>> + * @startBit: Mono data can start at any bit in a byte, this value should be
>> + * 0 to 7
>> + * @dBase: Address of destination: offset in frame buffer
>> + * @dPitch: Pitch value of destination surface in BYTE
>> + * @bytePerPixel: Color depth of destination surface
>> + * @dx, @dy: Starting coordinate of destination surface
>> + * @width, @height: width and height of rectangle in pixel value
>> + * @fColor: Foreground color (corresponding to a 1 in the monochrome data
>> + * @bColor: Background color (corresponding to a 0 in the monochrome data
>> + * @rop2: ROP value
>> + */
>> +int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
>> +		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
>> +		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
>> +		       u32 height, u32 fColor, u32 bColor, u32 rop2)
>>   {
>>   	unsigned int ulBytesPerScan;
>>   	unsigned int ul4BytesPerScan;
>>
> Thanks.
Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
