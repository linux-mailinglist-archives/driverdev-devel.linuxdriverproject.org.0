Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6076F16E
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 06:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89A5E87880;
	Sun, 21 Jul 2019 04:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRkYi9jRTQa1; Sun, 21 Jul 2019 04:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88CE387702;
	Sun, 21 Jul 2019 04:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F64F1BF239
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 04:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A90986246
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 04:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAIFb9bcFmoh for <devel@linuxdriverproject.org>;
 Sun, 21 Jul 2019 04:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA203814A2
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 04:12:34 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3E3EEFAA479FD8ABFB89;
 Sun, 21 Jul 2019 12:12:31 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sun, 21 Jul
 2019 12:12:23 +0800
Subject: Re: [PATCH v2 03/24] erofs: add super block operations
To: Al Viro <viro@zeniv.linux.org.uk>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
 <20190711145755.33908-4-gaoxiang25@huawei.com>
 <20190720224955.GD17978@ZenIV.linux.org.uk>
 <161cffc4-1d61-5dc6-45df-f1779ef03b0f@aol.com>
 <20190721040547.GF17978@ZenIV.linux.org.uk>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <7774f181-a41c-f30a-3b2a-02d7438d3509@huawei.com>
Date: Sun, 21 Jul 2019 12:12:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190721040547.GF17978@ZenIV.linux.org.uk>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/7/21 12:05, Al Viro wrote:
> On Sun, Jul 21, 2019 at 11:08:42AM +0800, Gao Xiang wrote:
> 
>> It is for debugging use as you said below, mainly for our internal
>> testers whose jobs are
>> to read kmsg logs and catch kernel problems. sb->s_id (device number)
>> maybe not
>> straight-forward for them compared with dev_name...
> 
> Huh? ->s_id is something like "sdb7" - it's bdev_name(), not a device
> number...

You are right. Forgive me, actually we use /dev/block/by-name/system
to mount fs... we have to do some lookup if using sdbX instead.


> 
>> The initial purpose of erofs_mount_private was to passing multi private
>> data from erofs_mount
>> to erofs_read_super, which was written before fs_contest was introduced.
> 
> That has nothing to do with fs_context (well, other than fs_context conversions
> affecting the code very close to that).

OK. That is fine.

> 
>> I agree with you, it seems better to just use s_id in community and
>> delete erofs_mount_private stuffs...
>> Yet I don't look into how to use new fs_context, could I keep using
>> legacy mount interface and fix them all?
> 
> Sure.
> 
>> I guess if I don't misunderstand, that is another suggestion -- in
>> short, leave all destructors to .kill_sb() and
>> cleanup fill_super().
> 
> Just be careful with that iput() there - AFAICS, if fs went live (i.e.
> if ->s_root is non-NULL), you really need it done only from put_super();
> OTOH, for the case of NULL ->s_root ->put_super() won't be called at all,
> so in that case you need it directly in ->kill_sb().

I got it. I will do a quick try now :) But in case of introducing issues,
I guess I need to do some fault injection by hand.....

Thanks,
Gao Xiang

> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
