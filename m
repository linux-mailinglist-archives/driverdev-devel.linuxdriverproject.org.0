Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E058A5A3D
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 17:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D77486DF0;
	Mon,  2 Sep 2019 15:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCKc6D2Wm7Zx; Mon,  2 Sep 2019 15:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85A8186111;
	Mon,  2 Sep 2019 15:11:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3689E1BF32D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E85F8347D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IdxgI2ruhpgm for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 15:11:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F17581C6B
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 15:11:25 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 93A29523D8D4C3635C29;
 Mon,  2 Sep 2019 23:11:21 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 23:11:21 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 23:11:20 +0800
Date: Mon, 2 Sep 2019 23:10:29 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v8 11/24] erofs: introduce xattr & posixacl support
Message-ID: <20190902151028.GA179615@architecture4>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815044155.88483-12-gaoxiang25@huawei.com>
 <20190902125711.GA23462@infradead.org>
 <20190902130644.GT2752@suse.cz>
 <813e1b65-e6ba-631c-6506-f356738c477f@kernel.org>
 <20190902142037.GW2752@twin.jikos.cz>
 <20190902150640.GA23089@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902150640.GA23089@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme710-chm.china.huawei.com (10.1.199.106) To
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>, Dave
 Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>,
 Linus Torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Chao Yu <chao@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, dsterba@suse.cz,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 08:06:40AM -0700, Christoph Hellwig wrote:
> On Mon, Sep 02, 2019 at 04:20:37PM +0200, David Sterba wrote:
> > Oh right, I think the reasons are historical and that we can remove the
> > options nowadays. From the compatibility POV this should be safe, with
> > ACLs compiled out, no tool would use them, and no harm done when the
> > code is present but not used.
> > 
> > There were some efforts by embedded guys to make parts of kernel more
> > configurable to allow removing subsystems to reduce the final image
> > size. In this case I don't think it would make any noticeable
> > difference, eg. the size of fs/btrfs/acl.o on release config is 1.6KiB,
> > while the whole module is over 1.3MiB.
> 
> Given that the erofs folks have an actual use case for it I think
> it is fine to keep the options, I just wanted to ensure this wasn't
> copy and pasted for no good reason.  Note that for XFS we don't have
> an option for xattrs, as those are integral to a lot of file system
> features.  WE have an ACL option mostly for historic reasons.

I fully understand your starting point...

Thanks,
Gao Xiang



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
