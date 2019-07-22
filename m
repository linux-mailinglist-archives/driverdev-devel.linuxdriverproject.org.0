Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A7470175
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 15:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C23C32037D;
	Mon, 22 Jul 2019 13:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DB9E5-fIIbAQ; Mon, 22 Jul 2019 13:44:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 889C220413;
	Mon, 22 Jul 2019 13:44:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 339D71BF365
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 13:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E1282037D
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 13:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NqRrb2QzeZvp for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 13:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 44F8C20028
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 13:44:16 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o13so17672576pgp.12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 06:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DJ/uDnwZtRa/WIpL5XNGddtxQKDvNvsyVQzQE3LJ4gw=;
 b=ZlDEAdHEBQVvAOC5iy9LBvzMxroJH0uBe9X14guv8oxOPmuwO0Xl3rljszEAJcg8oV
 tm4OWnPKo0vPh5ZjqyaNoZ38zOBSUuqwo5ez7qwuaeag459SQGTgruZ0s5dRVaoIUz3u
 yDMEWWT3DnjLQWNcebIaVQw3j29/4V7EKFw6P7oKIwTfDnmQxMVd++FmuB/9FmPwJjvx
 uxozzjK1p8uSgNvmEZoqaXFV+b8/4bwp24GG8F1V1akXRtmCRQvme5yAvJLv/uMgdjT2
 Z7pz1slJCBQN5QLmZ9oGFdjiPZXVOA3qVqxS6OF8/YMI0wo2GORYUHFT9QMJ5h7efnYI
 lU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DJ/uDnwZtRa/WIpL5XNGddtxQKDvNvsyVQzQE3LJ4gw=;
 b=RgEypNdTY+s4cIYda+GIuT8a5JSGRXgyQ6rdZzsZJdIYZkL/E/Boo4kmerMDcm4ngZ
 +Z9SvKAb6Sz5C7nofdK906/2zEyEIfhHVNVT1JAoYZQQiLc1xyfMzjixlQYw+8Eg+MPj
 yeX35TDRWtwkz7ykuGq6evcUDT+UZwX+WWrEYXQtEDP1YKaCt4ogZ6pX9QlvbI3w3rHL
 P25KhSkgfSuaSKXblzXkNpcHXHsb8E4l5G1RReMeJ4h5A70GRysu6GA9dWs1cqYHREGM
 6K4apXh22wGw0B5y+2knXQuSzb0G57b+xARrskt1tYI0xKd+vQ3pYcZXDLAp0I6bjLdd
 CJEQ==
X-Gm-Message-State: APjAAAWx8whZ3q3n0ELKykY2Wm4t3AkyoQCnlynfv5e63uc2J2X+eOBi
 wuqjmvl9CxtOBu0jOmYSkJ4=
X-Google-Smtp-Source: APXvYqxICN12ZjuVSVVmzEOLJ9xxnOHnvJY5tJdkiIIv9PDq92RdhBheLNi1HuoHWeityZ+SY89Sjg==
X-Received: by 2002:a63:d555:: with SMTP id v21mr49533803pgi.179.1563803055330; 
 Mon, 22 Jul 2019 06:44:15 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id k64sm20592830pge.65.2019.07.22.06.44.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:44:14 -0700 (PDT)
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jeremy Sowden <jeremy@azazel.net>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net> <20190722122438.GA1908@aptenodytes>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
Date: Mon, 22 Jul 2019 19:14:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722122438.GA1908@aptenodytes>
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

On 22/07/19 5:54 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
>> On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
>>> Typecast as bool the return value of cedrus_find_format in
>>> cedrus_check_format as the return value of cedrus_check_format is
>>> always treated like a boolean value.
>>>
>>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>>> ---
>>> Changes in v2:
>>> - Add !! to the returned pointer to ensure that the return value is
>>>    always either true or false, and never a non-zero value other than
>>>    true.
>>>
>>>   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>>> index e2b530b1a956..b731745f21f8 100644
>>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
>>> @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>>>   static bool cedrus_check_format(u32 pixelformat, u32 directions,
>>>   				unsigned int capabilities)
>>>   {
>>> -	return cedrus_find_format(pixelformat, directions, capabilities);
>>> +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
>>>   }
>>
>> I think the original was fine.  The return value of cedrus_find_format
>> will be automatically converted to bool before being returned from
>> cedrus_check_format since that is the return-type of the function, and
>> the result of converting any non-zero value to bool is 1.
> 
> Okay I was a bit unsure about that and wanted to play it on the safe side
> without really looking it up, but that gave me the occasion to verify.
> 
>  From what I could find (from my GNU system's /usr/include/unistring/stdbool.h):
> 
>     Limitations of this substitute, when used in a C89 environment:
> 
>         - In C99, casts and automatic conversions to '_Bool' or 'bool' are
>           performed in such a way that every nonzero value gets converted
>           to 'true', and zero gets converted to 'false'.  This doesn't work
>           with this substitute.  With this substitute, only the values 0 and 1
>           give the expected result when converted to _Bool' or 'bool'.
> 
> So since the kernel is built for C89 (unless I'm mistaken), I don't think the
> compiler provides any guarantee about bool values being converted to 1 when
> they are non-zero. As a result, I think it's best to be careful.
> 
> However, I'm not sure I really see what cocinelle was unhappy about. You
> mentionned single-line functions, but I don't see how that can be a problem.

It's not a problem per se. I'm just working on a cleanup project for 
which I went through all of staging replacing single-line functions with 
what they were calling. In some cases that makes it easier to figure out 
what a particular function call does, since the called function actually 
does something itself instead of just calling a different function?
This function was also flagged as one such potentially-removable 
function by Coccinelle; but in order to do the same replacement that I'd 
done in other staging drivers, I thought I would do something about the 
type mismatch first, especially since find_format doesn't appear to be 
used anywhere else.
However, now I won't remove check_format and replace it with find_format 
as I'd originally planned, since you've said that isn't necessary here. 
That leaves the return type issue.


> So in the end, I think we should keep the !! and drop the (bool) cast if there's
> no particular warning about it.

Should I send a version 3 that does this?

Thanking you,
Nishka

> What do you think?
> 
> Cheers,
> 
> Paul
> 
>>>   static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>>> --
>>> 2.19.1
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
