Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51671A21B2
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 19:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9EC9088C99;
	Thu, 29 Aug 2019 17:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivZWoixYwFXw; Thu, 29 Aug 2019 17:03:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A87E886E1;
	Thu, 29 Aug 2019 17:03:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2731BF2BB
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 17:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3BF73885DD
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 17:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfNv55H-TAwX for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 17:03:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1A69885CD
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 17:03:20 +0000 (UTC)
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 4EE0AB0F9047B018262E;
 Fri, 30 Aug 2019 01:03:13 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 01:03:12 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 30 Aug 2019 01:03:12 +0800
Date: Fri, 30 Aug 2019 01:02:25 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829170225.GA215901@architecture4>
References: <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4>
 <20190829154346.GK23584@kadam>
 <20190829164442.GA203852@architecture4>
 <74c4784319b40deabfbaea92468f7e3ef44f1c96.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74c4784319b40deabfbaea92468f7e3ef44f1c96.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme715-chm.china.huawei.com (10.1.199.111) To
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Christoph Hellwig <hch@infradead.org>,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sasha Levin <alexander.levin@microsoft.com>, OGAWA
 Hirofumi <hirofumi@mail.parknet.co.jp>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Joe,

On Thu, Aug 29, 2019 at 09:59:21AM -0700, Joe Perches wrote:
> On Fri, 2019-08-30 at 00:44 +0800, Gao Xiang wrote:
> > Hi Dan,
> > 
> > On Thu, Aug 29, 2019 at 11:43:46PM +0800, Dan Carpenter wrote:
> > > > p.s. There are 2947 (un)likely places in fs/ directory.
> > > 
> > > I was complaining about you adding new pointless ones, not existing
> > > ones.  The likely/unlikely annotations are supposed to be functional and
> > > not decorative.  I explained this very clearly.
> > > 
> > > Probably most of the annotations in fs/ are wrong but they are also
> > > harmless except for the slight messiness.  However there are definitely
> > > some which are important so removing them all isn't a good idea.
> > > 
> > > > If you like, I will delete them all.
> > > 
> > > But for erofs, I don't think that any of the likely/unlikely calls have
> > > been thought about so I'm fine with removing all of them in one go.
> > 
> > Anyway, I have removed them all in
> > https://lore.kernel.org/r/20190829163827.203274-1-gaoxiang25@huawei.com/
> > 
> > Does it look good to you?
> 
> Unrelated bikeshed from a trivial look:
> 
> There's a block there that looks like:
> 
> diff --git a/fs/erofs/data.c b/fs/erofs/data.c
> []
> @@ -70,7 +70,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
>  		}
>  
>  		err = bio_add_page(bio, page, PAGE_SIZE, 0);
> -		if (unlikely(err != PAGE_SIZE)) {
> +		if (err != PAGE_SIZE) {
>  			err = -EFAULT;
>  			goto err_out;
>  		}
> 
> The initial assignment to err is odd as it's not
> actually an error value -E<FOO> but a int size
> from a unsigned int len.
> 
> Here the return is either 0 or PAGE_SIZE.
> 
> This would be more legible to me as:
> 
> 		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
> 			err = -EFAULT;
> 			goto err_out;
> 		}

Okay, that is more reasonable, I will update the original patch as you suggested.

Thanks,
Gao Xiang

> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
