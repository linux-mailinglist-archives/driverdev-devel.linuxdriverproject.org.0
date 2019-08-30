Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 144A7A3608
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 13:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53DE887EF9;
	Fri, 30 Aug 2019 11:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PC2R1tMxpKSE; Fri, 30 Aug 2019 11:51:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4AE687EA7;
	Fri, 30 Aug 2019 11:51:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3230A1BF479
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 11:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2F259203E1
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 11:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqx2ng2IVkOd for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 11:51:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 23C8C20361
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 11:51:23 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6E999AFF2;
 Fri, 30 Aug 2019 11:51:21 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 690C2DA809; Fri, 30 Aug 2019 13:51:42 +0200 (CEST)
Date: Fri, 30 Aug 2019 13:51:42 +0200
From: David Sterba <dsterba@suse.cz>
To: Chao Yu <yuchao0@huawei.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830115142.GM2752@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Chao Yu <yuchao0@huawei.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Gao Xiang <gaoxiang25@huawei.com>, devel@driverdev.osuosl.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
References: <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4>
 <20190829154346.GK23584@kadam>
 <cd38b645-2930-3e02-6c6a-5972ea02b537@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd38b645-2930-3e02-6c6a-5972ea02b537@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-fsdevel@vger.kernel.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 10:06:25AM +0800, Chao Yu wrote:
> On 2019/8/29 23:43, Dan Carpenter wrote:
> >> p.s. There are 2947 (un)likely places in fs/ directory.
> > 
> > I was complaining about you adding new pointless ones, not existing
> > ones.  The likely/unlikely annotations are supposed to be functional and
> > not decorative.  I explained this very clearly.
> > 
> > Probably most of the annotations in fs/ are wrong but they are also
> > harmless except for the slight messiness.  However there are definitely
> > some which are important so removing them all isn't a good idea.
> 
> Hi Dan,
> 
> Could you please pick up one positive example using likely and unlikely
> correctly? so we can follow the example, rather than removing them all blindly.

Remove all of them and re-add with explanation if and how each is going
to make things better. If you can't reason about, prove by benchmarks or
point to inefficient asm code generated, then don't add them again.

The feedback I got from CPU and compiler people over the years is not to
bother using the annotations. CPUs are doing dynamic branch prediction
and compilers are applying tons of optimizations.

GCC docs state about the builtin: "In general, you should prefer to use
actual profile feedback for this (-fprofile-arcs), as programmers are
notoriously bad at predicting how their programs actually perform."
(https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
