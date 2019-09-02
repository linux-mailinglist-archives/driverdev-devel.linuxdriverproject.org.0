Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894DAA5A82
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 17:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34A6E87DA6;
	Mon,  2 Sep 2019 15:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H1EhNnyIL-OH; Mon,  2 Sep 2019 15:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8833887B60;
	Mon,  2 Sep 2019 15:25:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA1421BF32D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D5E8C85FB4
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6L2oPvoUZCV6 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 15:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9901985F89
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 15:25:47 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 63347F3EFAF56709ABD5;
 Mon,  2 Sep 2019 23:25:44 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 23:25:44 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 23:25:43 +0800
Date: Mon, 2 Sep 2019 23:24:52 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190902152451.GC179615@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190901085452.GA4663@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190902125109.GA9826@infradead.org>
 <20190902144303.GF2664@architecture4>
 <20190902151910.GA14009@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902151910.GA14009@infradead.org>
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, Chao Yu <yuchao0@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 08:19:10AM -0700, Christoph Hellwig wrote:
> On Mon, Sep 02, 2019 at 10:43:04PM +0800, Gao Xiang wrote:
> > Hi Christoph,
> > > > ...
> > > >  24         __le32 features;        /* (aka. feature_compat) */
> > > > ...
> > > >  38         __le32 requirements;    /* (aka. feature_incompat) */
> > > > ...
> > > >  41 };
> > > 
> > > This is only cosmetic, why not stick to feature_compat and
> > > feature_incompat?
> > 
> > Okay, will fix. (however, in my mind, I'm some confused why
> > "features" could be incompatible...)
> 
> The feature is incompatible if it requires changes to the driver.
> An easy to understand historic example is that ext3 originally did not
> have the file types in the directory entry.  Adding them means old
> file system drivers can not read a file system with this new feature,
> so an incompat flag has to be added.

Got it.

> 
> > > > > > +	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
> > > > > > +	memcpy(sbi->volume_name, layout->volume_name,
> > > > > > +	       sizeof(layout->volume_name));
> > > > > 
> > > > > s_uuid should preferably be a uuid_t (assuming it is a real BE uuid,
> > > > > if it is le it should be a guid_t).
> > > > 
> > > > For this case, I have no idea how to deal with...
> > > > I have little knowledge about this uuid stuff, so I just copied
> > > > from f2fs... (Could be no urgent of this field...)
> > > 
> > > Who fills out this field in the on-disk format and how?
> > 
> > mkfs.erofs, but this field leaves 0 for now. Is that reasonable?
> > (using libuuid can generate it easily...)
> 
> If the filed is always zero for now please don't fill it out.  If you
> decide it is worth adding the uuid eventually please add a compat
> feature flag that you have a valid uuid and only fill out the field
> if the file system actualy has a valid uuid.

Okay. Will do that then (as a note here).

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
