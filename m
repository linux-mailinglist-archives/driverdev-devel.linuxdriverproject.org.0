Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2949A78A3
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8612F883AD;
	Wed,  4 Sep 2019 02:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cy3JG1vgnT6T; Wed,  4 Sep 2019 02:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B66C887AF3;
	Wed,  4 Sep 2019 02:13:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 560971BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5087485644
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GkidRygxg8Ho for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:13:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1270A8034E
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:13:44 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 188581EDF514BFC95EB5;
 Wed,  4 Sep 2019 10:13:41 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 10:13:40 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 4 Sep 2019 10:13:40 +0800
Date: Wed, 4 Sep 2019 10:12:47 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] erofs: using switch-case while checking the inode type.
Message-ID: <20190904021247.GA65103@architecture4>
References: <20190830095615.10995-1-pratikshinde320@gmail.com>
 <20190830115947.GA10981@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190830142233.GA241393@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830142233.GA241393@architecture4>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme711-chm.china.huawei.com (10.1.199.107) To
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
Cc: devel@driverdev.osuosl.org, Pratik Shinde <pratikshinde320@gmail.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Fri, Aug 30, 2019 at 10:22:33PM +0800, Gao Xiang wrote:
> On Fri, Aug 30, 2019 at 07:59:48PM +0800, Gao Xiang wrote:
> > Hi Pratik,
> > 
> > The subject line could be better as '[PATCH v2] xxxxxx'...
> > 
> > On Fri, Aug 30, 2019 at 03:26:15PM +0530, Pratik Shinde wrote:
> > > while filling the linux inode, using switch-case statement to check
> > > the type of inode.
> > > switch-case statement looks more clean here.
> > > 
> > > Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> > 
> > I have no problem of this patch, and I will do a test and reply
> > you "Reviewed-by:" in hours (I'm doing another patchset to resolve
> > what Christoph suggested again)...
> 
> Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

ping.. could you kindly merge this patch, the following patchset
has dependency on it...

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang
> 
> > 
> > Thanks,
> > Gao Xiang
> > 
> > > ---
> > >  fs/erofs/inode.c | 18 ++++++++++++------
> > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
> > > index 80f4fe9..6336cc1 100644
> > > --- a/fs/erofs/inode.c
> > > +++ b/fs/erofs/inode.c
> > > @@ -190,22 +190,28 @@ static int fill_inode(struct inode *inode, int isdir)
> > >  	err = read_inode(inode, data + ofs);
> > >  	if (!err) {
> > >  		/* setup the new inode */
> > > -		if (S_ISREG(inode->i_mode)) {
> > > +		switch (inode->i_mode & S_IFMT) {
> > > +		case S_IFREG:
> > >  			inode->i_op = &erofs_generic_iops;
> > >  			inode->i_fop = &generic_ro_fops;
> > > -		} else if (S_ISDIR(inode->i_mode)) {
> > > +			break;
> > > +		case S_IFDIR:
> > >  			inode->i_op = &erofs_dir_iops;
> > >  			inode->i_fop = &erofs_dir_fops;
> > > -		} else if (S_ISLNK(inode->i_mode)) {
> > > +			break;
> > > +		case S_IFLNK:
> > >  			/* by default, page_get_link is used for symlink */
> > >  			inode->i_op = &erofs_symlink_iops;
> > >  			inode_nohighmem(inode);
> > > -		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
> > > -			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
> > > +			break;
> > > +		case S_IFCHR:
> > > +		case S_IFBLK:
> > > +		case S_IFIFO:
> > > +		case S_IFSOCK:
> > >  			inode->i_op = &erofs_generic_iops;
> > >  			init_special_inode(inode, inode->i_mode, inode->i_rdev);
> > >  			goto out_unlock;
> > > -		} else {
> > > +		default:
> > >  			err = -EFSCORRUPTED;
> > >  			goto out_unlock;
> > >  		}
> > > -- 
> > > 2.9.3
> > > 
> > > _______________________________________________
> > > devel mailing list
> > > devel@linuxdriverproject.org
> > > http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
