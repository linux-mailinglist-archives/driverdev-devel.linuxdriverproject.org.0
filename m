Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFB16A4CB
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 11:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37D27877FD;
	Tue, 16 Jul 2019 09:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUV3vD68SE5d; Tue, 16 Jul 2019 09:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30554877E7;
	Tue, 16 Jul 2019 09:23:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 767491BF303
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7387A203DC
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BfY2PuWVqPDW for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 09:23:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A0D02034A
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:23:19 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CC74977E09F82BAF43FA;
 Tue, 16 Jul 2019 17:23:17 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 16 Jul
 2019 17:23:11 +0800
Subject: Re: [PATCH v2] staging: erofs: support bmap
To: Gao Xiang <gaoxiang25@huawei.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
References: <20190716084625.102366-1-yuchao0@huawei.com>
 <470cdf8c-b20c-5c38-59e5-977a2359af9d@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <229d481a-1f4c-d39d-6dd3-f9a1f077d8a3@huawei.com>
Date: Tue, 16 Jul 2019 17:23:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <470cdf8c-b20c-5c38-59e5-977a2359af9d@huawei.com>
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
Cc: chao@kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xiang,

On 2019/7/16 17:01, Gao Xiang wrote:
> Hi Chao,
> 
> Cc lkml mailing list?

Oh, no problem, let me update my default cc list.

> 
> On 2019/7/16 16:46, Chao Yu wrote:
>> Add erofs_bmap() to support FIBMAP ioctl on flatmode inode.
>>
>> Signed-off-by: Chao Yu <yuchao0@huawei.com>
>> ---
>> v2:
>> - support mapping normal blocks for inline inode suggested by Xiang
>> - rebase to linux-next
>>  drivers/staging/erofs/data.c | 33 +++++++++++++++++++++++++++++++++
>>  1 file changed, 33 insertions(+)
>>
>> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
>> index cc31c3e5984c..5c7e3b9cff6a 100644
>> --- a/drivers/staging/erofs/data.c
>> +++ b/drivers/staging/erofs/data.c
>> @@ -392,9 +392,42 @@ static int erofs_raw_access_readpages(struct file *filp,
>>  	return 0;
>>  }
>>  
>> +static int erofs_get_block(struct inode *inode, sector_t iblock,
>> +			   struct buffer_head *bh, int create)
>> +{
>> +	struct erofs_map_blocks map = {
>> +		.m_la = iblock << 9,
>> +	};
>> +	int err;
>> +
>> +	err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
>> +	if (err)
>> +		return err;
>> +
>> +	if (map.m_flags & EROFS_MAP_MAPPED)
>> +		bh->b_blocknr = erofs_blknr(map.m_pa);
>> +
>> +	return err;
>> +}
>> +
>> +static sector_t erofs_bmap(struct address_space *mapping, sector_t block)
>> +{
>> +	struct inode *inode = mapping->host;
>> +
>> +	if (is_inode_flat_inline(inode)) {
>> +		unsigned int blks = i_size_read(inode) >> LOG_BLOCK_SIZE;
> 
> maybe we could use erofs_blk_t ?

Okay,

> 
>> +
>> +		if (!blks || block >> LOG_SECTORS_PER_BLOCK >= blks)
> 
> Could the above line be simplified to block >> LOG_SECTORS_PER_BLOCK >= blks?

That's right, original one was trying to consider readability and avoid
calculation of following statement when blks equals to zero.

Anyway, either is okay to me.

> 
> Other parts looks good to me,
> Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> 
> However, I think resend a new patch is better.

Yeah, let me send v3.

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>> +			return 0;
>> +	}
>> +
>> +	return generic_block_bmap(mapping, block, erofs_get_block);
>> +}
>> +
>>  /* for uncompressed (aligned) files and raw access for other files */
>>  const struct address_space_operations erofs_raw_access_aops = {
>>  	.readpage = erofs_raw_access_readpage,
>>  	.readpages = erofs_raw_access_readpages,
>> +	.bmap = erofs_bmap,
>>  };
>>  
>>
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
