Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3940C6F8B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 07:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EAF785ADB;
	Mon, 22 Jul 2019 05:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iq55VKArkEnc; Mon, 22 Jul 2019 05:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FAFE857D8;
	Mon, 22 Jul 2019 05:05:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EDA71BF421
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 05:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BEAB203BE
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 05:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FNpe3YpftF1G for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 05:05:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C72A520028
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 05:05:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22D7021BF6;
 Mon, 22 Jul 2019 05:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563771925;
 bh=WmJFcTVoRpT2HfWty1TJul+l+Y+NTZtVLnXF68wNGu4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ak4mYg1UNsFiHfLnKlHXXnNOcAWp3v+nzRjM9leUCIgt89qe+qhkmLoan3VmrsYiH
 EMz6kdjmwweOgO/RfvTxxUGp5pBcxUjNKIiAEsGilqmDmgxxyuxKQmeQXe+QhH73E8
 NACTwYpXXbzg05gtviLXQIgLM9U6xTUQfuWUn5vE=
Date: Mon, 22 Jul 2019 07:05:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH v3 01/24] erofs: add on-disk layout
Message-ID: <20190722050522.GA11993@kroah.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-2-gaoxiang25@huawei.com>
 <20190722132616.60edd141@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722132616.60edd141@canb.auug.org.au>
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 linux-erofs@lists.ozlabs.org, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 22, 2019 at 01:26:16PM +1000, Stephen Rothwell wrote:
> Hi Gao,
> 
> On Mon, 22 Jul 2019 10:50:20 +0800 Gao Xiang <gaoxiang25@huawei.com> wrote:
> >
> > diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
> > new file mode 100644
> > index 000000000000..e418725abfd6
> > --- /dev/null
> > +++ b/fs/erofs/erofs_fs.h
> > @@ -0,0 +1,316 @@
> > +/* SPDX-License-Identifier: GPL-2.0 OR Apache-2.0 */
> 
> I think the preferred tag is now GPL-2.0-only (assuming that is what is
> intended).

Either is fine, see the LICENSE/preferred/GPL-2.0 file for the list of
valid ones.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
