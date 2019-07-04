Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D08D5F244
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 07:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8559587E3B;
	Thu,  4 Jul 2019 05:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7YTFFMNPb-R2; Thu,  4 Jul 2019 05:26:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 080FA87E0B;
	Thu,  4 Jul 2019 05:26:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28D8A1BF575
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 05:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2576D203A8
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 05:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NcS4YOyz5MZb for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 05:26:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A5A3F20382
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 05:26:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7426218A3;
 Thu,  4 Jul 2019 05:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562218012;
 bh=I+0cH+uMT7VJ70KPqMIW9T45sVtfmgYmhLBmxgsq+no=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pLn7CV1p02AUDr60ZlfdxpQ5bkJ8gd6ERqKq4pMX+CjKvnIsgmHtPNGcgQlejITNx
 NYrdzjP+yqOoe/er9SU58/O+EPX1S24y3KThzgRsDyRl3FzS0RfRVPF4fe7AVvg1qd
 vD6iQ1lux/9E6IXGm/cgxz7eruZZHPTmQYa6snQE=
Date: Thu, 4 Jul 2019 07:26:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yue Hu <zbestahu@gmail.com>
Subject: Re: [PATCH RESEND v3] staging: erofs: remove unsupported ->datamode
 check in fill_inline_data()
Message-ID: <20190704052649.GA7454@kroah.com>
References: <20190702025601.7976-1-zbestahu@gmail.com>
 <20190703162038.GA31307@kroah.com>
 <20190704095903.0000565e.zbestahu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704095903.0000565e.zbestahu@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Thu, Jul 04, 2019 at 09:59:03AM +0800, Yue Hu wrote:
> On Wed, 3 Jul 2019 18:20:38 +0200
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Tue, Jul 02, 2019 at 10:56:01AM +0800, Yue Hu wrote:
> > > From: Yue Hu <huyue2@yulong.com>
> > > 
> > > Already check if ->datamode is supported in read_inode(), no need to check
> > > again in the next fill_inline_data() only called by fill_inode().
> > > 
> > > Signed-off-by: Yue Hu <huyue2@yulong.com>
> > > Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> > > Reviewed-by: Chao Yu <yuchao0@huawei.com>
> > > ---
> > > no change
> > > 
> > >  drivers/staging/erofs/inode.c | 2 --
> > >  1 file changed, 2 deletions(-)  
> > 
> > This is already in my tree, right?
> 
> Seems not, i have received notes about other 2 patches below mergerd:
> 
> ```note1
> This is a note to let you know that I've just added the patch titled
> 
>     staging: erofs: don't check special inode layout
> 
> to my staging git tree which can be found at
>     git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> in the staging-next branch.
> ```
> 
> ```note2
> This is a note to let you know that I've just added the patch titled
> 
>     staging: erofs: return the error value if fill_inline_data() fails
> 
> to my staging git tree which can be found at
>     git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> in the staging-next branch.
> ```
> 
> No this patch in below link checked:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/drivers/staging/erofs?h=staging-testing

Then if it is not present, it needs to be rebased as it does not apply.

Please do so and resend it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
