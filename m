Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBFF4E163
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 09:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15707863F1;
	Fri, 21 Jun 2019 07:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyV45vmZcSzT; Fri, 21 Jun 2019 07:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00E1A86410;
	Fri, 21 Jun 2019 07:53:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C3361BF41A
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 07:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 290CB85E8D
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 07:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kw0O5wQW6vXv for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 07:53:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C952085D3A
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 07:53:20 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9EFF5BE07A469CE25F30;
 Fri, 21 Jun 2019 15:53:17 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 21 Jun
 2019 15:53:08 +0800
Subject: Re: [PATCH v2 2/8] staging: erofs: add compacted compression indexes
 support
To: Gao Xiang <gaoxiang25@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
References: <20190620160719.240682-1-gaoxiang25@huawei.com>
 <20190620160719.240682-3-gaoxiang25@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <4274208b-63bc-6dfd-a2c8-a94d2fa5c8d7@huawei.com>
Date: Fri, 21 Jun 2019 15:53:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190620160719.240682-3-gaoxiang25@huawei.com>
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
> This patch aims at compacted compression indexes:
>  1) cleanup z_erofs_map_blocks_iter and move into zmap.c;
>  2) add compacted 4/2B decoding support.
> 
> On kirin980 platform, sequential read is increased about
> 6% (725MiB/s -> 770MiB/s) on enwik9 dataset if compacted 2B
> feature is enabled.
> 
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

> +static int vle_legacy_load_cluster_from_disk(struct z_erofs_maprecorder *m,
> +					     unsigned long lcn)
> +{
> +	struct inode *const inode = m->inode;
> +	struct erofs_vnode *const vi = EROFS_V(inode);
> +	const erofs_off_t ibase = iloc(EROFS_I_SB(inode), vi->nid);
> +	const erofs_off_t pos = Z_EROFS_VLE_EXTENT_ALIGN(ibase +
> +							 vi->inode_isize +
> +							 vi->xattr_isize) +
> +		16 + lcn * sizeof(struct z_erofs_vle_decompressed_index);

use macro instead of raw number?

Thanks,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
