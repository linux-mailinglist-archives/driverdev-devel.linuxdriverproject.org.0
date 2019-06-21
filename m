Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 506E84E49C
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 11:51:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE93F86168;
	Fri, 21 Jun 2019 09:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftnIXvpgu98Q; Fri, 21 Jun 2019 09:51:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 736F186151;
	Fri, 21 Jun 2019 09:51:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 013FB1BF420
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 09:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F108986151
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 09:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uApX4yjFxA-A for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 09:51:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 90D0186153
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 09:51:04 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 20A01448ADF50FCA3AE8;
 Fri, 21 Jun 2019 17:51:01 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 21 Jun
 2019 17:50:52 +0800
Subject: Re: [PATCH v2 6/8] staging: erofs: introduce LZ4 decompression inplace
To: Gao Xiang <gaoxiang25@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
References: <20190620160719.240682-1-gaoxiang25@huawei.com>
 <20190620160719.240682-7-gaoxiang25@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <bf1ebb0f-3039-d7d1-95cd-f49cadd6085e@huawei.com>
Date: Fri, 21 Jun 2019 17:50:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190620160719.240682-7-gaoxiang25@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
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
Cc: devel@driverdev.osuosl.org, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <chao@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Du Wei <weidu.du@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/6/21 0:07, Gao Xiang wrote:
> compressed data will be usually loaded into last pages of
> the extent (the last page for 4k) for in-place decompression
> (more specifically, in-place IO), as ilustration below,
> 
>          start of compressed logical extent
>            |                          end of this logical extent
>            |                           |
>      ______v___________________________v________
> ... |  page 6  |  page 7  |  page 8  |  page 9  | ...
>     |__________|__________|__________|__________|
>            .                         ^ .        ^
>            .                         |compressed|
>            .                         |   data   |
>            .                           .        .
>            |<          dstsize        >|<margin>|
>                                        oend     iend
>            op                        ip
> 
> Therefore, it's possible to do decompression inplace (thus no
> memcpy at all) if the margin is sufficient and safe enough [1],
> and it can be implemented only for fixed-size output compression
> compared with fixed-size input compression.
> 
> No memcpy for most of in-place IO (about 99% of enwik9) after
> decompression inplace is implemented and sequential read will
> be improved of course (see the following patches for test results).
> 
> [1] https://github.com/lz4/lz4/commit/b17f578a919b7e6b078cede2d52be29dd48c8e8c
>     https://github.com/lz4/lz4/commit/5997e139f53169fa3a1c1b4418d2452a90b01602
> 
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
