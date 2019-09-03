Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D533AA6179
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 08:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C185875BF;
	Tue,  3 Sep 2019 06:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BP3zaKx1fxFh; Tue,  3 Sep 2019 06:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29D8C875A0;
	Tue,  3 Sep 2019 06:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E66BD1BF25F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 06:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E07AD86371
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 06:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QG-hntnXPgFE for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 06:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F401385F57
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 06:31:12 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7037E8B6A2F31DF55807;
 Tue,  3 Sep 2019 14:31:07 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 3 Sep 2019
 14:30:56 +0800
Subject: Re: [PATCH v8 11/24] erofs: introduce xattr & posixacl support
To: <dsterba@suse.cz>, Chao Yu <chao@kernel.org>, Christoph Hellwig
 <hch@infradead.org>, Gao Xiang <gaoxiang25@huawei.com>,
 <linux-fsdevel@vger.kernel.org>, <devel@driverdev.osuosl.org>, Alexander Viro
 <viro@zeniv.linux.org.uk>, LKML <linux-kernel@vger.kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Andrew Morton
 <akpm@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>, Amir Goldstein
 <amir73il@gmail.com>, "Darrick J . Wong" <darrick.wong@oracle.com>, "Dave
 Chinner" <david@fromorbit.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Jan Kara
 <jack@suse.cz>, Richard Weinberger <richard@nod.at>, Linus Torvalds
 <torvalds@linux-foundation.org>, <linux-erofs@lists.ozlabs.org>, Miao Xie
 <miaoxie@huawei.com>, Li Guifu <bluce.liguifu@huawei.com>, Fang Wei
 <fangwei1@huawei.com>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815044155.88483-12-gaoxiang25@huawei.com>
 <20190902125711.GA23462@infradead.org> <20190902130644.GT2752@suse.cz>
 <813e1b65-e6ba-631c-6506-f356738c477f@kernel.org>
 <20190902142037.GW2752@twin.jikos.cz>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <12d37c63-dd0e-04fb-91f8-f4b930e867e5@huawei.com>
Date: Tue, 3 Sep 2019 14:30:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190902142037.GW2752@twin.jikos.cz>
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

On 2019/9/2 22:20, David Sterba wrote:
> Oh right, I think the reasons are historical and that we can remove the
> options nowadays. From the compatibility POV this should be safe, with
> ACLs compiled out, no tool would use them, and no harm done when the
> code is present but not used.
> 
> There were some efforts by embedded guys to make parts of kernel more
> configurable to allow removing subsystems to reduce the final image
> size. In this case I don't think it would make any noticeable
> difference, eg. the size of fs/btrfs/acl.o on release config is 1.6KiB,
> while the whole module is over 1.3MiB.

Actually, btrfs's LOC is about 20 times larger than erofs's, acl part's LOC
could be very small one in btrfs.

EROFS can be slimmed about 10% size if we disable XATTR/ACL config, which is
worth to keep that, at least for now.

Thanks,


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
