Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08F33AF59
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:14:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E42048710D;
	Mon, 10 Jun 2019 07:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 10S5dpJBml+1; Mon, 10 Jun 2019 07:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4DF987082;
	Mon, 10 Jun 2019 07:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92A151BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 467FD84D81
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GjHLixbsi0Y4 for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:14:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E954984CF4
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:14:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 196so4531916pgc.6
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FskRycTTyw9VRob7qpJa6qG+/LxbamrBi5S18mFOQHg=;
 b=tghixlPkQyso0KUDuc1jCi34GALkRrwpmUJCfEdsgePr9fCl8KIOf0HrwH000EF5Uu
 BlrHQ17p+/fSj1TVH4L5J10yWB4diMPseHlK6WcGIG4cklfdigVsMSgWX2rLjf4Ct3lI
 EAV3k7XTbF6S6O1ONRnBDM0jCmRryMcFfGObQJg5XQWzivOZ1qm4+oKPI6JOz4CaaiHB
 Igb2hwMHvj2wrahAu8GmF4ZpneQV5WfVlREC1s1r3EAostvEQ1Ceom+YGTOjUb207QAw
 wUgQ1dlMNKh75jk0XFuzVnEhb79tNV9XBBRbjFjEy5NFdrv9toWOVXMNgK+b2kBSRSXX
 vLQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FskRycTTyw9VRob7qpJa6qG+/LxbamrBi5S18mFOQHg=;
 b=V1uq8LVyonjCx+yS1WUfIavFS8Ztd8NoIgZwAo83oDajhoXhy/dA0IuwrEbcUTUdxZ
 BBZY+osC6UZOTpDaQdyW7WweAgTO3ZHS5O0qDWVt/YjRaM3QPehPZkqWdQsb4C1rAgDm
 AoDLMGfPKSll4ACJFNPNgYYgP0q2P9Pk6nKdnlFeUWeynee5rfsIeZS3GhyP91iQN09D
 b99I5bGvdCsfn9g+gq5j0AfkiDreqOQAaZ+GTbk1iEAclC64hmVSjLhyAMaIpKIu8lib
 ADNX2a1FnnthSeokpEGYIx6Krp8n+Q5WaZe8b6PrZ4jk2IY7PGkOLhc9BX2+E3NSXZfR
 NjTw==
X-Gm-Message-State: APjAAAVcJIGKkAI9MUMBFzgpkFN7SC00x/tyWjioe3hpS1jvFuwU91MH
 BcMhf/6JjGSXDRmkYHdYUjk=
X-Google-Smtp-Source: APXvYqwPS2FKtnEXjVaAkSwbEk/iqraTtbkreDdnS2XmmJkV024GJpWEejPAC4UPdtJ+95cB1AHp9A==
X-Received: by 2002:a17:90a:650c:: with SMTP id
 i12mr20064499pjj.44.1560150849546; 
 Mon, 10 Jun 2019 00:14:09 -0700 (PDT)
Received: from [10.0.2.15] ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id m5sm2010017pjl.24.2019.06.10.00.14.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 00:14:09 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190607071123.28193-1-nishkadg.linux@gmail.com>
 <20190609110206.GD30671@kroah.com>
 <74fd5a83-0f60-baae-a65f-bbc0cd9f4ad0@gmail.com>
 <20190610054927.GA13124@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <7554e171-360f-f0a8-5742-9a60e4a1cc2d@gmail.com>
Date: Mon, 10 Jun 2019 12:44:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610054927.GA13124@kroah.com>
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
Cc: devel@driverdev.osuosl.org, benniciemanuel78@gmail.com,
 linux-kernel@vger.kernel.org, hardiksingh.k@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/06/19 11:19 AM, Greg KH wrote:
> On Mon, Jun 10, 2019 at 10:08:21AM +0530, Nishka Dasgupta wrote:
>> On 09/06/19 4:32 PM, Greg KH wrote:
>>> On Fri, Jun 07, 2019 at 12:41:23PM +0530, Nishka Dasgupta wrote:
>>>> Remove variables that are declared and assigned values but not otherwise
>>>> used.
>>>> Issue found with Coccinelle.
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>>>> ---
>>>>    drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
>>>>    1 file changed, 9 deletions(-)
>>>
>>> You sent me 8 patches for this driver, yet only 2 were ordered in a
>>> series.  I have no idea what order to apply these in :(
>>>
>>> Please resend them _all_ in a numbered patch series so I have a chance
>>> to get this correct.
>>
>> Yes, I can do that. Who do I send the patch series to in that case? The
>> maintainers list is slightly different for each file, and most of the
>> patches in this driver are for different and unrelated files (except, I
>> think, the two that I did send as a patch series). Do I combine the
>> maintainers lists and send the entire patch series to everyone listed as a
>> maintainer for any one of the patches in it?
> 
> The maintainer and mailing list is the same for all of the files in a
> single driver.  If not, then something is wrong.

I'm using get_maintainers.pl with no arguments, and for rtl8723bs, I am 
getting a lot of different mailing lists.
E.g
For core/rtw_ieee80211.c, I'm getting the following list:
Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Michael Straube <straube.linux@gmail.com>
Andy Shevchenko <andy.shevchenko@gmail.com>
Hardik Singh Rathore <hardiksingh.k@gmail.com>
Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Nishka Dasgupta <nishkadg.linux@gmail.com>
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

Which is not the same as for core/rtw_mlme_ext.c (the current patch).

> And yes, you can combine the list of people if you wish but be sure you
> are not just randomly including people who happened to touch the driver
> "last".

Okay, I'll combine then. But is there any metric I should be using to 
filter the output of get_maintainer.pl? Currently I'm running it with no 
arguments and just adding everyone.

Thanking you,
Nishka

> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
