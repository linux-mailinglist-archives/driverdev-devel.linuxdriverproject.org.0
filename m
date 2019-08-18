Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F46B91873
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 19:46:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4805A856ED;
	Sun, 18 Aug 2019 17:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TOxbBEei5l38; Sun, 18 Aug 2019 17:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 251E685582;
	Sun, 18 Aug 2019 17:46:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A73521BF31A
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 17:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A1BF885582
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 17:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9x6TWebdzNUd for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 17:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3FB084D3B
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 17:46:33 +0000 (UTC)
Received: from callcc.thunk.org ([12.235.16.3]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7IHkMSP023499
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 18 Aug 2019 13:46:23 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id D0B194218EF; Sun, 18 Aug 2019 13:46:21 -0400 (EDT)
Date: Sun, 18 Aug 2019 13:46:21 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818174621.GB12940@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gao Xiang <hsiangkao@aol.com>, Jan Kara <jack@suse.cz>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <1897345637.69314.1566148000847.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1897345637.69314.1566148000847.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>, Christoph Hellwig <hch@infradead.org>,
 torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 07:06:40PM +0200, Richard Weinberger wrote:
> > So holding a file system like EROFS to a higher standard than say,
> > ext4, xfs, or btrfs hardly seems fair.
> 
> Nobody claimed that.

Pointing out that erofs has issues in this area when Gao Xiang is
asking if erofs can be moved out of staging and join the "official
clubhouse" of file systems could certainly be reasonable interpreted
as such.  Reporting such vulnerablities are a good thing, and
hopefully all file system maintainers will welcome them.  Doing them
on a e-mail thread about promoting out of erofs is certainly going to
lead to inferences of a double standard.

Cheers,

						- Ted
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
