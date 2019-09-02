Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC55A567E
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:44:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98D8987DB2;
	Mon,  2 Sep 2019 12:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7Sv9oEf9Tmw; Mon,  2 Sep 2019 12:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D36287D8E;
	Mon,  2 Sep 2019 12:44:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18CBF1BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14D2587D8E
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIn0+bZNkdCc for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:44:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 92D79864EF
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:44:17 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id C88019D5F1F8E04FB1EB;
 Mon,  2 Sep 2019 20:44:10 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 20:44:10 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 20:44:10 +0800
Date: Mon, 2 Sep 2019 20:43:19 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 20/21] erofs: kill use_vmap module parameter
Message-ID: <20190902124318.GB17916@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-21-hsiangkao@aol.com>
 <20190902123124.GR15931@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902123124.GR15931@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 05:31:24AM -0700, Christoph Hellwig wrote:
> > @@ -224,9 +220,6 @@ static void *erofs_vmap(struct page **pages, unsigned int count)
> >  {
> >  	int i = 0;
> >  
> > -	if (use_vmap)
> > -		return vmap(pages, count, VM_MAP, PAGE_KERNEL);
> > -
> >  	while (1) {
> >  		void *addr = vm_map_ram(pages, count, -1, PAGE_KERNEL);
> 
> I think you can just open code this in the caller.

Yes, the only one user... will fix...

> 
> >  static void erofs_vunmap(const void *mem, unsigned int count)
> >  {
> > -	if (!use_vmap)
> > -		vm_unmap_ram(mem, count);
> > -	else
> > -		vunmap(mem);
> > +	vm_unmap_ram(mem, count);
> >  }
> 
> And this wrapper can go away entirely.

Got it. will fix.

> 
> And don't forget to report your performance observations to the arm64
> maintainers!

In my observation, vm_map_ram always performs better...
If there are something strange later, I will report to them
immediately... :)

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
