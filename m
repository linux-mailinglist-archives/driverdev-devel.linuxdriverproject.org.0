Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB563AFB8
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C8008710D;
	Mon, 10 Jun 2019 07:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aADtIzmUT9Jc; Mon, 10 Jun 2019 07:33:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E654286D85;
	Mon, 10 Jun 2019 07:33:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9903D1BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9034086D85
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCrr2lI260g8 for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:33:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2B4986D7A
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:33:18 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id j2so4772000pfe.6
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=koZeBgbIvIx3Gmk5yVcnjjF/KT2zREkVPNLZwQ9+m9U=;
 b=ul52rCZi6Qd+8bnis4+Y2O4vVDYmhJ8QbW8p3zU55kRurzoOZQ8aSnyT0HxQYC0/w3
 Qi8hyL8FDz8qD2vwWe2f0SYp1JWVtrzCHEQvxYDrKz5tY0QDxo8qnfkeAn3v0o7kB3se
 zozkojB9jqG77NtfwDE72PBIuX8VzOBU4zMp7WNjnZuGnsUT4MR0zUskMqDZPPw2uRkd
 ES5WehK0mITTiLnLsFQxmOdTKlDWwoVLC1COWJ5NyrPPKXrzMTGTwBWKBhG6Vef7mXFs
 7xJU2yitTdDq+UojVVKI4Lzead50uge34Ken72yhYoV7gzetoM1OW3T7CLOk/7msIpnK
 KOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=koZeBgbIvIx3Gmk5yVcnjjF/KT2zREkVPNLZwQ9+m9U=;
 b=m4WERQXpPXTgaoIeLoPgnQYqaYy5eOYbDUFlFOELfIVOZjJZuWdbXwIl9uAs2IyP8l
 QVrGe/k4CI4PmpkyNcwzbCJfOuxbCuVEan7ssQWcQpE47xtEL0AtP4alEDyI/CWoURWW
 rGIo1NToN0qlQYNPB8JuwLHxmqe2ZYD25Xo22ROHds2XSaVq/s4ycTI1B67KiYo5QkNH
 4aYe1kilfgTZ6hjHRCmz0zlz225D8XFg7Yk+F9B4/rQLmhCdGMits6dIV9dwSxKBAvT1
 BZ/IoyC6Z94myvDFOWyO7iGtJZJiZJEAJkAxzxQ55izbxuNPHIaAh7ntlN+rA9XCf3S+
 xv1A==
X-Gm-Message-State: APjAAAVakffz84XNcEikljTq9GwVUC2zCyQHQPhEQiwFG88w8uywrJeM
 1CjHGyjsUg8fG5GDMJlvG34=
X-Google-Smtp-Source: APXvYqxHVOGnI8XTTtt9/7ccASKes2Xrrh7wxfSXPiBDi0IIWlrTyAsGuOdVzE2Y+g4xF/LrN9Kedg==
X-Received: by 2002:a17:90a:a790:: with SMTP id
 f16mr20126049pjq.27.1560151998622; 
 Mon, 10 Jun 2019 00:33:18 -0700 (PDT)
Received: from [10.0.2.15] ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id 188sm18407198pfe.30.2019.06.10.00.33.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 00:33:18 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused
 variables
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190607071123.28193-1-nishkadg.linux@gmail.com>
 <20190609110206.GD30671@kroah.com>
 <74fd5a83-0f60-baae-a65f-bbc0cd9f4ad0@gmail.com>
 <20190610054927.GA13124@kroah.com>
 <7554e171-360f-f0a8-5742-9a60e4a1cc2d@gmail.com>
 <20190610072521.GA20470@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <04380edb-0177-8542-4402-84747addbe27@gmail.com>
Date: Mon, 10 Jun 2019 13:03:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610072521.GA20470@kroah.com>
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

On 10/06/19 12:55 PM, Greg KH wrote:
> On Mon, Jun 10, 2019 at 12:44:05PM +0530, Nishka Dasgupta wrote:
>> On 10/06/19 11:19 AM, Greg KH wrote:
>>> On Mon, Jun 10, 2019 at 10:08:21AM +0530, Nishka Dasgupta wrote:
>>>> On 09/06/19 4:32 PM, Greg KH wrote:
>>>>> On Fri, Jun 07, 2019 at 12:41:23PM +0530, Nishka Dasgupta wrote:
>>>>>> Remove variables that are declared and assigned values but not otherwise
>>>>>> used.
>>>>>> Issue found with Coccinelle.
>>>>>>
>>>>>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>>>>>> ---
>>>>>>     drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
>>>>>>     1 file changed, 9 deletions(-)
>>>>>
>>>>> You sent me 8 patches for this driver, yet only 2 were ordered in a
>>>>> series.  I have no idea what order to apply these in :(
>>>>>
>>>>> Please resend them _all_ in a numbered patch series so I have a chance
>>>>> to get this correct.
>>>>
>>>> Yes, I can do that. Who do I send the patch series to in that case? The
>>>> maintainers list is slightly different for each file, and most of the
>>>> patches in this driver are for different and unrelated files (except, I
>>>> think, the two that I did send as a patch series). Do I combine the
>>>> maintainers lists and send the entire patch series to everyone listed as a
>>>> maintainer for any one of the patches in it?
>>>
>>> The maintainer and mailing list is the same for all of the files in a
>>> single driver.  If not, then something is wrong.
>>
>> I'm using get_maintainers.pl with no arguments, and for rtl8723bs, I am
>> getting a lot of different mailing lists.
>> E.g
>> For core/rtw_ieee80211.c, I'm getting the following list:
>> Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Michael Straube <straube.linux@gmail.com>
>> Andy Shevchenko <andy.shevchenko@gmail.com>
>> Hardik Singh Rathore <hardiksingh.k@gmail.com>
>> Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
>> Nishka Dasgupta <nishkadg.linux@gmail.com>
>> devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
>> linux-kernel@vger.kernel.org (open list)
>>
>> Which is not the same as for core/rtw_mlme_ext.c (the current patch).
>>
>>> And yes, you can combine the list of people if you wish but be sure you
>>> are not just randomly including people who happened to touch the driver
>>> "last".
>>
>> Okay, I'll combine then. But is there any metric I should be using to filter
>> the output of get_maintainer.pl? Currently I'm running it with no arguments
>> and just adding everyone.
> 
> Look at the "role" that each person has.  Here is the output of
> get_maintainer.pl when I run it on the first file above:
> 
> $ ./scripts/get_maintainer.pl --file drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:16/16=100%)
> Michael Straube <straube.linux@gmail.com> (commit_signer:14/16=88%,authored:14/16=88%,added_lines:43/59=73%,removed_lines:114/130=88%)
> Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com> (commit_signer:1/16=6%,authored:1/16=6%,added_lines:3/59=5%)
> Hardik Singh Rathore <hardiksingh.k@gmail.com> (commit_signer:1/16=6%,authored:1/16=6%,added_lines:13/59=22%,removed_lines:13/130=10%)
> Andy Shevchenko <andy.shevchenko@gmail.com> (commit_signer:1/16=6%)
> devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)
> 
> 
> That shows that "Greg Kroah-Hartman" is a reviewer for this subsystem,
> Michael and Payal and Hardik and Andy have all submitted patches
> "recently", and then devel@ is the mailing list for the patches to be
> sent to.
> 
> So, just include the maintainer and the mailing list and you will be
> fine.  No need to bother lkml with staging patches, nor the people who
> last sent cleanup patches.
> 
> hope this helps,

This helps a lot; thank you!

Nishka

> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
