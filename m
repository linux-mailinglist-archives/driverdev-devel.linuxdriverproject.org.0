Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C369AA3CAA
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76D8E87F5F;
	Fri, 30 Aug 2019 16:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6m59C8KD4KGj; Fri, 30 Aug 2019 16:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C88A987F61;
	Fri, 30 Aug 2019 16:53:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 957041BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 928E726424
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8A+HoaAamW+0 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:53:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by silver.osuosl.org (Postfix) with ESMTPS id D673E26418
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:53:09 +0000 (UTC)
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 4409A85A463821991785;
 Sat, 31 Aug 2019 00:53:07 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 00:53:06 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 31 Aug 2019 00:53:05 +0800
Date: Sat, 31 Aug 2019 00:52:17 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v8 20/24] erofs: introduce generic decompression backend
Message-ID: <20190830165217.GB107220@architecture4>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815044155.88483-21-gaoxiang25@huawei.com>
 <20190830163534.GA29603@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830163534.GA29603@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme720-chm.china.huawei.com (10.1.199.116) To
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander
 Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Fri, Aug 30, 2019 at 09:35:34AM -0700, Christoph Hellwig wrote:
> On Thu, Aug 15, 2019 at 12:41:51PM +0800, Gao Xiang wrote:
> > +static bool use_vmap;
> > +module_param(use_vmap, bool, 0444);
> > +MODULE_PARM_DESC(use_vmap, "Use vmap() instead of vm_map_ram() (default 0)");
> 
> And how would anyone know which to pick?

It has significant FIO benchmark difference on sequential read least on arm64...
I have no idea whether all platform vm_map_ram() behaves better than vmap(),
so I leave an option for users here...

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
