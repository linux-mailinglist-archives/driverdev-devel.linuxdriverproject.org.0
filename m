Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C61593494EC
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 16:08:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ACF984A62;
	Thu, 25 Mar 2021 15:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1VXH0G-6E78; Thu, 25 Mar 2021 15:08:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84A0984A3F;
	Thu, 25 Mar 2021 15:08:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52F0B1BF3EA
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 15:08:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42E5760758
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 15:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82GJvHj4ugxD for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 15:08:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4867560621
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 15:07:59 +0000 (UTC)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
 by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id 12PF7vaV028108
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Mar 2021 16:07:57 +0100
Received: from [139.22.38.170] ([139.22.38.170])
 by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 12PEvufl013703;
 Thu, 25 Mar 2021 15:57:56 +0100
Subject: Re: [PATCH] staging: gasket: remove it from the kernel
To: Greg KH <gregkh@linuxfoundation.org>
References: <20210315154413.3084149-1-gregkh@linuxfoundation.org>
 <CALTjKEP_+uBU8K-=Cnose8wCv9Wrv8oFnKfRUywLEHV4U_jWjQ@mail.gmail.com>
 <30ee6d6b-9206-acad-b224-591fdeb0dad7@siemens.com>
 <YFyjsAtilH+3fggx@kroah.com>
From: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <842fccfa-30a6-d40a-bf9a-8e7dea355666@siemens.com>
Date: Thu, 25 Mar 2021 15:57:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <YFyjsAtilH+3fggx@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25.03.21 15:52, Greg KH wrote:
> On Thu, Mar 25, 2021 at 03:46:10PM +0100, Jan Kiszka wrote:
>> On 15.03.21 17:10, Rob Springer wrote:
>>> Acked-by: Rob Springer <rspringer@google.com>
>>>
>>>
>>> On Mon, Mar 15, 2021 at 8:44 AM <gregkh@linuxfoundation.org> wrote:
>>>>
>>>> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>
>>>> As none of the proposed things that need to be changed in the gasket
>>>> drivers have ever been done, and there has not been any forward progress
>>>> to get this out of staging, it seems totally abandonded so remove the
>>>> code entirely so that people do not spend their time doing tiny cleanups
>>>> for code that will never get out of staging.
>>>>
>>>> If this code is actually being used, it can be reverted simply and then
>>>> cleaned up properly, but as it is abandoned, let's just get rid of it.
>>>>
>>>> Cc: Rob Springer <rspringer@google.com>
>>>> Cc: Todd Poynor <toddpoynor@google.com>
>>>> Cc: Ben Chan <benchan@chromium.org>
>>>> Cc: Richard Yeh <rcy@google.com>
>>>> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>
>> OK, so is there a plan of the HW vendor to improve the user experience
>> for this hardware? Is there a different software architecture in sight
>> which will not need a kernel driver?
> 
> What hardware vendor makes this thing?  What systems require it?  And
> why can't you use UIO instead?
> 
>> Just wondering loudly while fiddling with dkms packages and starring at
>> the code diffs between what was removed here and what I still have to
>> install manually from remote sources.
> 
> Where are the remote sources for this thing and why didn't they ever get
> synced into the kernel tree?
> 

Very good questions, and I'm curious to learn if someone in CC can
answer them.

I was just starting to play with this thing, using Google's binary
Debian repo. But that is not... optimal. Even more when thinking beyond
a try-out stage.

Jan

-- 
Siemens AG, T RDA IOT
Corporate Competence Center Embedded Linux
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
