Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40546A587C
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 15:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E951F85DF2;
	Mon,  2 Sep 2019 13:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sg9VPBKRGw92; Mon,  2 Sep 2019 13:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 281D7858F7;
	Mon,  2 Sep 2019 13:56:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80E291BF408
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79BC085CB4
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UXjHFkbQZZdi for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 13:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D5C1843BB
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 13:56:15 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 483E9D60EC475B9922D5;
 Mon,  2 Sep 2019 21:56:12 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 21:56:11 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 21:56:11 +0800
Date: Mon, 2 Sep 2019 21:55:20 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <dsterba@suse.cz>
Subject: Re: [PATCH v6 05/24] erofs: add inode operations
Message-ID: <20190902135519.GD2664@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-6-gaoxiang25@huawei.com>
 <20190829102426.GE20598@infradead.org>
 <20190901093326.GA6267@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190902134329.GU2752@twin.jikos.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902134329.GU2752@twin.jikos.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme707-chm.china.huawei.com (10.1.199.103) To
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
 linux-erofs@lists.ozlabs.org, Amir Goldstein <amir73il@gmail.com>,
 Jan Kara <jack@suse.cz>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Christoph Hellwig <hch@infradead.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi David,

On Mon, Sep 02, 2019 at 03:43:29PM +0200, David Sterba wrote:
> On Sun, Sep 01, 2019 at 05:34:00PM +0800, Gao Xiang wrote:
> > > > +static int read_inode(struct inode *inode, void *data)
> > > > +{
> > > > +	struct erofs_vnode *vi = EROFS_V(inode);
> > > > +	struct erofs_inode_v1 *v1 = data;
> > > > +	const unsigned int advise = le16_to_cpu(v1->i_advise);
> > > > +	erofs_blk_t nblks = 0;
> > > > +
> > > > +	vi->datamode = __inode_data_mapping(advise);
> > > 
> > > What is the deal with these magic underscores here and various
> > > other similar helpers?
> > 
> > Fixed in
> > https://lore.kernel.org/linux-fsdevel/20190901055130.30572-17-hsiangkao@aol.com/
> > 
> > underscores means 'internal' in my thought, it seems somewhat
> > some common practice of Linux kernel, or some recent discussions
> > about it?... I didn't notice these discussions...
> 
> I know about a few valid uses of the underscores:
> 
> * pattern where the __underscored version does not do locking, while the other
>   does
> * similarly for atomic and non-atomic version
> * macro that needs to manipulate the argument name (like glue some
>   prefix, so the macro does not have underscores and is supposed to be
>   used instead of the function with underscores that needs the full name
>   of a variable/constant/..
> * underscore function takes a few more parameters to further tune the
>   behaviour, but most users are fine with the defaults and that is
>   provided as a function without underscores
> * in case you have just one function of the kind, don't use the underscores
> 
> I can lookup examples if you're interested or if the brief description
> is not sufficient. The list covers what I've seen and used, but the list
> may be incomplete.

Thanks, I learn a lot from the above. [thumb]

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
