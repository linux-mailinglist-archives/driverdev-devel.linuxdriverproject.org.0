Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 233146A47A
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 11:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D4A987657;
	Tue, 16 Jul 2019 09:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5GfWN3MgMCL; Tue, 16 Jul 2019 09:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0D48875DB;
	Tue, 16 Jul 2019 09:01:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6FEB1BF424
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E1F0685F5E
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-4R9d9udAqA for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 09:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B161585F5B
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:01:43 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 98082D3228B5B9EAEB27;
 Tue, 16 Jul 2019 17:01:40 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 16 Jul
 2019 17:01:34 +0800
Subject: Re: [PATCH v2] staging: erofs: support bmap
To: Chao Yu <yuchao0@huawei.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
References: <20190716084625.102366-1-yuchao0@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <470cdf8c-b20c-5c38-59e5-977a2359af9d@huawei.com>
Date: Tue, 16 Jul 2019 17:01:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190716084625.102366-1-yuchao0@huawei.com>
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
Cc: chao@kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

Cc lkml mailing list?

On 2019/7/16 16:46, Chao Yu wrote:
> Add erofs_bmap() to support FIBMAP ioctl on flatmode inode.
> 
> Signed-off-by: Chao Yu <yuchao0@huawei.com>
> ---
> v2:
> - support mapping normal blocks for inline inode suggested by Xiang
> - rebase to linux-next
>  drivers/staging/erofs/data.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index cc31c3e5984c..5c7e3b9cff6a 100644
> --- a/drivers/staging/erofs/data.c
> +++ b/drivers/staging/erofs/data.c
> @@ -392,9 +392,42 @@ static int erofs_raw_access_readpages(struct file *filp,
>  	return 0;
>  }
>  
> +static int erofs_get_block(struct inode *inode, sector_t iblock,
> +			   struct buffer_head *bh, int create)
> +{
> +	struct erofs_map_blocks map = {
> +		.m_la = iblock << 9,
> +	};
> +	int err;
> +
> +	err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
> +	if (err)
> +		return err;
> +
> +	if (map.m_flags & EROFS_MAP_MAPPED)
> +		bh->b_blocknr = erofs_blknr(map.m_pa);
> +
> +	return err;
> +}
> +
> +static sector_t erofs_bmap(struct address_space *mapping, sector_t block)
> +{
> +	struct inode *inode = mapping->host;
> +
> +	if (is_inode_flat_inline(inode)) {
> +		unsigned int blks = i_size_read(inode) >> LOG_BLOCK_SIZE;

maybe we could use erofs_blk_t ?

> +
> +		if (!blks || block >> LOG_SECTORS_PER_BLOCK >= blks)

Could the above line be simplified to block >> LOG_SECTORS_PER_BLOCK >= blks?

Other parts looks good to me,
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

However, I think resend a new patch is better.

Thanks,
Gao Xiang

> +			return 0;
> +	}
> +
> +	return generic_block_bmap(mapping, block, erofs_get_block);
> +}
> +
>  /* for uncompressed (aligned) files and raw access for other files */
>  const struct address_space_operations erofs_raw_access_aops = {
>  	.readpage = erofs_raw_access_readpage,
>  	.readpages = erofs_raw_access_readpages,
> +	.bmap = erofs_bmap,
>  };
>  
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
