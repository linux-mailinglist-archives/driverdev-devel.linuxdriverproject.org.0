Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E372916A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 09:01:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DAF66318E9;
	Fri, 24 May 2019 07:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SxTu+ja9cLa6; Fri, 24 May 2019 07:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83B11318F1;
	Fri, 24 May 2019 07:01:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 038341BF423
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 07:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 00E1188ADE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 07:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVhoZNRgFsea for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 07:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC14C88B54
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 07:01:23 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n2so4507766pgp.11
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 00:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kcpiZ7R8bxxOGoxY0wG0uRBYgVeNOevv4W9NWBBQjIo=;
 b=QVFQZJlc66vuLIMsxfASsBcB+kl/AU4ofR9x4QtN1+/JaLthAVLuyMyHbZ0oAxVPJ0
 W4GYAZm473D/QCRsp3DVCwXtfvkxgKNAyyVznrSKGofQRDElNAjpxkMNAM2eSUUX1ZeD
 YOtb2gMLWDKi+G5rRWMR8FXL+MOB1vMDGHBwZ4l6SuSIYZ42MoYaRK63DzhDuX1VDUEr
 7gkMnYupkGqhh7nZj2AOubOdJPew//UcUt8X0Bnidl8QXMsMB4yVsx4pAytf2QDXCCZ0
 r3XDBr8VB3wmj3orqjvIT+o7Mw89F0276xAob2eX9Gv+3Ld0BDRNEVwNyaovCP4uYgpW
 HQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kcpiZ7R8bxxOGoxY0wG0uRBYgVeNOevv4W9NWBBQjIo=;
 b=hJIWC9gk3ClgVvs1AaLViC1eZT31X1DyL4APE4Kd7Ry5tJcGxQkqf6krmMdDfjrsEv
 e2L8nPjly9NxY+6yC7OzXDNd1rgH/2GAuE8VQt3qjbbnIdt0G8/hPWRluWdJNeFgG+EG
 QNOsjo9m9LSNSyscky0aHdjhMg8FBvR/qeepa5Izj4079UwfcLs1oI5x9HZF4jAl4083
 fdugnGRU3M7BPDCVhEoB6NbeXkzNSnjE29dZj1VTUX/BAxqbtAKm735KjDNuITIII/6n
 6lkj/RE5v4D8kgFa7hByE0pFXbhyJ1aJikhBBSYRBbZrBdrMFTA+dagGQYJqsSC69UJx
 sWug==
X-Gm-Message-State: APjAAAUjQYXf5WpSsygfr5jcSuW2y6a37QAckknmkhIaQ6R65at5Ato9
 Nk0kOJMKZVoZLFzlgPqwApM=
X-Google-Smtp-Source: APXvYqxqZhsVhUG8FRXyeEFRdwfLU4LOE99S2muppyTS+kjC/CdlUHG4PzaDHug1XfLZKtAOmL0NhQ==
X-Received: by 2002:a17:90a:204a:: with SMTP id
 n68mr6923151pjc.21.1558681283503; 
 Fri, 24 May 2019 00:01:23 -0700 (PDT)
Received: from [10.0.2.15] ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id 135sm2181690pfb.97.2019.05.24.00.01.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 00:01:23 -0700 (PDT)
Subject: Re: [PATCH] staging: ks7010: Remove initialisation
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190524055602.3694-1-nishkadg.linux@gmail.com>
 <20190524065238.GA3600@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <aae76db5-8768-d277-e527-9e166a02f46e@gmail.com>
Date: Fri, 24 May 2019 12:31:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524065238.GA3600@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24/05/19 12:22 PM, Greg KH wrote:
> On Fri, May 24, 2019 at 11:26:02AM +0530, Nishka Dasgupta wrote:
>> As the initial value of the return variable result is never used, it can
>> be removed.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/ks7010/ks7010_sdio.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Didn't you already send this?

I sent two patches about removing initialisation in ks7010 today, but I 
couldn't make it a patch series because the different files had 
different maintainers. I don't think I've sent this patch before, but 
it's possible I made a mistake because my local tree has not been the 
best organised lately. I apologise for the confusion.

> And please run a spell-checker on your subject line when you resend
> this :)

Is this about "initialise" (and now also "organised", "apologise", etc)? 
As far as I'm aware whether the word ends in "-ise"/"-ize" depends on 
local varieties of English, so I went with the variety I'm more used to. 
Should I stick with American/Canadian spelling variants (including "-or" 
over "-our" etc) from now on?

Nishka
> 
> thanks,
> 
> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
