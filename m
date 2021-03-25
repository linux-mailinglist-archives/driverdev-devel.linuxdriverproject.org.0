Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BA23494CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 16:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2AF9401B0;
	Thu, 25 Mar 2021 15:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5qQN0R3db5D; Thu, 25 Mar 2021 15:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03E9C401B1;
	Thu, 25 Mar 2021 15:00:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36D1E1BF41B
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 15:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24B13401B1
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 15:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emsOruwJaq91 for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 15:00:34 +0000 (UTC)
X-Greylist: delayed 00:14:18 by SQLgrey-1.8.0
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE160401B0
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 15:00:33 +0000 (UTC)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
 by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id 12PEkBps031174
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Mar 2021 15:46:11 +0100
Received: from [139.22.38.170] ([139.22.38.170])
 by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 12PEkABT019439;
 Thu, 25 Mar 2021 15:46:11 +0100
Subject: Re: [PATCH] staging: gasket: remove it from the kernel
To: Rob Springer <rspringer@google.com>
References: <20210315154413.3084149-1-gregkh@linuxfoundation.org>
 <CALTjKEP_+uBU8K-=Cnose8wCv9Wrv8oFnKfRUywLEHV4U_jWjQ@mail.gmail.com>
From: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <30ee6d6b-9206-acad-b224-591fdeb0dad7@siemens.com>
Date: Thu, 25 Mar 2021 15:46:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CALTjKEP_+uBU8K-=Cnose8wCv9Wrv8oFnKfRUywLEHV4U_jWjQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Richard Yeh <rcy@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 15.03.21 17:10, Rob Springer wrote:
> Acked-by: Rob Springer <rspringer@google.com>
> 
> 
> On Mon, Mar 15, 2021 at 8:44 AM <gregkh@linuxfoundation.org> wrote:
>>
>> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>
>> As none of the proposed things that need to be changed in the gasket
>> drivers have ever been done, and there has not been any forward progress
>> to get this out of staging, it seems totally abandonded so remove the
>> code entirely so that people do not spend their time doing tiny cleanups
>> for code that will never get out of staging.
>>
>> If this code is actually being used, it can be reverted simply and then
>> cleaned up properly, but as it is abandoned, let's just get rid of it.
>>
>> Cc: Rob Springer <rspringer@google.com>
>> Cc: Todd Poynor <toddpoynor@google.com>
>> Cc: Ben Chan <benchan@chromium.org>
>> Cc: Richard Yeh <rcy@google.com>
>> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

OK, so is there a plan of the HW vendor to improve the user experience
for this hardware? Is there a different software architecture in sight
which will not need a kernel driver?

Just wondering loudly while fiddling with dkms packages and starring at
the code diffs between what was removed here and what I still have to
install manually from remote sources.

Thanks,
Jan

-- 
Siemens AG, T RDA IOT
Corporate Competence Center Embedded Linux
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
