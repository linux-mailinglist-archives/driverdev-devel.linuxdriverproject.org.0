Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FC26A303
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 09:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2461887DA6;
	Tue, 16 Jul 2019 07:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6FWqlIhp0f3; Tue, 16 Jul 2019 07:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A8B387D86;
	Tue, 16 Jul 2019 07:35:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 910CF1BF310
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 07:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B7B887D86
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 07:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GsTNYfk45Nar for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 07:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA39B87D7F
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 07:35:33 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A3B36641534F707D438F;
 Tue, 16 Jul 2019 15:35:31 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.209) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 16 Jul
 2019 15:35:25 +0800
Subject: Re: [PATCH] staging: erofs: support bmap
To: Gao Xiang <gaoxiang25@huawei.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
References: <20190716070543.88863-1-yuchao0@huawei.com>
 <ed011d9f-6fdc-a8ee-8a18-c94875bbfa53@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <67b812f6-618d-d390-66f0-7f5eaf2cb6ed@huawei.com>
Date: Tue, 16 Jul 2019 15:35:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <ed011d9f-6fdc-a8ee-8a18-c94875bbfa53@huawei.com>
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

On 2019/7/16 15:19, Gao Xiang wrote:
> Hi Chao,
> 
> On 2019/7/16 15:05, Chao Yu wrote:
>> Add erofs_bmap() to support FIBMAP ioctl on flatmode inode.
>>
>> Signed-off-by: Chao Yu <yuchao0@huawei.com>
>> ---
>>  drivers/staging/erofs/data.c | 29 +++++++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>
>> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
>> index fbce71403d87..03da57f04347 100644
>> --- a/drivers/staging/erofs/data.c
>> +++ b/drivers/staging/erofs/data.c
>> @@ -308,9 +308,38 @@ static int erofs_raw_access_readpages(struct file *filp,
>>  	return iomap_readpages(mapping, pages, nr_pages, &erofs_iomap_ops);
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
>> +	if (is_inode_flat_inline(inode))
>> +		return 0;
> 
> could we support flat_inline as well? some difficulty on this?

I think we can support partial of this on inline inode, e.g.:

[0, 4k] mapped
[4k, 5k] inline

We can find and return the physical block address for first block, but for last
block locating in metadata, we should just return 0 (0 indicate bmap has failed
to get mapped block address).

Thanks,

> (I have no idea return 0 is suitable for us since we have tail-end packing...)
> 
> Thanks,
> Gao Xiang
> 
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
