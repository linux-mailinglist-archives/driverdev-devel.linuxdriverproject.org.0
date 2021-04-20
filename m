Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 262BF365855
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 14:04:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 757D960A4A;
	Tue, 20 Apr 2021 12:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gyjNqsG6dBnn; Tue, 20 Apr 2021 12:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98A4A600BB;
	Tue, 20 Apr 2021 12:04:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FF441BF30A
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 12:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BD95402EA
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 12:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pi3iYhOvR0nU for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 12:04:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF7BC4021C
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 12:04:15 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id Yp6wlXcgL8K3KYp6zlzVd5; Tue, 20 Apr 2021 14:04:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1618920253; bh=hOjRdcVj/vhC8QEJJK2RYHYHr0CLQHqjNWi1pVmSYoA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=fAPcB6T9UvBNirxHTMGn2rs0Rehy/FF3+NYIYI8wmk2pkMSpWBKuOicdnnYA922S7
 RTfZ4cH+c0uNOHIZC/54UEX6jTJjiY0xVB6lXWCLXIYJSmGF0Fyu97UGTvvE1sHjrr
 XZDf5XPFyl2ZN0H+Tpi0+RqN72kHLve/BcxBSEefg/N+urHtM3C3SQCoua1lKD0AgX
 bI+JeayI4U/Wtv0ebtQfP7VLt2YavfSMJOBRUn7fSXpbQuUwsHfDVSSTpzJ6ZAKfzR
 tE/8y76g+cOWGx4V639I9TVLBnbpk8mLXw+zznxkSNv3YB0mxhJAfAd1ddvnxfyW4/
 ZvHaGKr9vv8cQ==
Subject: Re: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
To: Ashish Kalra <eashishkalra@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan> <20210418012648.GA4821@ashish-NUC8i5BEH>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5abf96ba-b73f-005f-f489-81c6e3a57648@xs4all.nl>
Date: Tue, 20 Apr 2021 14:04:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210418012648.GA4821@ashish-NUC8i5BEH>
Content-Language: en-US
X-CMAE-Envelope: MS4xfCeDK+lIdYygSjSbwF3EraPHGthWBShAeXh/SHt0WbKm2m9F0LVGg2KktfY9PnncxcIPo5bQ/KhijIl50OKsO6rMgwQHUf/kbpoHmMNuRWeuPPiSHvY9
 ZRK48KJNCB+vSkr6Yo1TMgUjL5dhyxNCsAYsth61/Yf1HqKSj57PcdcQc4GD1Vr2q+Ig8CL6iwpFdFSpsz0u5g9Ua+lo30bxOV4gdxs1COPsRhYQVPH1hbRe
 0FR7lq4R+SUDfes9sVxblffz45fKlHE711XuBukD9LIEjfPO691IguUK7JMMGNqyT+s/ApoN8vkeo724vgI/xiAmmpy3ic6WEJ9n6HNHqbEn4c/t0lOie/XY
 NxbAQwM7ie2+BPRhnLgQ3LFsry8ng6SCNAx3taeOsZyWP9A2x7S5VX98q9hBcuN5dAzh7fDK
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Ashish,

On 18/04/2021 03:26, Ashish Kalra wrote:
> On Sat, Apr 17, 2021 at 08:56:13PM +0200, Mauro Carvalho Chehab wrote:
>> Em Sat, 17 Apr 2021 21:06:27 +0530
>> Ashish Kalra <eashishkalra@gmail.com> escreveu:
>>
>>> Upon running sparse, "warning: dubious: !x | !y" is brought to notice
>>> for this file.  Logical and bitwise OR are basically the same in this
>>> context so it doesn't cause a runtime bug.  But let's change it to
>>> logical OR to make it cleaner and silence the Sparse warning.
>>>
>>> Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
>>> ---
>>>  .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
>>> index 358cb7d2cd4c..3b850bb2d39d 100644
>>> --- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
>>> +++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
>>> @@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
>>>  	unsigned int ds_log2 = 0;
>>>  	unsigned int out_width;
>>>  
>>> -	if ((!out_info) | (!vf_info))
>>> +	if ((!out_info) || (!vf_info))
>>
>>
>> While here, please get rid of the unneeded parenthesis:
>>
>> 	if (!out_info || !vf_info)
>>
>>
>>>  		return -EINVAL;
>>>  
>>>  	out_width = out_info->res.width;
>>
>>
>>
>> Thanks,
>> Mauro
> Updated Patch as per your feedback

Please don't post patches as an attachment. Just post it inline as you did the
first time, but with Subject prefix [PATCHv2].

Thanks!

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
