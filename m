Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3116036CB63
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 20:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24C3C405D9;
	Tue, 27 Apr 2021 18:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOveKq0Gamyl; Tue, 27 Apr 2021 18:59:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9D6D4021C;
	Tue, 27 Apr 2021 18:59:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12C051BF27E
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 18:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0770C40142
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 18:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBrjEHShFaxK for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 18:58:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C370405B9
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 18:58:50 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id a12so2206638pfc.7
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 11:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tMWM9I3Cqm0UbXLUuFE6H4LTCjDc7K1QIsPCzwEpt5s=;
 b=Be+txuaRCQeqEAio5roWaNQghxHAgkuzwtUdNbRP5FHhQhryxSiGmth1NVN11QD9MW
 3itWzJbZSfxU7zlSMEMIQX2q9MBaU6GHDeMyYZVKU1tS+8JxthzMp0yapogpsPNdvnDb
 E9OsIQHhAKuV6X6D9rSJyWeeyvhetkTtvbz7smHMQWf3Vf3gIQDUcq6Zaojqfivko7JT
 7tIVHH4YtoUi7d0WNhCC7z5TsVSmKALYZfGFfGbMLlKtiUkm30pfPgWDacb0woxiKfm1
 xWzKAwklKZq4FaMBCEWYDSZVbkyF8ocwI8PnrzZCi5aMhKuxCLX9ZvcdeZOt1pCgwSM/
 584A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tMWM9I3Cqm0UbXLUuFE6H4LTCjDc7K1QIsPCzwEpt5s=;
 b=rTwfZSanyfCVTdcOY/1n6tFPZaqL1yXq4aOMRZBPL4UQGbtFDSMxLNEhB8tLMxys30
 gmDcW/+nAuXHsoMDtDOwJli7vyfvLOK6BKfGbkIyHr+qbcDNI74n3/pguGivEA7QkEvq
 20Oo7dlU160avdBoZ8/4ZUIn4sHBOLnarYwMuhVeboCdZ6xzkzhHkR7wX8OHFXmIyr9O
 2qfkpfqteeU07Lf0dnkoW7rC4y4cP58ZYZ82vc16iA06cGc+h6k4MjVwFqQqbCqP/Lm5
 YdtpeSXkKrTVgpE8FK7Ghl6F33X3TAEJGRZ6HWiqS9QM4LfeK5ocorFe4gX/5lA/3TwR
 Ttuw==
X-Gm-Message-State: AOAM532p34C72DXN9y1IPZxwzncqyfc4q/imyWwoT2KPHMoJorFPfjtU
 Qtdj426mBJ5wVJnrRTO47/U=
X-Google-Smtp-Source: ABdhPJy7bHFDkFDynD/WKdI5uugcpU5ERH/XnIaRcCZz3PRt/YczzXrzPcf3ZKirKnB3D8Kgm8BDSg==
X-Received: by 2002:a63:4c63:: with SMTP id m35mr22732185pgl.105.1619549929517; 
 Tue, 27 Apr 2021 11:58:49 -0700 (PDT)
Received: from gmail.com ([103.52.209.34])
 by smtp.gmail.com with ESMTPSA id n203sm2242343pfd.31.2021.04.27.11.58.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Apr 2021 11:58:48 -0700 (PDT)
Date: Wed, 28 Apr 2021 00:28:44 +0530
From: Jitendra <jkhasdev@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8192e: fix array of flexible structures
Message-ID: <20210427185844.GA1030@gmail.com>
References: <20210427174945.1323-1-jkhasdev@gmail.com>
 <YIhTjGpmLSYKuCi3@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIhTjGpmLSYKuCi3@kroah.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 27, 2021 at 08:10:20PM +0200, Greg KH wrote:
>On Tue, Apr 27, 2021 at 11:19:45PM +0530, Jitendra Khasdev wrote:
>> This patch fixes sparse warning "array of flexible structures"
>> for rtllib.h.
>>
>> eg. drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of
>> flexible structures
>>
>> Signed-off-by: Jitendra Khasdev <jkhasdev@gmail.com>
>> ---
>>  drivers/staging/rtl8192e/rtllib.h | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
>> index 4cabaf2..c7cb318 100644
>> --- a/drivers/staging/rtl8192e/rtllib.h
>> +++ b/drivers/staging/rtl8192e/rtllib.h
>> @@ -802,7 +802,7 @@ struct rtllib_authentication {
>>  	__le16 transaction;
>>  	__le16 status;
>>  	/*challenge*/
>> -	struct rtllib_info_element info_element[];
>> +	struct rtllib_info_element *info_element;
>
>You just changed the definition of this structure, and the other
>structures here.  Are you sure this is working properly?
>

I have compiled the driver and install it on my vm, but I don't this specific
hardware, so couldn't test it.

I fixed in context of sparse.

---
Jitendra
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
