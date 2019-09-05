Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ED4AA16F
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 13:30:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27B04236B5;
	Thu,  5 Sep 2019 11:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAJlhxpYMTkU; Thu,  5 Sep 2019 11:30:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B7D723600;
	Thu,  5 Sep 2019 11:30:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D9211BF410
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 11:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A39684EDB
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 11:30:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xDDe_PRQ3t-f for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 11:30:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5BAD84E74
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 11:30:30 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3178868B05; Thu,  5 Sep 2019 13:30:25 +0200 (CEST)
Date: Thu, 5 Sep 2019 13:30:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v2 00/25] erofs: patchset addressing Christoph's comments
Message-ID: <20190905113024.GA9314@lst.de>
References: <20190901055130.30572-1-hsiangkao@aol.com>
 <20190904020912.63925-1-gaoxiang25@huawei.com>
 <52a38cb7-b394-b8a8-7254-aafe47f2caa5@huawei.com>
 <20190905010328.GA15409@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905010328.GA15409@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, linux-fsdevel@vger.kernel.org,
 Miao Xie <miaoxie@huawei.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 05, 2019 at 09:03:54AM +0800, Gao Xiang wrote:
> Could we submit these patches if these patches look good...
> Since I'd like to work based on these patches, it makes a difference
> to the current code though...

Yes, I'm fine with these patches.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
