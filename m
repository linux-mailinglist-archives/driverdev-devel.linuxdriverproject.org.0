Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8666A313
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 09:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C03A82152E;
	Tue, 16 Jul 2019 07:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rb4rtDCS5nXM; Tue, 16 Jul 2019 07:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D04B2204CC;
	Tue, 16 Jul 2019 07:38:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED0E41BF310
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 07:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA7B4204BD
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 07:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ttj6AmXTeLr for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 07:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id DD10D204BA
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 07:38:42 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 29AA45966C685B44ACB4;
 Tue, 16 Jul 2019 15:38:40 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 16 Jul
 2019 15:38:34 +0800
Subject: Re: [PATCH] staging: erofs: support bmap
To: Chao Yu <yuchao0@huawei.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
References: <20190716070543.88863-1-yuchao0@huawei.com>
 <ed011d9f-6fdc-a8ee-8a18-c94875bbfa53@huawei.com>
 <67b812f6-618d-d390-66f0-7f5eaf2cb6ed@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <b744f9aa-782a-1f29-22da-8bce6ed566d5@huawei.com>
Date: Tue, 16 Jul 2019 15:37:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <67b812f6-618d-d390-66f0-7f5eaf2cb6ed@huawei.com>
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



On 2019/7/16 15:35, Chao Yu wrote:
> Hi Xiang,
> 
> On 2019/7/16 15:19, Gao Xiang wrote:
>> Hi Chao,
>>
>> On 2019/7/16 15:05, Chao Yu wrote:
>>> Add erofs_bmap() to support FIBMAP ioctl on flatmode inode.
>>>
>>> Signed-off-by: Chao Yu <yuchao0@huawei.com>
>>> ---
>>>  drivers/staging/erofs/data.c | 29 +++++++++++++++++++++++++++++
>>>  1 file changed, 29 insertions(+)
>>>
>>> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
>>> index fbce71403d87..03da57f04347 100644
>>> --- a/drivers/staging/erofs/data.c
>>> +++ b/drivers/staging/erofs/data.c
>>> @@ -308,9 +308,38 @@ static int erofs_raw_access_readpages(struct file *filp,
>>>  	return iomap_readpages(mapping, pages, nr_pages, &erofs_iomap_ops);
>>>  }
>>>  
>>> +static int erofs_get_block(struct inode *inode, sector_t iblock,
>>> +			   struct buffer_head *bh, int create)
>>> +{
>>> +	struct erofs_map_blocks map = {
>>> +		.m_la = iblock << 9,
>>> +	};
>>> +	int err;
>>> +
>>> +	err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	if (map.m_flags & EROFS_MAP_MAPPED)
>>> +		bh->b_blocknr = erofs_blknr(map.m_pa);
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +static sector_t erofs_bmap(struct address_space *mapping, sector_t block)
>>> +{
>>> +	struct inode *inode = mapping->host;
>>> +
>>> +	if (is_inode_flat_inline(inode))
>>> +		return 0;
>>
>> could we support flat_inline as well? some difficulty on this?
> 
> I think we can support partial of this on inline inode, e.g.:
> 
> [0, 4k] mapped
> [4k, 5k] inline
> 
> We can find and return the physical block address for first block, but for last
> block locating in metadata, we should just return 0 (0 indicate bmap has failed
> to get mapped block address).

I think that is fine (in the long term, FIEMAP is preferred of course.)

Thanks,
Gao Xiang
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
