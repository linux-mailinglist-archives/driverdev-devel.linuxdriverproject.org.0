Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A1CA58C5
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 16:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B31538650D;
	Mon,  2 Sep 2019 14:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gfsZvgtsddys; Mon,  2 Sep 2019 14:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9220C863E8;
	Mon,  2 Sep 2019 14:06:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A23621BF333
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9AD0B875AD
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:06:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g59YVEjPbq-W for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:06:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7CE2387524
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 14:06:56 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8DC1FABE9;
 Mon,  2 Sep 2019 14:06:53 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 4659BDA796; Mon,  2 Sep 2019 16:07:12 +0200 (CEST)
Date: Mon, 2 Sep 2019 16:07:12 +0200
From: David Sterba <dsterba@suse.cz>
To: Pavel Machek <pavel@denx.de>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190902140712.GV2752@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Pavel Machek <pavel@denx.de>,
 Joe Perches <joe@perches.com>, Gao Xiang <gaoxiang25@huawei.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Amir Goldstein <amir73il@gmail.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Jan Kara <jack@suse.cz>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 LKML <linux-kernel@vger.kernel.org>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Miao Xie <miaoxie@huawei.com>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
 <20190829103252.GA64893@architecture4>
 <67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com>
 <20190830120714.GN2752@twin.jikos.cz> <20190902084303.GC19557@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902084303.GC19557@amd>
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Joe Perches <joe@perches.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dsterba@suse.cz, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 10:43:03AM +0200, Pavel Machek wrote:
> > > > Rather than they didn't run "gdb" or "pahole" and change it by mistake.
> > > 
> > > I think Christoph is not right here.
> > > 
> > > Using external tools for validation is extra work
> > > when necessary for understanding the code.
> > 
> > The advantage of using the external tools that the information about
> > offsets is provably correct ...
> 
> No. gdb tells you what the actual offsets _are_.

Ok, reading your reply twice, I think we have different perspectives. I
don't trust the comments.

The tool I had in mind is pahole that parses dwarf information about the
structures, the same as gdb does. The actual value of the struct members
is the thing that needs to be investigated in memory dumps or disk image
dumps.

> > > The expected offset is somewhat valuable, but
> > > perhaps the form is a bit off given the visual
> > > run-in to the field types.
> > > 
> > > The extra work with this form is manipulating all
> > > the offsets whenever a structure change occurs.
> > 
> > ... while this is error prone.
> 
> While the comment tells you what they _should be_.

That's exactly the source of confusion and bugs. For me an acceptable
way of asserting that a value has certain offset is a build check, eg.
like

BUILD_BUG_ON(strct my_superblock, magic, 16);
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
