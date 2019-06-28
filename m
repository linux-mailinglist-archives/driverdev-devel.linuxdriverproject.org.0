Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB8B59283
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 06:20:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F372187C9C;
	Fri, 28 Jun 2019 04:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7PMeTsT5h9ii; Fri, 28 Jun 2019 04:20:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4ECA873CE;
	Fri, 28 Jun 2019 04:20:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28F681BF39C
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 04:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 258D7203E8
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 04:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E6BS91dyZIcj for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 04:20:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A9DD020106
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 04:20:04 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id cl9so2466128plb.10
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 21:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QMVsVsENIq5jFVBrHyEsaAKaZZYq8Ei7fMqMQWtvxsQ=;
 b=Za72r1rsgL7lhP8DM+xELMGe9NVDyDZjOKOxNxxq6eF8WPJ8VtTJmdiYTGT50kO17c
 keHsNLt1GVHL+lmFKoqnzHVNSH8HO7aSpHAeYX2c2rqzXZl36P0TTkcvQQA0OKqdNsHH
 VYNS/pktmMUG04o5AOQUBXaoWKPDZAogTLZMzd+HUZump9i3dxq24i2bnNM7HzoX55FK
 i7IGNtitAzGdKdZiLK0ZH/OXqArRHCNMmLoi6LRJPvG1Yo0XFM5JDWKt6lJJjkerHnU0
 izBhA47ziV/l+hyyNnUZdttQhcRSOOkZwK+pFrqpnxkp+14h2RsEltdhx+8i7if6W8V+
 Lqiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QMVsVsENIq5jFVBrHyEsaAKaZZYq8Ei7fMqMQWtvxsQ=;
 b=bj0Rcm7DUaMPe5y7eAPHIsagmasD/DiV08LteqV7Y2p2vlSh6gn4bJHPrtJWtHSTbK
 9UN1R6S1L4fSaj/R7Dr4O6gmUc/x3VISNYYDAEAXQTBdN+qS4W4cWXEfBWeAQKUd5zWn
 7HgV+XF4v9ytTUEELGGgJU+hEcceUM1oCLboQM3Lh7pkPl38PNW12+54OUHluEBr4xPN
 KB4ezZ+oH+qp/qENmo6q1nANqz/A9fg6kY0ikEto98KFyI5pKr6E3WYjRum8llKUvhEZ
 OG/CZ/6m9oL2tuWOWH00N/+eqha+niOPEDwxBCVJ5g5D4obPET+crrmKb8teMszisQyB
 lFPw==
X-Gm-Message-State: APjAAAXdWSyNukx7lcjQaC3hDBp2Z3/tt800+qR26WkF77f7AVCq6Pq0
 zmQx3e0iEo7RQ+dI77S6KkQ=
X-Google-Smtp-Source: APXvYqzAfadCUE/mQqcPjchTjuq2EteuY+sMRrt9vCSdBvZRoQaSoVSh7CehrfYUOzkMJ8HsHtc+Tg==
X-Received: by 2002:a17:902:8546:: with SMTP id
 d6mr8801004plo.207.1561695604386; 
 Thu, 27 Jun 2019 21:20:04 -0700 (PDT)
Received: from localhost ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id f10sm546776pgq.73.2019.06.27.21.20.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 21:20:04 -0700 (PDT)
Date: Fri, 28 Jun 2019 12:19:52 +0800
From: Yue Hu <zbestahu@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH] staging: erofs: don't check special inode layout
Message-ID: <20190628121952.000028fc.zbestahu@gmail.com>
In-Reply-To: <276837dc-b18a-6f20-fc33-d988dff5ae9f@huawei.com>
References: <20190628034234.8832-1-zbestahu@gmail.com>
 <276837dc-b18a-6f20-fc33-d988dff5ae9f@huawei.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
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
 Miao Xie <miaoxie@huawei.com>, yuchao0@huawei.com,
 linux-kernel@vger.kernel.org, huyue2@yulong.com, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 28 Jun 2019 11:50:21 +0800
Gao Xiang <gaoxiang25@huawei.com> wrote:

> Hi Yue,
> 
> On 2019/6/28 11:42, Yue Hu wrote:
> > From: Yue Hu <huyue2@yulong.com>
> > 
> > Currently, we will check if inode layout is compression or inline if
> > the inode is special in fill_inode(). Also set ->i_mapping->a_ops for
> > it. That is pointless since the both modes won't be set for special
> > inode when creating EROFS filesystem image. So, let's avoid it.
> > 
> > Signed-off-by: Yue Hu <huyue2@yulong.com>  
> 
> Have you test this patch with some actual image with legacy mkfs since
> new mkfs framework have not supported special inode...

Hi Xiang,

I'm studying the testing :)

However, already check the code handling for special inode in leagcy mkfs as below:

```c
                break;
        case EROFS_FT_BLKDEV:
        case EROFS_FT_CHRDEV:
        case EROFS_FT_FIFO:
        case EROFS_FT_SOCK:
                mkfs_rank_inode(d);
                break;

        default:
                erofs_err("inode[%s] file_type error =%d",
                          d->i_fullpath,
```

No special inode layout operations, so this change should be fine.

Thx.

> 
> I think that is fine in priciple, however, in case to introduce some potential
> issues, I will test this patch later. I will give a Reviewed-by tag after I tested
> this patch.

Thanks.

> 
> Thanks,
> Gao Xiang
> 
> > ---
> >  drivers/staging/erofs/inode.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
> > index 1433f25..2fe0f6d 100644
> > --- a/drivers/staging/erofs/inode.c
> > +++ b/drivers/staging/erofs/inode.c
> > @@ -205,6 +205,7 @@ static int fill_inode(struct inode *inode, int isdir)
> >  			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
> >  			inode->i_op = &erofs_generic_iops;
> >  			init_special_inode(inode, inode->i_mode, inode->i_rdev);
> > +			goto out_unlock;
> >  		} else {
> >  			err = -EIO;
> >  			goto out_unlock;
> >   

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
