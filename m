Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CB5A391E
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 16:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2272887AF;
	Fri, 30 Aug 2019 14:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x4E5bJMJSUZm; Fri, 30 Aug 2019 14:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43F528884A;
	Fri, 30 Aug 2019 14:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A50661BF282
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 14:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A057B81EFA
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 14:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9q2yToBowTI5 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 14:23:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0ACD081D7E
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 14:23:25 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 0C3D9B9824D70BB06F5C;
 Fri, 30 Aug 2019 22:23:22 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 22:23:21 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 30 Aug 2019 22:23:21 +0800
Date: Fri, 30 Aug 2019 22:22:33 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Pratik Shinde <pratikshinde320@gmail.com>
Subject: Re: [PATCH] erofs: using switch-case while checking the inode type.
Message-ID: <20190830142233.GA241393@architecture4>
References: <20190830095615.10995-1-pratikshinde320@gmail.com>
 <20190830115947.GA10981@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830115947.GA10981@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme717-chm.china.huawei.com (10.1.199.113) To
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, yuchao0@huawei.com,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 07:59:48PM +0800, Gao Xiang wrote:
> Hi Pratik,
> 
> The subject line could be better as '[PATCH v2] xxxxxx'...
> 
> On Fri, Aug 30, 2019 at 03:26:15PM +0530, Pratik Shinde wrote:
> > while filling the linux inode, using switch-case statement to check
> > the type of inode.
> > switch-case statement looks more clean here.
> > 
> > Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> 
> I have no problem of this patch, and I will do a test and reply
> you "Reviewed-by:" in hours (I'm doing another patchset to resolve
> what Christoph suggested again)...

Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang
> 
> > ---
> >  fs/erofs/inode.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> > 
> > diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
> > index 80f4fe9..6336cc1 100644
> > --- a/fs/erofs/inode.c
> > +++ b/fs/erofs/inode.c
> > @@ -190,22 +190,28 @@ static int fill_inode(struct inode *inode, int isdir)
> >  	err = read_inode(inode, data + ofs);
> >  	if (!err) {
> >  		/* setup the new inode */
> > -		if (S_ISREG(inode->i_mode)) {
> > +		switch (inode->i_mode & S_IFMT) {
> > +		case S_IFREG:
> >  			inode->i_op = &erofs_generic_iops;
> >  			inode->i_fop = &generic_ro_fops;
> > -		} else if (S_ISDIR(inode->i_mode)) {
> > +			break;
> > +		case S_IFDIR:
> >  			inode->i_op = &erofs_dir_iops;
> >  			inode->i_fop = &erofs_dir_fops;
> > -		} else if (S_ISLNK(inode->i_mode)) {
> > +			break;
> > +		case S_IFLNK:
> >  			/* by default, page_get_link is used for symlink */
> >  			inode->i_op = &erofs_symlink_iops;
> >  			inode_nohighmem(inode);
> > -		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
> > -			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
> > +			break;
> > +		case S_IFCHR:
> > +		case S_IFBLK:
> > +		case S_IFIFO:
> > +		case S_IFSOCK:
> >  			inode->i_op = &erofs_generic_iops;
> >  			init_special_inode(inode, inode->i_mode, inode->i_rdev);
> >  			goto out_unlock;
> > -		} else {
> > +		default:
> >  			err = -EFSCORRUPTED;
> >  			goto out_unlock;
> >  		}
> > -- 
> > 2.9.3
> > 
> > _______________________________________________
> > devel mailing list
> > devel@linuxdriverproject.org
> > http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
