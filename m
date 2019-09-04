Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A86EA7CE7
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 09:39:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED26481D92;
	Wed,  4 Sep 2019 07:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3y0UnCTQj9q; Wed,  4 Sep 2019 07:39:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C97C5817F4;
	Wed,  4 Sep 2019 07:39:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD221BF319
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 07:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B98581D92
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 07:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWH2gSkju29m for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 07:39:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C7D5817F4
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 07:39:08 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id F40EBA30E87F6D87541D;
 Wed,  4 Sep 2019 15:39:04 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 15:39:04 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 4 Sep 2019 15:39:04 +0800
Date: Wed, 4 Sep 2019 15:38:11 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] erofs: using switch-case while checking the inode type.
Message-ID: <20190904073811.GA37718@architecture4>
References: <20190830095615.10995-1-pratikshinde320@gmail.com>
 <20190830115947.GA10981@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190830142233.GA241393@architecture4>
 <20190904021247.GA65103@architecture4>
 <20190904063134.GA24285@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904063134.GA24285@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Pratik Shinde <pratikshinde320@gmail.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 08:31:34AM +0200, Greg KH wrote:
> On Wed, Sep 04, 2019 at 10:12:47AM +0800, Gao Xiang wrote:
> > Hi Greg,
> > 
> > On Fri, Aug 30, 2019 at 10:22:33PM +0800, Gao Xiang wrote:
> > > On Fri, Aug 30, 2019 at 07:59:48PM +0800, Gao Xiang wrote:
> > > > Hi Pratik,
> > > > 
> > > > The subject line could be better as '[PATCH v2] xxxxxx'...
> > > > 
> > > > On Fri, Aug 30, 2019 at 03:26:15PM +0530, Pratik Shinde wrote:
> > > > > while filling the linux inode, using switch-case statement to check
> > > > > the type of inode.
> > > > > switch-case statement looks more clean here.
> > > > > 
> > > > > Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> > > > 
> > > > I have no problem of this patch, and I will do a test and reply
> > > > you "Reviewed-by:" in hours (I'm doing another patchset to resolve
> > > > what Christoph suggested again)...
> > > 
> > > Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> > 
> > ping.. could you kindly merge this patch, the following patchset
> > has dependency on it...
> 
> Will go do that now, sorry for the delay.

Thanks Greg...

Thanks,
Gao Xiang

> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
