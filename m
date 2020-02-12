Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E199D159DE9
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 01:21:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CD0F20119;
	Wed, 12 Feb 2020 00:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7sg-CvnvVyvS; Wed, 12 Feb 2020 00:21:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52DEE203A5;
	Wed, 12 Feb 2020 00:21:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 467541BF9B2
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 00:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40FBD87327
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 00:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2t5ueC76yDtC for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 00:21:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 77E4686F1B
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 00:21:48 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id d15so200861iog.3
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 16:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=znb551cSk4SwLxhNrEmBfKq1pXuZl4kKW4lbTxGwGf0=;
 b=VZ6ckbfRbXGkd5NeS4Ei/5MZP/bHqLs4i414YLfooFZWB/vpkXt3IRgOWOHViumSmw
 d1dqbNOZEIA0wrY2USJ21lXm6Bf+vZ5MNqF4XFQaUy82r4ioVWSOAy2wxI6esOe4xUd5
 Pj0gKdW0s+lwOTFimBjaR2PgezxkqAafgvdOo4KIJjksO/DAYzzGhkJdfeLdtu7dc3D8
 lA5FUgjcvQ0OpSn5Jx+Qa0wDtDfIonHBAaPjMwsxTyl/oY3XrGZZxXwixUN/WWNMwSfd
 T3eYxWdvx/AdiShb5/amBwznu9N2xDiNXoBrwaPpwqx55F19thSdPSVjxxHnBWKL1QPK
 BPWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=znb551cSk4SwLxhNrEmBfKq1pXuZl4kKW4lbTxGwGf0=;
 b=bHFYf6CL6A354mJO/e7ATfmBAaOJhhKDq3ncMA9AECPGaAbEV/VgzcumKpNsuFGJY2
 JTXa1AZT/bQ+pAw2q6YZyA+KBYU6VI5h96QEw6vzx+8hMAcCHQP5SwSyCkCvPo3Qo31Y
 eAhtRGJcX+Hdqx8cgaD1UzcKiQElBlV/UVp8CRTN0O2AdP5Npzuhb09LnYD93l3wMURC
 RR2imXfWdT1oDllDyOzGA/7PDFxDL9TdVgmDp5Y9zALNoUJFmBR+6f00nwigwvWe0wmg
 AHEl/uMYv4r8O9P+I+CgTOSA9iYw09JgXxkvI2zd4RPeVOMXXiFy8v6JPyh0Kgvd+2aL
 S1lw==
X-Gm-Message-State: APjAAAVhJ0jykNb+mRayYRRPmMX/KzPSsals6F38EtSbpDX7vt5WOWy2
 VLEeCKtotHiAGbdaBXZJ7Sy0Eg==
X-Google-Smtp-Source: APXvYqxnRq6BGvwAHW2U261ceZ/bNuGg0tou3R07qwEpFfCKWQdGO9ZqNUDWl6Avc9BLocaETXZ3DQ==
X-Received: by 2002:a5e:9b01:: with SMTP id j1mr15005204iok.27.1581466907709; 
 Tue, 11 Feb 2020 16:21:47 -0800 (PST)
Received: from [172.22.22.10] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id q90sm1797509ili.27.2020.02.11.16.21.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 16:21:46 -0800 (PST)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: Replace zero-length array
 with flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200211211219.GA673@embeddedor>
 <e465ca6e-ed9f-4340-9f4c-104f9b6acb74@linaro.org>
 <ebd179c5-29d6-4c86-e047-76815572fcf6@embeddedor.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <7ac2012c-6d22-dcc2-7c96-b9d6d578706a@linaro.org>
Date: Tue, 11 Feb 2020 18:21:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ebd179c5-29d6-4c86-e047-76815572fcf6@embeddedor.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/11/20 4:47 PM, Gustavo A. R. Silva wrote:
> 
> 
> On 2/11/20 16:15, Alex Elder wrote:
>> On 2/11/20 3:12 PM, Gustavo A. R. Silva wrote:
>>> The current codebase makes use of the zero-length array language
>>> extension to the C90 standard, but the preferred mechanism to declare
>>> variable-length types such as these ones is a flexible array member[1][2],
>>> introduced in C99:
>>>
>>> struct foo {
>>>         int stuff;
>>>         struct boo array[];
>>> };
>>>
>>> By making use of the mechanism above, we will get a compiler warning
>>> in case the flexible array does not occur last in the structure, which
>>> will help us prevent some kind of undefined behavior bugs from being
>>> inadvertenly introduced[3] to the codebase from now on.
>>>
>>> This issue was found with the help of Coccinelle.
>>>
>>> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
>>> [2] https://github.com/KSPP/linux/issues/21
>>> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>>>
>>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
>>> ---
>>>  drivers/staging/greybus/raw.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
>>> index 838acbe84ca0..2b301b2aa107 100644
>>> --- a/drivers/staging/greybus/raw.c
>>> +++ b/drivers/staging/greybus/raw.c
>>> @@ -30,7 +30,7 @@ struct gb_raw {
>>>  struct raw_data {
>>>  	struct list_head entry;
>>>  	u32 len;
>>> -	u8 data[0];
>>> +	u8 data[];
>>>  };
>>>  
>>>  static struct class *raw_class;
>>>
>>
>> Does the kamlloc() call in receive_data() have any problems
>> with the sizeof(*raw_data) passed as its argument?
>>
> 
> Not in this case. It'd be different with a one-element array (u8 data[1]),
> though.
> 
>> I'm not entirely sure what sizeof(struct-with-flexible-array-member)
>> produces.
>>
> 
> The same as sizeof(struct-with-zero-length-array):
> 
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html

I saw that, but I wondered what the standard says (and
whether Clang produces the same result).

I found this in a draft standard, and I guess we can
assume it applies here:

    "...the  size of the structure is as if the flexible
    array  member were omitted except that it may have
    more trailing padding than the omission would imply."

Looks good to me.

Reviewed-by: Alex Elder <elder@linaro.org>

> 
> --
> Gustavo
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
