Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 277CD6F8AC
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 07:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1C29854B4;
	Mon, 22 Jul 2019 05:02:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oah1tY9aD4iN; Mon, 22 Jul 2019 05:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14F018532E;
	Mon, 22 Jul 2019 05:02:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44A851BF386
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 05:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3DCFD203BE
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 05:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfGm3hEHOsGC for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 05:02:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E02120028
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 05:02:14 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 393D483F44B3A87A86CF;
 Mon, 22 Jul 2019 13:02:06 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 13:01:58 +0800
Subject: Re: [PATCH v3 12/24] erofs: introduce tagged pointer
To: Amir Goldstein <amir73il@gmail.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-13-gaoxiang25@huawei.com>
 <CAOQ4uxh04gwbM4yFaVpWHVwmJ4BJo4bZaU8A4_NQh2bO_xCHJg@mail.gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <39fad3ab-c295-5f6f-0a18-324acab2f69e@huawei.com>
Date: Mon, 22 Jul 2019 13:01:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAOQ4uxh04gwbM4yFaVpWHVwmJ4BJo4bZaU8A4_NQh2bO_xCHJg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Amir,

On 2019/7/22 12:39, Amir Goldstein wrote:
> On Mon, Jul 22, 2019 at 5:54 AM Gao Xiang <gaoxiang25@huawei.com> wrote:
>>
>> Currently kernel has scattered tagged pointer usages
>> hacked by hand in plain code, without a unique and
>> portable functionset to highlight the tagged pointer
>> itself and wrap these hacked code in order to clean up
>> all over meaningless magic masks.
>>
>> This patch introduces simple generic methods to fold
>> tags into a pointer integer. Currently it supports
>> the last n bits of the pointer for tags, which can be
>> selected by users.
>>
>> In addition, it will also be used for the upcoming EROFS
>> filesystem, which heavily uses tagged pointer pproach
>>  to reduce extra memory allocation.
>>
>> Link: https://en.wikipedia.org/wiki/Tagged_pointer
> 
> Well, it won't do much good for other kernel users in fs/erofs/ ;-)

Thanks for your reply and interest in this patch.... :)

Sigh... since I'm not sure kernel folks could have some interests in that stuffs.

Actually at the time once I coded EROFS I found tagged pointer had 2 main advantages:
1) it saves an extra field;
2) it can keep the whole stuff atomicly...
And I observed the current kernel uses tagged pointer all around but w/o a proper wrapper...
and EROFS heavily uses tagged pointer... So I made a simple tagged pointer wrapper
to avoid meaningless magic masks and type casts in the code...

> 
> I think now would be a right time to promote this facility to
> include/linux as you initially proposed.
> I don't recall you got any objections. No ACKs either, but I think
> that was the good kind of silence (?)

Yes, no NAK no ACK...(it seems the ordinary state for all EROFS stuffs... :'( sigh...)
Therefore I decided to leave it in fs/erofs/ in this series...

> 
> You might want to post the __fdget conversion patch [1] as a
> bonus patch on top of your series.

I am not sure if another potential users could be quite happy with my ("sane?" or not)
implementation... (Is there some use scenerios in overlayfs and fanotify?...)

and I'm not sure Al could accept __fdget conversion (I just wanted to give a example then...)

Therefore, I tend to keep silence and just promote EROFS... some better ideas?...

Thanks,
Gao Xiang
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
