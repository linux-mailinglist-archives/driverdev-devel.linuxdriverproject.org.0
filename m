Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABE896F20
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 03:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8084A231C8;
	Wed, 21 Aug 2019 01:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0U2cCSDcNQE; Wed, 21 Aug 2019 01:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9341B22EC9;
	Wed, 21 Aug 2019 01:57:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DEAB1BF31B
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 01:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59B0B87831
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 01:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjo7BntRyA6I for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 01:57:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0074B87828
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 01:57:39 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 875DA282536BF636B30A;
 Wed, 21 Aug 2019 09:57:36 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 21 Aug
 2019 09:57:30 +0800
Subject: Re: [PATCH] erofs: move erofs out of staging
To: "Darrick J. Wong" <darrick.wong@oracle.com>
References: <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
 <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818201405.GA27398@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190819160923.GG15198@magnolia>
 <20190819203051.GA10075@hsiangkao-HP-ZHAN-66-Pro-G1>
 <bdb91cbf-985b-5a2c-6019-560b79739431@gmx.com>
 <ad62636f-ef1b-739f-42cc-28d9d7ed86da@huawei.com>
 <20190820155623.GA10232@mit.edu>
 <9d8f88ee-4b81-bdfa-b0d7-9c7d5d54e70a@huawei.com>
 <20190821014818.GB1037422@magnolia>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <8ae23b55-eb3f-e6e8-4cfb-5ce2885d8ff8@huawei.com>
Date: Wed, 21 Aug 2019 09:57:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190821014818.GB1037422@magnolia>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
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
Cc: Jan Kara <jack@suse.cz>, Christoph Hellwig <hch@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave
 Chinner <david@fromorbit.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Miao Xie <miaoxie@huawei.com>, devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Richard Weinberger <richard@nod.at>,
 Qu Wenruo <quwenruo.btrfs@gmx.com>, Eric
 Biggers <ebiggers@kernel.org>, torvalds <torvalds@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk
 Kim <jaegeuk@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Pavel
 Machek <pavel@denx.de>, David Sterba <dsterba@suse.cz>, Li
 Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/8/21 9:48, Darrick J. Wong wrote:
> On Wed, Aug 21, 2019 at 09:34:02AM +0800, Chao Yu wrote:
>> On 2019/8/20 23:56, Theodore Y. Ts'o wrote:
>>> The reason why there needs to be at least some file system specific
>>> code for fuzz testing is because for efficiency's sake, you don't want
>>> to fuzz every single bit in the file system, but just the ones which
>>> are most interesting (e.g., the metadata blocks).  For file systems
>>> which use checksum to protect against accidental corruption, the file
>>> system fuzzer needs to also fix up the checksums (since you can be
>>> sure malicious attackers will do this).
>>
>> Yup, IMO, if we really want such tool, it needs to:
>> - move all generic fuzz codes (trigger random fuzzing in meta/data area) into
>> that tool, and
>> - make filesystem generic fs_meta/file_node lookup/inject/pack function as a
>> callback, such as
>>  * .find_fs_sb
>>  * .inject_fs_sb
>>  * .pack_fs_sb
> 
> What about group descriptors?  AG headers?  The AGFLWTFBBQLOL?
> 
>>  * .find_fs_bitmap
>>  * .inject_fs_bitmap
> 
> Probably want an find/inject for log blocks too.
> 
> Oh, wait, XFS doesn't log blocks like jbd2 does. :) :)

Yes, I admit that I should miss a lot of fs meta type here, but that's just a
simple example here, we should not treat it as a full design.... :)

> 
>>  * .find_fs_inode_bitmap
>>  * .inject_fs_inode_bitmap
> 
> XFS has an inode bitmap? ;)

We can leave callback as NULL? ;)

> 
> (This is why there's no generic fuzz tool; every fs is different enough
> that doing so would be sort of a mess.)

Yes, I just wonder if there is any possible we can save some redundant work.

> 
> ((Granted, you could also look at how xfstests uses the xfs_db fuzz
> command so at least it would be systematic...))
Okay, I will check that.

Thanks,

> 
>>  * .find_inode_by_num
>>  * .inject_inode
>>  * .pack_inode
>>  * .find_tree_node_by_level
>> ...
> 
> What about the name/value btrees?  (Ok, I'll stop now.)
> 
> --D
> 
>> then specific filesystem can fill the callback to tell how the tool can locate a
>> field in inode or a metadata in tree node and then trigger the designed fuzz.
>>
>> It will be easier to rewrite whole generic fwk for each filesystem, because
>> existed filesystem userspace tool should has included above callback's detail
>> codes...
>>
>>> On Tue, Aug 20, 2019 at 10:24:11AM +0800, Chao Yu wrote:
>>>> filesystem fill the tool's callback to seek a node/block and supported fields
>>>> can be fuzzed in inode.
>>
>>>
>>> What you *can* do is to make the file system specific portion of the
>>> work as small as possible.  Great work in this area is Professor Kim's
>>> Janus[1][2] and Hydra[2] work.  (Hydra is about to be published at SOSP 19,
>>> and was partially funded from a Google Faculty Research Work.)
>>>
>>> [1] https://taesoo.kim/pubs/2019/xu:janus.pdf
>>> [2] https://github.com/sslab-gatech/janus
>>> [3] https://github.com/sslab-gatech/hydra
>>
>> Thanks for the information!
>>
>> It looks like janus and hydra alreay have generic compress/decompress function
>> across different filesystems, it's really a good job, I do think it may be the
>> one once it becomes more generic.
>>
>> Thanks
>>
>>>
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
