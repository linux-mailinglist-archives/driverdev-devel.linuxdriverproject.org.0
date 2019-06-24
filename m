Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847BE50397
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 09:35:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33F7A870DF;
	Mon, 24 Jun 2019 07:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rd8jsvV9l-OY; Mon, 24 Jun 2019 07:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5263486DAD;
	Mon, 24 Jun 2019 07:35:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 194951BF20F
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 07:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 120518142C
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 07:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9euIY-aVmZmi for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 07:35:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 407068140B
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 07:35:01 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 825BA6EB3A94ED6FA231;
 Mon, 24 Jun 2019 15:34:56 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 24 Jun
 2019 15:34:47 +0800
Subject: Re: [PATCH v3 0/8] staging: erofs: decompression inplace approach
To: Gao Xiang <hsiangkao@aol.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
References: <20190624072258.28362-1-hsiangkao@aol.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <b07bc3f7-e85e-896a-c8ae-4800ca6c9816@huawei.com>
Date: Mon, 24 Jun 2019 15:34:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190624072258.28362-1-hsiangkao@aol.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <chao@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Du Wei <weidu.du@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/6/24 15:22, Gao Xiang wrote:
> This is patch v3 of erofs decompression inplace approach, which is sent
> out by my personal email since I'm out of office to attend Open Source
> Summit China 2019 these days. No major change from PATCH v2 since no
> noticeable issue raised from landing to our products till now, mainly
> as a response to Chao's suggestions.
> 
> See the bottom lines which are taken from RFC PATCH v1 and describe
> the principle of these technologies.
> 
> The series is based on the latest staging-next since all dependencies
> have already been merged.
> 
> changelog from v2:
>  - wrap up some offsets as marcos;
>  - add some error handling for erofs_get_pcpubuf();
>  - move some decompression inplace stuffes from PATCH 5 -> 6.

Thanks for the update, those all changes look good to me. :)

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
