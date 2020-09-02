Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C1825B2AA
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 19:07:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C82AB86ACF;
	Wed,  2 Sep 2020 17:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xEmQluCt7ld4; Wed,  2 Sep 2020 17:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9326086AAA;
	Wed,  2 Sep 2020 17:07:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EAA71BF847
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 17:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B3308703D
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 17:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1mkw5oaSt2fy for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 17:07:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0886987034
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 17:07:18 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 26334 invoked from network);
 2 Sep 2020 19:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1599066435; bh=xLtgJOPrL3YCDxm2GC4sjGv1t6OcXxeRsL5vC9/BygE=;
 h=Subject:To:Cc:From;
 b=aMnt9GgTmjxjQ055lVFx4ljD8w3szBanRD+4tgF+j5h/xuyEZmEQeAK5JR4LGIEPd
 8vUC47ZduHt0I9C6YYEeZLI0VwglgyHcbuBIa0LLq0BE9jqeSStO32tHpJJAJKA82i
 msxD3ye6EV/H0FZHJtRsM+QAHkUnNtZHi/Sf1a3U=
Received: from 188.146.102.178.nat.umts.dynamic.t-mobile.pl (HELO
 [192.168.1.110]) (antoni.przybylik@wp.pl@[188.146.102.178])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <linux-kernel@vger.kernel.org>; 2 Sep 2020 19:07:15 +0200
Subject: Re: [PATCH v2 2/2] staging: gdm724x: gdm_tty: replaced macro with a
 function
To: Randy Dunlap <rdunlap@infradead.org>
References: <20200902161627.64686-1-antoni.przybylik@wp.pl>
 <14c3b5c1-a5d8-3843-6538-5f76c4b8d6df@infradead.org>
From: "antoni.przybylik@wp.pl" <antoni.przybylik@wp.pl>
Message-ID: <eb24f7d2-0460-dd3b-1ab3-a9748fa193fe@wp.pl>
Date: Wed, 2 Sep 2020 19:07:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <14c3b5c1-a5d8-3843-6538-5f76c4b8d6df@infradead.org>
Content-Language: en-US
X-WP-MailID: 1a2205470018b49782a34339a2a5f8d5
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000B [gRN0]                               
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

On 02.09.2020 18:21, Randy Dunlap wrote:
> On 9/2/20 9:16 AM, Antoni Przybylik wrote:
>> Changed return type to bool and removed inline specifier. Also added
>>   static specifier.
> why remove the inline specifier?

Greg KH wrote to me:

And really, no need to make it inline, just make it a normal function
and the compiler will inline it if needed.

> thanks.
>
>> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
>> ---
>>   drivers/staging/gdm724x/gdm_tty.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
>> index 34a13d98c029..179fc9b9400b 100644
>> --- a/drivers/staging/gdm724x/gdm_tty.c
>> +++ b/drivers/staging/gdm724x/gdm_tty.c
>> @@ -34,7 +34,7 @@ static DEFINE_MUTEX(gdm_table_lock);
>>   static const char *DRIVER_STRING[TTY_MAX_COUNT] = {"GCTATC", "GCTDM"};
>>   static char *DEVICE_STRING[TTY_MAX_COUNT] = {"GCT-ATC", "GCT-DM"};
>>   
>> -inline int gdm_tty_ready(struct gdm *gdm)
>> +static bool gdm_tty_ready(struct gdm *gdm)
>>   {
>>   	return (gdm && gdm->tty_dev && gdm->port.count);
>>   }
>>
>
Antoni Przybylik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
