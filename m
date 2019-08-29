Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2586A1C87
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 16:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A357C254B3;
	Thu, 29 Aug 2019 14:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmvZZj869DuN; Thu, 29 Aug 2019 14:16:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 732C92049D;
	Thu, 29 Aug 2019 14:16:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 506871BF855
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 14:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C6AF883FC
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 14:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kp65+W9pT0Iu for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 14:16:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 679D8883F7
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 14:16:18 +0000 (UTC)
Received: from DGGEMM405-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 76D783B9BB770475E910;
 Thu, 29 Aug 2019 22:16:10 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM405-HUB.china.huawei.com (10.3.20.213) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 22:16:10 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 29 Aug 2019 22:16:09 +0800
Date: Thu, 29 Aug 2019 22:15:22 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Pratik Shinde <pratikshinde320@gmail.com>
Subject: Re: [PATCH] staging: erofs: using switch-case while checking the
 inode type.
Message-ID: <20190829141522.GA15562@architecture4>
References: <20190829130813.11721-1-pratikshinde320@gmail.com>
 <20190829135607.GA195010@architecture4>
 <CAGu0czRasWHj53uF5zAoDRjbxU2sgN6HtazN_9Y-mkK6NjO-LQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGu0czRasWHj53uF5zAoDRjbxU2sgN6HtazN_9Y-mkK6NjO-LQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 07:35:01PM +0530, Pratik Shinde wrote:
> Hi Gao,
> 
> Sorry I didn't pull the latest tree. I will do the necessary.
> Anyways, don't you think it will be cleaner to have a switch case statement
> rather than if-else statement.

I think so, but that's another personal choise and no urgent
as well (It is just a cleanup to some extent).

I am very happy that you send a patch about this, but we have
to take care of handling "fall through" properly at least,
and I don't want to introduce some extra compile warnings
instead at this time.

EROFS is sensitive for now and I have no idea what the "real"
point is.

Thanks,
Gao Xiang

> 
> --Pratik
> 
> 
> 
> On Thu, 29 Aug, 2019, 7:27 PM Gao Xiang, <gaoxiang25@huawei.com> wrote:
> 
> > Hi Pratik,
> >
> > On Thu, Aug 29, 2019 at 06:38:13PM +0530, Pratik Shinde wrote:
> > > while filling the linux inode, using switch-case statement to check
> > > the type of inode.
> > > switch-case statement looks more clean.
> > >
> > > Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> >
> > No, that is not the case, see __ext4_iget() in fs/ext4/inode.c.
> > and could you write patches based on latest staging tree?
> > erofs is now in "fs/" rather than "drivers/staging".
> > and I will review it then.
> >
> > p.s. if someone argues here or there, there will be endless
> > issues since there is no standard at all.
> >
> > Thanks,
> > Gao Xiang
> >
> > > ---
> > >  drivers/staging/erofs/inode.c | 18 ++++++++++++------
> > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/erofs/inode.c
> > b/drivers/staging/erofs/inode.c
> > > index 4c3d8bf..2d2d545 100644
> > > --- a/drivers/staging/erofs/inode.c
> > > +++ b/drivers/staging/erofs/inode.c
> > > @@ -190,22 +190,28 @@ static int fill_inode(struct inode *inode, int
> > isdir)
> > >       err = read_inode(inode, data + ofs);
> > >       if (!err) {
> > >               /* setup the new inode */
> > > -             if (S_ISREG(inode->i_mode)) {
> > > +             switch (inode->i_mode & S_IFMT) {
> > > +             case S_IFREG:
> > >                       inode->i_op = &erofs_generic_iops;
> > >                       inode->i_fop = &generic_ro_fops;
> > > -             } else if (S_ISDIR(inode->i_mode)) {
> > > +                     break;
> > > +             case S_IFDIR:
> > >                       inode->i_op = &erofs_dir_iops;
> > >                       inode->i_fop = &erofs_dir_fops;
> > > -             } else if (S_ISLNK(inode->i_mode)) {
> > > +                     break;
> > > +             case S_IFLNK:
> > >                       /* by default, page_get_link is used for symlink */
> > >                       inode->i_op = &erofs_symlink_iops;
> > >                       inode_nohighmem(inode);
> > > -             } else if (S_ISCHR(inode->i_mode) ||
> > S_ISBLK(inode->i_mode) ||
> > > -                     S_ISFIFO(inode->i_mode) ||
> > S_ISSOCK(inode->i_mode)) {
> > > +                     break;
> > > +             case S_IFCHR:
> > > +             case S_IFBLK:
> > > +             case S_IFIFO:
> > > +             case S_IFSOCK:
> > >                       inode->i_op = &erofs_generic_iops;
> > >                       init_special_inode(inode, inode->i_mode,
> > inode->i_rdev);
> > >                       goto out_unlock;
> > > -             } else {
> > > +             default:
> > >                       err = -EIO;
> > >                       goto out_unlock;
> > >               }
> > > --
> > > 2.9.3
> > >
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
