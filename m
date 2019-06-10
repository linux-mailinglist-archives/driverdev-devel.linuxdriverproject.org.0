Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FF63AE3A
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 06:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB7A785764;
	Mon, 10 Jun 2019 04:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3Aouvr49bYs; Mon, 10 Jun 2019 04:38:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 607D1855D1;
	Mon, 10 Jun 2019 04:38:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D17601BF40B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 04:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD8562000C
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 04:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fh7+I4F7NeED for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 04:38:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4846E1FEDF
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 04:38:26 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id cl9so3106655plb.10
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 21:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mpvEIcub74Ft9tQ19C+ftgMqPmIXoqD9CmzUzCOdNHo=;
 b=Pi8MLwR4TLdpCZ6t/LUx60qyKNBsya1oMtOVGH8Y2QkkD4FISlPx4rri2+Zc40wAAC
 uNJnxIHb4x0TjU3oQ2BYr3ymaaof65cJdhUGwWBzCEvZfsHwP3JA99DCD2Pli/UZ5L6k
 38hk8vOkAwnr81DK3tNkSdBjIYbby7+CuOdx3fF9Pq6CdcBX1zzOzzu5uwqHHgjVsvX0
 U6t+0MCMUfPRYhIiOuVs77ir1LyqVoc5eyR5GAUE2rAoP6XsqXy4PVBAUPa6oV6VOJ+/
 0NR+iMgET5E8ECG7DjQazl06DgVKpgQLO7iLiPfN5MJtbhechkNSVkKhz79BpftzA650
 wQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mpvEIcub74Ft9tQ19C+ftgMqPmIXoqD9CmzUzCOdNHo=;
 b=B39LS1GKCCIBP5YapqMZRp4WTsSKOm9IqZR4pFr4r7Mf2/2lkJK8IcJ0MV145+mSgW
 DCtBBu59LGlWpPu3CMAfMRxEf1azp8E7jgnpnEewcG3NLHb6hNfRVsRXW1hKorMThNsn
 30I0yCNJ1xFgxVuUxZ3UkUu7SxjJTUanJp1RUjMc1eiP+ajcPKj6y3pBFaWTvm+8TXIY
 Z2k3zuW+VGnGcmsC9gAgEGgY4sKooiL6NPyIsJCJHK4O8c7uyEiSCtaWZpiy3njHOdaq
 9RH9EacZEdgr48ktgmG4PC/nLL9olMkgyF+EYBgAZLF/tXKbK/5W2cAWMJSqnMF0m1JY
 ccPQ==
X-Gm-Message-State: APjAAAV3HGMX3VwTFTb1SLiIenqy+j73gFiVowlW3L0g8gsezi3eLA4y
 WuFcgwZNEuqN9IBW7Zfl4Nk=
X-Google-Smtp-Source: APXvYqxRvLX40gv+OgzBjTF3wrCildCfFd1d4SpB/WueK+15EvhScQvfwHZvJubUBIUMqikrDRLAaA==
X-Received: by 2002:a17:902:a516:: with SMTP id
 s22mr29601481plq.178.1560141505994; 
 Sun, 09 Jun 2019 21:38:25 -0700 (PDT)
Received: from [10.0.2.15] ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id n32sm8603724pji.29.2019.06.09.21.38.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 21:38:25 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190607071123.28193-1-nishkadg.linux@gmail.com>
 <20190609110206.GD30671@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <74fd5a83-0f60-baae-a65f-bbc0cd9f4ad0@gmail.com>
Date: Mon, 10 Jun 2019 10:08:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190609110206.GD30671@kroah.com>
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
Cc: devel@driverdev.osuosl.org, hardiksingh.k@gmail.com,
 linux-kernel@vger.kernel.org, benniciemanuel78@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/06/19 4:32 PM, Greg KH wrote:
> On Fri, Jun 07, 2019 at 12:41:23PM +0530, Nishka Dasgupta wrote:
>> Remove variables that are declared and assigned values but not otherwise
>> used.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
>>   1 file changed, 9 deletions(-)
> 
> You sent me 8 patches for this driver, yet only 2 were ordered in a
> series.  I have no idea what order to apply these in :(
> 
> Please resend them _all_ in a numbered patch series so I have a chance
> to get this correct.

Yes, I can do that. Who do I send the patch series to in that case? The 
maintainers list is slightly different for each file, and most of the 
patches in this driver are for different and unrelated files (except, I 
think, the two that I did send as a patch series). Do I combine the 
maintainers lists and send the entire patch series to everyone listed as 
a maintainer for any one of the patches in it?

Thanking you,
Nishka

> thanks,
> 
> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
