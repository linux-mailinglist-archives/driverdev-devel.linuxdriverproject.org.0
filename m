Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AA2A5847
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 15:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AD9221519;
	Mon,  2 Sep 2019 13:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1jea0-kaRhxG; Mon,  2 Sep 2019 13:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B10421511;
	Mon,  2 Sep 2019 13:43:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 398961BF408
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E82285AD6
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNUphywE+3SY for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 13:43:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E513481724
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 13:43:11 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 89671ADFB;
 Mon,  2 Sep 2019 13:43:09 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id CA0C1DA796; Mon,  2 Sep 2019 15:43:29 +0200 (CEST)
Date: Mon, 2 Sep 2019 15:43:29 +0200
From: David Sterba <dsterba@suse.cz>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v6 05/24] erofs: add inode operations
Message-ID: <20190902134329.GU2752@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Gao Xiang <hsiangkao@aol.com>,
 Christoph Hellwig <hch@infradead.org>,
 Gao Xiang <gaoxiang25@huawei.com>, Jan Kara <jack@suse.cz>,
 Dave Chinner <david@fromorbit.com>,
 LKML <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Pavel Machek <pavel@denx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-6-gaoxiang25@huawei.com>
 <20190829102426.GE20598@infradead.org>
 <20190901093326.GA6267@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901093326.GA6267@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
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
Reply-To: dsterba@suse.cz
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Jan Kara <jack@suse.cz>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 LKML <linux-kernel@vger.kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Christoph Hellwig <hch@infradead.org>, Pavel Machek <pavel@denx.de>,
 David Sterba <dsterba@suse.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 01, 2019 at 05:34:00PM +0800, Gao Xiang wrote:
> > > +static int read_inode(struct inode *inode, void *data)
> > > +{
> > > +	struct erofs_vnode *vi = EROFS_V(inode);
> > > +	struct erofs_inode_v1 *v1 = data;
> > > +	const unsigned int advise = le16_to_cpu(v1->i_advise);
> > > +	erofs_blk_t nblks = 0;
> > > +
> > > +	vi->datamode = __inode_data_mapping(advise);
> > 
> > What is the deal with these magic underscores here and various
> > other similar helpers?
> 
> Fixed in
> https://lore.kernel.org/linux-fsdevel/20190901055130.30572-17-hsiangkao@aol.com/
> 
> underscores means 'internal' in my thought, it seems somewhat
> some common practice of Linux kernel, or some recent discussions
> about it?... I didn't notice these discussions...

I know about a few valid uses of the underscores:

* pattern where the __underscored version does not do locking, while the other
  does
* similarly for atomic and non-atomic version
* macro that needs to manipulate the argument name (like glue some
  prefix, so the macro does not have underscores and is supposed to be
  used instead of the function with underscores that needs the full name
  of a variable/constant/..
* underscore function takes a few more parameters to further tune the
  behaviour, but most users are fine with the defaults and that is
  provided as a function without underscores
* in case you have just one function of the kind, don't use the underscores

I can lookup examples if you're interested or if the brief description
is not sufficient. The list covers what I've seen and used, but the list
may be incomplete.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
