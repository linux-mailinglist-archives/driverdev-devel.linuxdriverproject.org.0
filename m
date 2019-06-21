Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBA84E19D
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 10:08:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0DF187F5C;
	Fri, 21 Jun 2019 08:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9+bI3axB1tiK; Fri, 21 Jun 2019 08:08:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78F3E87ED1;
	Fri, 21 Jun 2019 08:08:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 656FB1BF5DF
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6204287CD4
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2PqRrVNFF6-z for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 08:08:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4696D87C8C
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 08:08:40 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7C9AAF193B3EFDC9476A;
 Fri, 21 Jun 2019 16:08:36 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 21 Jun
 2019 16:08:29 +0800
Subject: Re: [PATCH v2 2/8] staging: erofs: add compacted compression indexes
 support
To: Chao Yu <yuchao0@huawei.com>
References: <20190620160719.240682-1-gaoxiang25@huawei.com>
 <20190620160719.240682-3-gaoxiang25@huawei.com>
 <4274208b-63bc-6dfd-a2c8-a94d2fa5c8d7@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <d04f83f7-9f01-e736-cc1b-8ee438e47d3c@huawei.com>
Date: Fri, 21 Jun 2019 16:08:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <4274208b-63bc-6dfd-a2c8-a94d2fa5c8d7@huawei.com>
X-Originating-IP: [10.151.23.176]
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Du Wei <weidu.du@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/6/21 15:53, Chao Yu wrote:
> On 2019/6/21 0:07, Gao Xiang wrote:
>> This patch aims at compacted compression indexes:
>>  1) cleanup z_erofs_map_blocks_iter and move into zmap.c;
>>  2) add compacted 4/2B decoding support.
>>
>> On kirin980 platform, sequential read is increased about
>> 6% (725MiB/s -> 770MiB/s) on enwik9 dataset if compacted 2B
>> feature is enabled.
>>
>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> 
> Reviewed-by: Chao Yu <yuchao0@huawei.com>
> 
>> +static int vle_legacy_load_cluster_from_disk(struct z_erofs_maprecorder *m,
>> +					     unsigned long lcn)
>> +{
>> +	struct inode *const inode = m->inode;
>> +	struct erofs_vnode *const vi = EROFS_V(inode);
>> +	const erofs_off_t ibase = iloc(EROFS_I_SB(inode), vi->nid);
>> +	const erofs_off_t pos = Z_EROFS_VLE_EXTENT_ALIGN(ibase +
>> +							 vi->inode_isize +
>> +							 vi->xattr_isize) +
>> +		16 + lcn * sizeof(struct z_erofs_vle_decompressed_index);
> 
> use macro instead of raw number?

OK, I will wrap it up in patch v3 too.

Thanks,
Gao Xiang

> 
> Thanks,
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
