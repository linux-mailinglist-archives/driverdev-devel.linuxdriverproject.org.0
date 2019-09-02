Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CECA57AD
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 15:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6BEE87D0B;
	Mon,  2 Sep 2019 13:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARUTQt3Dh6H2; Mon,  2 Sep 2019 13:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9419D87D09;
	Mon,  2 Sep 2019 13:34:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9A451BF408
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C13A987CE1
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5mj3ub5+vtyv for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 13:34:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFA5D87CDE
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 13:33:59 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 325AC2557631AFB90083;
 Mon,  2 Sep 2019 21:33:54 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 21:33:53 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 21:33:53 +0800
Date: Mon, 2 Sep 2019 21:33:02 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 07/21] erofs: use erofs_inode naming
Message-ID: <20190902133302.GA63268@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-8-hsiangkao@aol.com>
 <20190902121021.GG15931@infradead.org>
 <20190902121306.GA2664@architecture4>
 <20190902124737.GB8369@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902124737.GB8369@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme719-chm.china.huawei.com (10.1.199.115) To
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 05:47:37AM -0700, Christoph Hellwig wrote:
> On Mon, Sep 02, 2019 at 08:13:06PM +0800, Gao Xiang wrote:
> > Hi Christoph,
> > 
> > On Mon, Sep 02, 2019 at 05:10:21AM -0700, Christoph Hellwig wrote:
> > > >  {
> > > > -	struct erofs_vnode *vi = ptr;
> > > > -
> > > > -	inode_init_once(&vi->vfs_inode);
> > > > +	inode_init_once(&((struct erofs_inode *)ptr)->vfs_inode);
> > > 
> > > Why doesn't this use EROFS_I?  This looks a little odd.
> > 
> > Thanks for your reply and suggestion...
> > EROFS_I seems the revert direction ---> inode to erofs_inode
> > here we need "erofs_inode" to inode...
> > 
> > Am I missing something?.... Hope not....
> 
> No, you are not.  But the cast still looks odd.  Why not:
> 
> 	struct erofs_inode *ei = ptr;
> 
> 	inode_init_once(&ei->vfs_inode);

That is the old way, I thought you don't like the extra variable...
https://lore.kernel.org/linux-erofs/20190830154551.GA11571@infradead.org/
I am ok with either form, anyway, let me use the old way....

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
