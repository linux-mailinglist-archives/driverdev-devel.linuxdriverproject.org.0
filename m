Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A21E06859D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 10:37:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D90112043E;
	Mon, 15 Jul 2019 08:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1iyu6ieJnbma; Mon, 15 Jul 2019 08:37:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 521852050B;
	Mon, 15 Jul 2019 08:37:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 513641BF407
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 08:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C1D58674D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 08:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JaZzlXbFUS3K for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 08:37:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E41F086739
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 08:37:18 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DCE869873CB4D6706D46;
 Mon, 15 Jul 2019 16:37:14 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 15 Jul
 2019 16:37:09 +0800
Subject: Re: [PATCH v2 00/24] erofs: promote erofs from staging
To: Pavel Machek <pavel@denx.de>, Gao Xiang <hsiangkao@aol.com>, "Alexander
 Viro" <viro@zeniv.linux.org.uk>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
 <20190714104940.GA1282@xo-6d-61-c0.localdomain>
 <63b9eaca-5d4b-0fe2-c861-7531977a5b48@aol.com> <20190715075641.GA7695@amd>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <a44e439a-7835-ebc8-711d-69f892501759@huawei.com>
Date: Mon, 15 Jul 2019 16:37:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190715075641.GA7695@amd>
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/7/15 15:56, Pavel Machek wrote:
> Hi!
> 
>>>> Changelog from v1:
>>>>  o resend the whole filesystem into a patchset suggested by Greg;
>>>>  o code is more cleaner, especially for decompression frontend.
>>>>
>>>> --8<----------
>>>>
>>>> Hi,
>>>>
>>>> EROFS file system has been in Linux-staging for about a year.
>>>> It has been proved to be stable enough to move out of staging
>>>> by 10+ millions of HUAWEI Android mobile phones on the market
>>>> from EMUI 9.0.1, and it was promoted as one of the key features
>>>> of EMUI 9.1 [1], including P30(pro).
>>>
>>> Ok, maybe it is ready to be moved to kernel proper, but as git can
>>> do moves, would it be better to do it as one commit?
>>>
>>> Separate patches are still better for review, I guess.
>>
>> Thanks for you reply. Either form is OK for me... The first step could
>> be that I hope someone could kindly take some time to look into these
>> patches... :)
>>
>> The patch v2 is slightly different for the current code in the staging
>> tree since I did some code cleanup these days (mainly renaming / moving,
>> including rename unzip_vle.{c,h} to zdata.{c,h} and some confusing
>> structure names and clean up internal.h...). No functional chance and I
>> can submit cleanup patches to staging as well if doing moves by git...
> 
> I believe you should get those committed to staging/, yes. Then you
> ask Al Viro to do pull the git move, I guess, and you follow his
> instructions at that point...
> 
> FILESYSTEMS (VFS and infrastructure)
> M:      Alexander Viro <viro@zeniv.linux.org.uk>
> L:      linux-fsdevel@vger.kernel.org

OK, I will send the incremental patches as well later if the above approach
can be done in practice...

Actually I'd like to get fs people Acked-by about EROFS stuffes, e.g. Al, Ted, etc...
Hello?

It seems rare filesystems upstreamed these years, but I think EROFS is more useful
after moving out of staging. If some people really care about compression ratio,
I can add multi-block fixed-output compression support later (Not very hard, it's
already on my TODO list), although my current company HUAWEI doesn't have any
interest in that way in the near future...

In the long term, I'd like to spend my personal free time to decouple code like
fscrypt and introduce fscompr for other generic fs to compress unmodified files
as well then...

That is another stuff. Anyway, EROFS is one of optimal read-only performance
solutions for consumer electronics compared with others (Note that block storage
has been improved a lot in the past decade...)

Thank you very much,
Gao Xiang

> 
> Best regards,
> 									Pavel
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
