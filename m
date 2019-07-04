Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5EA5F98B
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 16:01:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B24186155;
	Thu,  4 Jul 2019 14:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxX7o63L7wqm; Thu,  4 Jul 2019 14:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 869198612B;
	Thu,  4 Jul 2019 14:01:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69ABB1BF3E3
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 14:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6378A8612B
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 14:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2hJF01tJNYAd for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 14:01:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EAE3686119
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 14:01:09 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 808E05FCF004B354299B;
 Thu,  4 Jul 2019 22:01:04 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 4 Jul 2019
 22:00:55 +0800
Subject: Re: [PATCH] erofs: promote erofs from staging
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190704133413.43012-1-gaoxiang25@huawei.com>
 <20190704135002.GB13609@kroah.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <29e713d5-8146-80cf-8ffd-138b15349489@huawei.com>
Date: Thu, 4 Jul 2019 22:00:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190704135002.GB13609@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On 2019/7/4 21:50, Greg Kroah-Hartman wrote:
> On Thu, Jul 04, 2019 at 09:34:13PM +0800, Gao Xiang wrote:
>> EROFS file system has been in Linux-staging for about a year.
>> It has been proved to be stable enough to move out of staging
>> by 10+ millions of HUAWEI Android mobile phones on the market
>> from EMUI 9.0.1, and it was promoted as one of the key features
>> of EMUI 9.1 [1], including P30(pro).
>>
>> EROFS is a read-only file system designed to save extra storage
>> space with guaranteed end-to-end performance by applying
>> fixed-size output compression, inplace I/O and decompression
>> inplace technologies [2] to Linux filesystem.
>>
>> In our observation, EROFS is one of the fastest Linux compression
>> filesystem using buffered I/O in the world. It will support
>> direct I/O in the future if needed. EROFS even has better read
>> performance in a large CR range compared with generic uncompressed
>> file systems with proper CPU-storage combination, which is
>> a reason why erofs can be landed to speed up mobile phone
>> performance, and which can be probably used for other use cases
>> such as LiveCD and Docker image as well.
>>
>> Currently erofs supports 4k LZ4 fixed-size output compression
>> since LZ4 is the fastest widely-used decompression solution in
>> the world and 4k leads to unnoticable read amplification for
>> the worst case. More compression algorithms and cluster sizes
>> could be added later, which depends on the real requirement.
>>
>> More informations about erofs itself are available at:
>>  Documentation/filesystems/erofs.txt
>>  https://kccncosschn19eng.sched.com/event/Nru2/erofs-an-introduction-and-our-smartphone-practice-xiang-gao-huawei
>>
>> erofs-utils (mainly mkfs.erofs now) is available at
>> git://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git
>>
>> Preliminary iomap support has been pending in erofs mailing
>> list by Chao Yu. The key issue is that current iomap doesn't
>> support tail-end packing inline data yet, it should be
>> resolved later.
>>
>> Thanks to many contributors in the last year, the code is more
>> clean and improved. We hope erofs can be used in wider use cases
>> so let's promote erofs out of staging and enhance it more actively.
>>
>> Share comments about erofs! We think erofs is useful to
>> community as a part of Linux upstream :)
> 
> I don't know if this format is easy for the linux-fsdevel people to
> review, it forces them to look at the in-kernel code, which makes it
> hard to quote.
> 
> Perhaps just make a patch that adds the filesystem to the tree and after
> it makes it through review, I can delete the staging version?  We've
> been doing that for wifi drivers that move out of staging as it seems to
> be a bit easier.

OK, I will resend the whole patchset later as you suggested, but it will
lack of information about some original authors and I'd like to know who
is responsible to merge this kind of request to Linux upstream... maybe Linus?

And it could be more consistent to leave staging version for linux-5.3
because we still use it, but anyway, I will do it now.

Thanks,
Gao Xiang

> 
> thanks,
> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
