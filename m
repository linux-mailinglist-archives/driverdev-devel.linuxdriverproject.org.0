Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D696431507D
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 14:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F4596F8A0
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 13:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-w1RuI5FD5L for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 13:40:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 42FF66F8BD; Tue,  9 Feb 2021 13:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F9BC6F8A3;
	Tue,  9 Feb 2021 13:40:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55D2D1BF27E
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 524A286FF1
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G8n3BhHyxFxR for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 13:39:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net
 [194.109.24.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 517B486FBA
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 13:39:48 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 9TEzlxyODfJJC9TF2lblLA; Tue, 09 Feb 2021 14:39:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1612877985; bh=wDKgogZmfV7JshEhGuqAk/26415rZeY12aI+VdHdmbk=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=TMp21cuI1Mu94Zo4VdnvDAipJ5u1BCz7VPbfNqxdUqkwEgZ10ZR4drEK/648XVgIH
 USPKPKEgdOD3J/M2y7JtSsIXheg1ZCU68KuyDv5FKH5HiDalPnD+wkut3mvO1SbJpw
 SVpeGiaBnXf+WazLI8RXJoNNA6j5/mouJ/QNV8A9075kIC4YVg6GtoVXkIu2uA0T9Y
 wCb/oqYr8/kcNDLtNzE5tnV1Ap8N0rXNmq32LAMOAlqYQrSe9n9JOd6zHx4BNjjsBm
 Ih9hCmiN2wOEyhWVny6m9cGew4d3PY1A7MohQxMPnGcJhHima8u4TUOdzYBntGe1At
 ak70rDyLpM4vw==
Subject: Re: [PATCH AUTOSEL 5.10 14/36] media: rkisp1: uapi: change hist_bins
 array type from __u16 to __u32
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
References: <20210208175806.2091668-1-sashal@kernel.org>
 <20210208175806.2091668-14-sashal@kernel.org>
 <12c8f50e-3bba-5936-6e67-55bd928a75c7@xs4all.nl>
 <e086d0f4-c5f0-e38c-8937-593852ac0b50@collabora.com>
 <YCKH0HvTxeYKg1xf@kroah.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <3413d0af-bc8e-4a9d-e0a2-eea98febd4e9@xs4all.nl>
Date: Tue, 9 Feb 2021 14:39:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <YCKH0HvTxeYKg1xf@kroah.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfB1UCHFFh/Ei5Mx3bDBWVch7Hs7bPP+TGm9rL8g9DcTqiZnMVRIAXXVymemK5/rft1wcwX7NFK4VP/ysfuNY2P7eTJB7XqxUb+QQDHem8QjOscUnsO27
 P3KAerXqMc+5J07IfE81LLeCngHJBv42cV/iFrbO3beqD/Yv+tTuC4kIWih+mQq3EJCTvRhkAOaO137DuO+HpDQSOgAhntAj7y184IBJWXzPzCrynqgiGuBf
 haCiaAvwNo6qf4mITC5QaTASdKMl5daa8ctXFC30LHyrKrq8ASsUdjB0WvmVD4zDrPGOFI7qYsxsO9pegszXZn3q9qZChHs7n9ElODXzsioIRjE0Vfn647Eg
 bNUVePmfUYGaAdwrTQeulumxi99zpHHbKtBugrJp68BPd683kNI+n6OWNXTsckmTa3ij1TfO09gpmTwjnwc1x9pGelKYM+yMqwwGJ6UdTVZzOe4M03AQlFbi
 zlIzIIJ6QubxPWR06rQinp6usR/9Xq5S78NQoA==
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/02/2021 14:02, Greg Kroah-Hartman wrote:
> On Tue, Feb 09, 2021 at 01:45:35PM +0100, Dafna Hirschfeld wrote:
>>
>>
>> Am 08.02.21 um 21:46 schrieb Hans Verkuil:
>>> On 08/02/2021 18:57, Sasha Levin wrote:
>>>> From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>
>>>> [ Upstream commit 31f190e0ccac8b75d33fdc95a797c526cf9b149e ]
>>>>
>>>> Each entry in the array is a 20 bits value composed of 16 bits unsigned
>>>> integer and 4 bits fractional part. So the type should change to __u32.
>>>> In addition add a documentation of how the measurements are done.
>>>
>>> Dafna, Helen, does it make sense at all to backport these three patches to
>>> when rkisp1 was a staging driver?
>>>
>>> I would be inclined not to backport this.
>>
>> I also don't think it makes sense since this changes the uapi and it is not really a bug fix.
> 
> Why was it ok to change the uapi in a newer kernel and not an older one?

In the older kernels this was a staging driver and the driver API was not public.
It's debatable whether there is any benefit from trying to backport patches like
this to a staging driver like that.

Also, these backports are incomplete, there are other patches that would need to
be applied to make this work. Applying just these three patches without the other
three (commits 66d81de7ea9d, fc672d806bd7 and ef357e02b6c4) makes it very messy
indeed.

I'd just leave the staging driver in older kernels as-is. Certainly don't just
apply these three patches without the other three commits, that would make it
even worse.

Regards,

	Hans

> 
> thanks,
> 
> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
