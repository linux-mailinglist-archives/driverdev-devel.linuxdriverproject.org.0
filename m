Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E05EA7BB5
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 08:31:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35E1822EC9;
	Wed,  4 Sep 2019 06:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qa91a8R2DHZZ; Wed,  4 Sep 2019 06:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1FC622E20;
	Wed,  4 Sep 2019 06:31:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAC971BF3C8
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 06:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B54ED8621D
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 06:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gPoXlWsTjTX for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 06:31:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E01A1861D1
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 06:31:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FC8323401;
 Wed,  4 Sep 2019 06:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567578696;
 bh=PCHRSJN/29rWdZmjjbmIldw+gqhJ+cRKkDckabYFM5A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ytgUb1zfWZG0zWal4Vp+/G0jkGKMJG3sJIWaE7p4zYAQyQ+uiJJwlZ8upch/y+x8g
 mHLM7amDJOcg6KRQAgw6ReqMHj90tAC4AcxOENYW4YETegGsM5+6MpcltidL7tEuB4
 hVT6BZATChqrr9np1OXCVVwHZ9HV7INyLBLf3nUA=
Date: Wed, 4 Sep 2019 08:31:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH] erofs: using switch-case while checking the inode type.
Message-ID: <20190904063134.GA24285@kroah.com>
References: <20190830095615.10995-1-pratikshinde320@gmail.com>
 <20190830115947.GA10981@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190830142233.GA241393@architecture4>
 <20190904021247.GA65103@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904021247.GA65103@architecture4>
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
Cc: devel@driverdev.osuosl.org, Pratik Shinde <pratikshinde320@gmail.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 10:12:47AM +0800, Gao Xiang wrote:
> Hi Greg,
> 
> On Fri, Aug 30, 2019 at 10:22:33PM +0800, Gao Xiang wrote:
> > On Fri, Aug 30, 2019 at 07:59:48PM +0800, Gao Xiang wrote:
> > > Hi Pratik,
> > > 
> > > The subject line could be better as '[PATCH v2] xxxxxx'...
> > > 
> > > On Fri, Aug 30, 2019 at 03:26:15PM +0530, Pratik Shinde wrote:
> > > > while filling the linux inode, using switch-case statement to check
> > > > the type of inode.
> > > > switch-case statement looks more clean here.
> > > > 
> > > > Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> > > 
> > > I have no problem of this patch, and I will do a test and reply
> > > you "Reviewed-by:" in hours (I'm doing another patchset to resolve
> > > what Christoph suggested again)...
> > 
> > Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> 
> ping.. could you kindly merge this patch, the following patchset
> has dependency on it...

Will go do that now, sorry for the delay.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
