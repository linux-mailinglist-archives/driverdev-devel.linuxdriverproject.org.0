Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8EAA3C8B
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:49:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 99484265AA;
	Fri, 30 Aug 2019 16:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qzK2cgHhiJPX; Fri, 30 Aug 2019 16:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94D0626424;
	Fri, 30 Aug 2019 16:49:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 923541BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E16926424
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zw-A7AaDxSdD for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:49:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A8AC263DC
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:49:23 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 6662DE36B8648C21C1E2;
 Sat, 31 Aug 2019 00:49:16 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 00:49:15 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 31 Aug 2019 00:49:15 +0800
Date: Sat, 31 Aug 2019 00:48:27 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3 7/7] erofs: redundant assignment in
 __erofs_get_meta_page()
Message-ID: <20190830164827.GA107220@architecture4>
References: <20190830032006.GA20217@architecture4>
 <20190830033643.51019-1-gaoxiang25@huawei.com>
 <20190830033643.51019-7-gaoxiang25@huawei.com>
 <20190830162812.GA10694@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830162812.GA10694@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme705-chm.china.huawei.com (10.1.199.101) To
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Joe Perches <joe@perches.com>, linux-erofs@lists.ozlabs.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Fri, Aug 30, 2019 at 09:28:12AM -0700, Christoph Hellwig wrote:
> > -		err = bio_add_page(bio, page, PAGE_SIZE, 0);
> > -		if (err != PAGE_SIZE) {
> > +		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
> >  			err = -EFAULT;
> >  			goto err_out;
> >  		}
> 
> This patch looks like an improvement.  But looking at that whole
> area just makes me cringe.

OK, I agree with you, I will improve it or just kill them all with
new iomap approach after it supports tail-end packing inline.

> 
> Why is there __erofs_get_meta_page with the two weird booleans instead
> of a single erofs_get_meta_page that gets and gfp_t for additional
> flags and an unsigned int for additional bio op flags.

I agree with you. Thanks for your suggestion.

> 
> Why do need ioprio support to start with?  Seeing that in a new
> fs look kinda odd.  Do you have benchmarks that show the difference?

I don't have some benchmark for all of these, can I just set
REQ_PRIO for all metadata? is that reasonable?
Could you kindly give some suggestion on this?

> 
> That function then calls erofs_grab_bio, which tries to handle a
> bio_alloc failure, except that the function will not actually fail
> due the mempool backing it.  It also seems like and awfully
> huge function to inline.

OK, I will simplify it. Thanks for your suggestion.

> 
> Why is there __submit_bio which really just obsfucates what is
> going on?  Also why is __submit_bio using bio_set_op_attrs instead
> of opencode it as the comment right next to it asks you to?

Originally, mainly due to backport consideration since some
of our smartphones use 3.x kernel as well...

> 
> Also I really don't understand why you can't just use read_cache_page
> or even read_cache_page_gfp instead of __erofs_get_meta_page.
> That function is a whole lot of duplication of functionality shared
> by a lot of other file systems.

OK, I have to admit, that code was originally just copied from f2fs
with some modification (maybe it's not a good example for us).

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
