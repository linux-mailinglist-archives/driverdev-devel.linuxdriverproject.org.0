Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2278A6CF1
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 17:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F144120426;
	Tue,  3 Sep 2019 15:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dm51Ef8-QpNn; Tue,  3 Sep 2019 15:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83E782049D;
	Tue,  3 Sep 2019 15:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00A4D1BF593
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 15:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB90A8248B
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 15:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id du5bk_Ofz04K for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 15:37:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D3BD8242B
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 15:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOMcH7snttb2Sr7cqyYUxOSzNPnn0zJCorjl1PxxkD8=; b=iPZa9nn0+EclNXulN9PX55CfF
 gjiZ/RcbonRlNHqkBzmGEe6Ioj+rAZKWUTmZvc8doirxhztv7FprjyzD7VGiWIB7qATK55E7i7a1x
 TmDqOuFRVBJbmG60tr0ElwbLZ46pwJskgV7Cz8NNRFQitmpy5Nz/lO1P2FXCuvPwzYgXor8S0FMf6
 LAmnu/Qk8ARcx6Ev1/WBOUwEB1FDGT6iVSDqwPmo763jvjWRJqLnfmylBY0Mx+wmdggFpEJOWd14L
 UHDHQLEhg+ERlFoN1IzFKJI+sahK6t1WEtjnYNVxM2f8AqkTLjGHcU8IooYs/dyfk3rjjLyTwS9xf
 nr5m+CE5w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i5Arg-0000dg-Ql; Tue, 03 Sep 2019 15:37:04 +0000
Date: Tue, 3 Sep 2019 08:37:04 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 00/21] erofs: patchset addressing Christoph's comments
Message-ID: <20190903153704.GA2201@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190902124645.GA8369@infradead.org>
 <20190902142452.GE2664@architecture4>
 <20190902152323.GB14009@infradead.org>
 <20190902155037.GD179615@architecture4>
 <20190903065803.GA11205@infradead.org>
 <20190903081749.GA89379@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903081749.GA89379@architecture4>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 03, 2019 at 04:17:49PM +0800, Gao Xiang wrote:
> I implement a prelimitary version, but I have no idea it is a really
> cleanup for now.

The fact that this has to guess the block device address_space
implementation is indeed pretty ugly.  I'd much prefer to just use
read_cache_page_gfp, and live with the fact that this allocates
bufferheads behind you for now.  I'll try to speed up my attempts to
get rid of the buffer heads on the block device mapping instead.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
