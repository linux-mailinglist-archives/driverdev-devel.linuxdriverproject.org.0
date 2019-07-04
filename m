Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C03D5F638
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 12:02:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21A1287E65;
	Thu,  4 Jul 2019 10:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60SgW-8djiTA; Thu,  4 Jul 2019 10:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63C8F87E54;
	Thu,  4 Jul 2019 10:02:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E48151BF48B
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 10:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E1179860CF
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 10:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 75gz2qwhv02j for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 10:02:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2463885FD7
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 10:02:22 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bi6so2818236plb.12
 for <devel@driverdev.osuosl.org>; Thu, 04 Jul 2019 03:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AHAOh7FBxYQUboNiiix/lSgcCWAvw4RHDpwodpRKdNs=;
 b=Q2p98X98irjXvs/iO/RhgVHs6Fge85Y5iF373sUnY3qNCrHybAjkpOg2173g30ukn9
 HceW3sPP1hcjiOirEYf1+2mbxehzwjbOdybYng+r5jcyFlXNsHvgeNL89Q3S+MFrxv12
 Rg/JCjywQszl4f7Mb90cJMn6Y5sCGTNGVuW0A1qsFWjYht58BcSwfcWaKbWKdYpJhTK+
 2OL5lza0T8EGCgP+/sjaYM9zJ6O96cbpqVgRV/sFu5KLA9MJEl767XFzWRKGIARGVIGN
 YVM8rxsGOi8DS9TO2jE10VLDKy3iWLNFkeOLvvZKL7EKKDLLU4bDYr0Aklq71Uabo+FM
 V/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AHAOh7FBxYQUboNiiix/lSgcCWAvw4RHDpwodpRKdNs=;
 b=P4Hg+eKTtH8aovIofaG+JXTwDAL6ucAx5P71iEhMK6sBrv4cUC0Do4VRaZ88qLpyzm
 eIZKvO4mcs2/dqPpUFz2q8glB3jC9IGizWpGX3iAjogYD/DHYlVi1Zvk6AIWgiIKGDiE
 +/h6tholQFyeflZonVGZnJqGUrYf/7sgWOQPeTbIdlkTMlgNL72aQNS8/MX65MeEO0mN
 1XdBDBX/exyzNN5v/TLJCFFe/xTU5qF8txJLVXLH4DO0V7HD87Ly3W5hHD6Dp/n34PBj
 NDFpkuUwCjL1X5gpmT5YkWdRCVLtE5616OsarNhzWT0/tM5c4fOC8V47QdrGfsVvMGuH
 HIXw==
X-Gm-Message-State: APjAAAXtE5TpjRKSx5UfEK3IZXmf64qLPfdDOZG6Lya3RgENnKcSCDe/
 C6qKOxUK5TGyM+9Dt24LZxk=
X-Google-Smtp-Source: APXvYqyUpSz5kViPDgxvt9wrV2Cyk1yHzTLql9qU6i3mRjiEnK1Vbw4O//g0ryQX4vvxf+WtJC1zCQ==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr46217419plb.316.1562234541812; 
 Thu, 04 Jul 2019 03:02:21 -0700 (PDT)
Received: from localhost ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id w187sm5189791pfb.4.2019.07.04.03.02.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 03:02:21 -0700 (PDT)
Date: Thu, 4 Jul 2019 18:02:07 +0800
From: Yue Hu <zbestahu@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RESEND v3] staging: erofs: remove unsupported ->datamode
 check in fill_inline_data()
Message-ID: <20190704180207.0000374e.zbestahu@gmail.com>
In-Reply-To: <20190704052649.GA7454@kroah.com>
References: <20190702025601.7976-1-zbestahu@gmail.com>
 <20190703162038.GA31307@kroah.com>
 <20190704095903.0000565e.zbestahu@gmail.com>
 <20190704052649.GA7454@kroah.com>
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
Cc: devel@driverdev.osuosl.org, huyue2@yulong.com, yuchao0@huawei.com,
 linux-erofs@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 4 Jul 2019 07:26:49 +0200
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Jul 04, 2019 at 09:59:03AM +0800, Yue Hu wrote:
> > On Wed, 3 Jul 2019 18:20:38 +0200
> > Greg KH <gregkh@linuxfoundation.org> wrote:
> >   
> > > On Tue, Jul 02, 2019 at 10:56:01AM +0800, Yue Hu wrote:  
> > > > From: Yue Hu <huyue2@yulong.com>
> > > > 
> > > > Already check if ->datamode is supported in read_inode(), no need to check
> > > > again in the next fill_inline_data() only called by fill_inode().
> > > > 
> > > > Signed-off-by: Yue Hu <huyue2@yulong.com>
> > > > Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> > > > Reviewed-by: Chao Yu <yuchao0@huawei.com>
> > > > ---
> > > > no change
> > > > 
> > > >  drivers/staging/erofs/inode.c | 2 --
> > > >  1 file changed, 2 deletions(-)    
> > > 
> > > This is already in my tree, right?  
> > 
> > Seems not, i have received notes about other 2 patches below mergerd:
> > 
> > ```note1
> > This is a note to let you know that I've just added the patch titled
> > 
> >     staging: erofs: don't check special inode layout
> > 
> > to my staging git tree which can be found at
> >     git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> > in the staging-next branch.
> > ```
> > 
> > ```note2
> > This is a note to let you know that I've just added the patch titled
> > 
> >     staging: erofs: return the error value if fill_inline_data() fails
> > 
> > to my staging git tree which can be found at
> >     git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> > in the staging-next branch.
> > ```
> > 
> > No this patch in below link checked:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/drivers/staging/erofs?h=staging-testing  
> 
> Then if it is not present, it needs to be rebased as it does not apply.
> 
> Please do so and resend it.

Hm, no need to resend since it's included in another patch below.

ec8c244 staging: erofs: add compacted ondisk compression indexes.

Thanks.

> 
> thanks,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
