Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F4CA1392
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 10:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 29DDB25C94;
	Thu, 29 Aug 2019 08:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWLSlNMNFILN; Thu, 29 Aug 2019 08:25:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6460D25AB8;
	Thu, 29 Aug 2019 08:25:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58D6D1BF2C6
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 08:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 533948493F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 08:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kk-gEWoeKnPP for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 08:25:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 18F238862F
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 08:25:01 +0000 (UTC)
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 66BEA57C469BD2F7E54A;
 Thu, 29 Aug 2019 16:24:57 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 16:24:56 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 29 Aug 2019 16:24:56 +0800
Date: Thu, 29 Aug 2019 16:24:09 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829082409.GA83154@architecture4>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829070149.GA155353@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829070149.GA155353@architecture4>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme718-chm.china.huawei.com (10.1.199.114) To
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
Cc: devel@driverdev.osuosl.org, Eric Biggers <ebiggers@kernel.org>,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuchao0@huawei.com,
 linux-kernel@vger.kernel.org, Sasha Levin <alexander.levin@microsoft.com>,
 Zefan Li <lizefan@huawei.com>, linux-fsdevel@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, miaoxie@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Thu, Aug 29, 2019 at 03:01:49PM +0800, Gao Xiang wrote:
> Hi Christoph,
> 
> On Wed, Aug 28, 2019 at 11:23:40PM -0700, Christoph Hellwig wrote:
> > Can we please just review the damn thing and get it into the proper
> > tree?  That whole concept of staging file systems just has been one
> > fricking disaster, including Greg just moving not fully reviewed ones
> > over like erofs just because he feels like it.  I'm getting sick and
> > tired of this scheme.
> 
> I just want to a word on EROFS stuff (I'm not suitable to comment
> on the current exfat implementation). Since EROFS stuff has been
> in staging tree for more than a year, anyone who wants to review
> it can review this filesystem at any time.
> 
> EROFS is not just a homebrew or experimental fs for now, it has been
> widely used for many commerical smartphones, and we will upstream it
> to AOSP for more Android smartphones after it gets merged to upstream.
> I personally cc-ed you for a month, and I didn't get any objection
> from others (including Linus) for about 2 months. That isn't because
> of someone likes it, rather we cannot make no progress compared with
> some exist fs community because this is our love work.
> 
> And it's self-contained driver at least, and it's disabled by default,
> It cannot be stayed in staging tree to do a lot of EROFS feature
> improvements itself forever (since it is cleaned enough).
> It has proven its validity as well.

It seems I misunderstood your idea, sorry about that... EROFS
properly uses vfs interfaces (e.g. we also considered RCU symlink
lookup path at the very beginning of our design as Al said [1],
except for mount interface as Al mentioned [2] (thanks him for
taking some time on it), it was used for our debugging use),
and it didn't cause any extra burden to vfs or other subsystems.

[1] https://lore.kernel.org/r/20190325045744.GK2217@ZenIV.linux.org.uk/
[2] https://lore.kernel.org/r/20190720224955.GD17978@ZenIV.linux.org.uk/

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
