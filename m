Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5D1A3DE5
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 20:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC2E1265BC;
	Fri, 30 Aug 2019 18:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B26tRSnIQZ1f; Fri, 30 Aug 2019 18:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4EF6E265BB;
	Fri, 30 Aug 2019 18:47:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 283791BF3F6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2078789383
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7hHDaV5gKfp2 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 18:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E88268830D
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 18:46:59 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 6A8539DBA69EB7AA3A3A;
 Sat, 31 Aug 2019 02:46:56 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 02:46:55 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 31 Aug 2019 02:46:54 +0800
Date: Sat, 31 Aug 2019 02:46:06 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 05/24] erofs: add inode operations
Message-ID: <20190830184606.GA175612@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-6-gaoxiang25@huawei.com>
 <20190829102426.GE20598@infradead.org>
 <20190829115922.GG64893@architecture4>
 <20190830164205.GD29603@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830164205.GD29603@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme708-chm.china.huawei.com (10.1.199.104) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
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
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Pavel Machek <pavel@denx.de>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Fri, Aug 30, 2019 at 09:42:05AM -0700, Christoph Hellwig wrote:
> On Thu, Aug 29, 2019 at 07:59:22PM +0800, Gao Xiang wrote:
> > On Thu, Aug 29, 2019 at 03:24:26AM -0700, Christoph Hellwig wrote:
> > 
> > []
> > 
> > > 
> > > > +
> > > > +		/* fill last page if inline data is available */
> > > > +		err = fill_inline_data(inode, data, ofs);
> > > 
> > > Well, I think you should move the is_inode_flat_inline and
> > > (S_ISLNK(inode->i_mode) && inode->i_size < PAGE_SIZE) checks from that
> > > helper here, as otherwise you make everyone wonder why you'd always
> > > fill out the inline data.
> > 
> > Currently, fill_inline_data() only fills for fast symlink,
> > later we can fill any tail-end block (such as dir block)
> > for our requirements.
> 
> So change it when that later changes actually come in.  And even then
> having the checks outside the function is a lot more obvious.

Okay.

> 
> > And I think that is minor.
> 
> The problem is that each of these issues might appear minor on their
> own.  But combined a lot of the coding style choices lead to code that
> is more suitable an obsfucated code contest than the Linux kernel as
> trying to understand even just a few places requires jumping through
> tons of helpers with misleading names and spread over various files.
> 
> > The consideration is simply because iget_locked performs better
> > than iget5_locked.
> 
> In what benchmark do the differences show up?

In a word, no benchmark here, just because
"unsigned long on 32-bit platforms is 4 bytes."
but erofs nid is a 64-bit number.

iget_locked will do find_inode_fast (no callback at all)
rather than iget5_locked --> find_inode (test callback) ->
            inode_insert5(set callback) for each new inode.

For most 64-bit platforms, iget_locked is enough,
32-bit platforms become rare...

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
