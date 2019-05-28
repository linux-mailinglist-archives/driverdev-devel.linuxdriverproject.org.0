Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ABE2BD77
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 05:02:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C3F18695F;
	Tue, 28 May 2019 03:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrkzXh-hXCdx; Tue, 28 May 2019 03:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CBFD8868D8;
	Tue, 28 May 2019 03:02:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 602E01BF28E
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 03:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D89187B48
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 03:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ETk7MsJtvzRC for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 03:02:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 898E88756C
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 03:02:24 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2B808A1D392843CCC95B;
 Tue, 28 May 2019 11:02:21 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.205) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 28 May
 2019 11:02:11 +0800
Subject: Re: [PATCH v2 2/2] staging: erofs: fix i_blocks calculation
To: Gao Xiang <gaoxiang25@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
References: <20190528023147.94117-2-gaoxiang25@huawei.com>
 <20190528023602.178923-1-gaoxiang25@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <fe0ff7bb-b576-f949-d57a-2892d116b22f@huawei.com>
Date: Tue, 28 May 2019 11:02:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190528023602.178923-1-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/5/28 10:36, Gao Xiang wrote:
> For compressed files, i_blocks should not be calculated
> by using i_size. i_u.compressed_blocks is used instead.
> 
> In addition, i_blocks was miscalculated for non-compressed
> files previously, fix it as well.
> 
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> ---
> change log v2:
>  - fix description in commit message
>  - fix to 'inode->i_blocks = nblks << LOG_SECTORS_PER_BLOCK'
> 
> Thanks,
> Gao Xiang
> 
>  drivers/staging/erofs/inode.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
> index 8da144943ed6..6e67e018784e 100644
> --- a/drivers/staging/erofs/inode.c
> +++ b/drivers/staging/erofs/inode.c
> @@ -20,6 +20,7 @@ static int read_inode(struct inode *inode, void *data)
>  	struct erofs_vnode *vi = EROFS_V(inode);
>  	struct erofs_inode_v1 *v1 = data;
>  	const unsigned int advise = le16_to_cpu(v1->i_advise);
> +	erofs_blk_t nblks = 0;
>  
>  	vi->data_mapping_mode = __inode_data_mapping(advise);
>  
> @@ -60,6 +61,10 @@ static int read_inode(struct inode *inode, void *data)
>  			le32_to_cpu(v2->i_ctime_nsec);
>  
>  		inode->i_size = le64_to_cpu(v2->i_size);
> +
> +		/* total blocks for compressed files */
> +		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
> +			nblks = v2->i_u.compressed_blocks;

Xiang,

It needs to use le32_to_cpu(). ;)

>  	} else if (__inode_version(advise) == EROFS_INODE_LAYOUT_V1) {
>  		struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
>  
> @@ -90,6 +95,8 @@ static int read_inode(struct inode *inode, void *data)
>  			sbi->build_time_nsec;
>  
>  		inode->i_size = le32_to_cpu(v1->i_size);
> +		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
> +			nblks = v1->i_u.compressed_blocks;

Ditto.

Thanks,

>  	} else {
>  		errln("unsupported on-disk inode version %u of nid %llu",
>  		      __inode_version(advise), vi->nid);
> @@ -97,8 +104,11 @@ static int read_inode(struct inode *inode, void *data)
>  		return -EIO;
>  	}
>  
> -	/* measure inode.i_blocks as the generic filesystem */
> -	inode->i_blocks = ((inode->i_size - 1) >> 9) + 1;
> +	if (!nblks)
> +		/* measure inode.i_blocks as generic filesystems */
> +		inode->i_blocks = roundup(inode->i_size, EROFS_BLKSIZ) >> 9;
> +	else
> +		inode->i_blocks = nblks << LOG_SECTORS_PER_BLOCK;
>  	return 0;
>  }
>  
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
