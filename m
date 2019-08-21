Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB7796EF1
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 03:34:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4416486C8E;
	Wed, 21 Aug 2019 01:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxSCpovCTDP7; Wed, 21 Aug 2019 01:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE52E86C5A;
	Wed, 21 Aug 2019 01:34:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0585B1BF31B
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 01:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA24E86C5A
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 01:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHl46ha8C4Q1 for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 01:34:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98CAB8111A
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 01:34:14 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7E40CECFBE302ADD17A5;
 Wed, 21 Aug 2019 09:34:10 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 21 Aug
 2019 09:34:04 +0800
Subject: Re: [PATCH] erofs: move erofs out of staging
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Qu Wenruo <quwenruo.btrfs@gmx.com>,
 Gao Xiang <hsiangkao@aol.com>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Eric Biggers <ebiggers@kernel.org>,
 Richard Weinberger <richard@nod.at>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jan Kara <jack@suse.cz>, Dave Chinner
 <david@fromorbit.com>, David Sterba <dsterba@suse.cz>, Miao Xie
 <miaoxie@huawei.com>, devel <devel@driverdev.osuosl.org>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Amir Goldstein <amir73il@gmail.com>, linux-erofs
 <linux-erofs@lists.ozlabs.org>, Al Viro <viro@zeniv.linux.org.uk>, "Jaegeuk
 Kim" <jaegeuk@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, "Li
 Guifu" <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>, "Pavel
 Machek" <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 "Andrew Morton" <akpm@linux-foundation.org>, torvalds
 <torvalds@linux-foundation.org>
References: <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
 <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818201405.GA27398@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190819160923.GG15198@magnolia>
 <20190819203051.GA10075@hsiangkao-HP-ZHAN-66-Pro-G1>
 <bdb91cbf-985b-5a2c-6019-560b79739431@gmx.com>
 <ad62636f-ef1b-739f-42cc-28d9d7ed86da@huawei.com>
 <20190820155623.GA10232@mit.edu>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <9d8f88ee-4b81-bdfa-b0d7-9c7d5d54e70a@huawei.com>
Date: Wed, 21 Aug 2019 09:34:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190820155623.GA10232@mit.edu>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/8/20 23:56, Theodore Y. Ts'o wrote:
> The reason why there needs to be at least some file system specific
> code for fuzz testing is because for efficiency's sake, you don't want
> to fuzz every single bit in the file system, but just the ones which
> are most interesting (e.g., the metadata blocks).  For file systems
> which use checksum to protect against accidental corruption, the file
> system fuzzer needs to also fix up the checksums (since you can be
> sure malicious attackers will do this).

Yup, IMO, if we really want such tool, it needs to:
- move all generic fuzz codes (trigger random fuzzing in meta/data area) into
that tool, and
- make filesystem generic fs_meta/file_node lookup/inject/pack function as a
callback, such as
 * .find_fs_sb
 * .inject_fs_sb
 * .pack_fs_sb
 * .find_fs_bitmap
 * .inject_fs_bitmap
 * .find_fs_inode_bitmap
 * .inject_fs_inode_bitmap
 * .find_inode_by_num
 * .inject_inode
 * .pack_inode
 * .find_tree_node_by_level
...
then specific filesystem can fill the callback to tell how the tool can locate a
field in inode or a metadata in tree node and then trigger the designed fuzz.

It will be easier to rewrite whole generic fwk for each filesystem, because
existed filesystem userspace tool should has included above callback's detail
codes...

> On Tue, Aug 20, 2019 at 10:24:11AM +0800, Chao Yu wrote:
>> filesystem fill the tool's callback to seek a node/block and supported fields
>> can be fuzzed in inode.

> 
> What you *can* do is to make the file system specific portion of the
> work as small as possible.  Great work in this area is Professor Kim's
> Janus[1][2] and Hydra[2] work.  (Hydra is about to be published at SOSP 19,
> and was partially funded from a Google Faculty Research Work.)
> 
> [1] https://taesoo.kim/pubs/2019/xu:janus.pdf
> [2] https://github.com/sslab-gatech/janus
> [3] https://github.com/sslab-gatech/hydra

Thanks for the information!

It looks like janus and hydra alreay have generic compress/decompress function
across different filesystems, it's really a good job, I do think it may be the
one once it becomes more generic.

Thanks

> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
