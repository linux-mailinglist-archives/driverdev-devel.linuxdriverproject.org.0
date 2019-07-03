Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 878955DDE6
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 08:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF7A585F4B;
	Wed,  3 Jul 2019 06:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrSFQ2ZbqPh5; Wed,  3 Jul 2019 06:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 391A285D55;
	Wed,  3 Jul 2019 06:07:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8E21BF2F4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 06:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C552879FD
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 06:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KBaLiyoddPuS for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 06:06:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7160687B94
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 06:06:29 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3C06FD4D7CBA388655BE;
 Wed,  3 Jul 2019 14:06:25 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 3 Jul 2019
 14:06:14 +0800
Subject: Re: [PATCH] staging: erofs: fix LZ4 limited bounced page mis-reuse
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Gao Xiang <hsiangkao@aol.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
References: <20190630185846.16624-1-hsiangkao@aol.com>
 <dbd9e23d-3e76-8281-81f3-48680b4d0b9d@huawei.com>
 <e57f757f-2a61-3c5d-bf06-264cd1d00fef@huawei.com>
Message-ID: <570e12d3-985e-3d5a-d7d4-cf0a072442fe@huawei.com>
Date: Wed, 3 Jul 2019 14:06:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <e57f757f-2a61-3c5d-bf06-264cd1d00fef@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Du Wei <weidu.du@huawei.com>,
 Miao Xie <miaoxie@huawei.com>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

On 2019/7/3 10:09, Gao Xiang wrote:
> 
> 
> On 2019/7/3 9:50, Chao Yu wrote:
>> On 2019/7/1 2:58, Gao Xiang wrote:
>>> From: Gao Xiang <gaoxiang25@huawei.com>
>>>
>>> Like all lz77-based algrithms, lz4 has a dynamically populated
>>> ("sliding window") dictionary and the maximum lookback distance
>>> is 65535. Therefore the number of bounced pages could be limited
>>> by erofs based on this property.
>>>
>>> However, just now we observed some lz4 sequences in the extreme
>>> case cannot be decompressed correctly after this feature is enabled,
>>> the root causes after analysis are clear as follows:
>>> 1) max bounced pages should be 17 rather than 16 pages;
>>> 2) considering the following case, the broken implementation
>>>    could reuse unsafely in advance (in other words, reuse it
>>>    less than a safe distance),
>>>    0 1 2 ... 16 17 18 ... 33 34
>>>    b             p  b         b
>>>    note that the bounce page that we are concerned was allocated
>>>    at 0, and it reused at 18 since page 17 exists, but it mis-reused
>>>    at 34 in advance again, which causes decompress failure.
>>>
>>> This patch resolves the issue by introducing a bitmap to mark
>>> whether the page in the same position of last round is a bounced
>>> page or not, and a micro stack data structure to store all
>>> available bounced pages.
>>>
>>> Fixes: 7fc45dbc938a ("staging: erofs: introduce generic decompression backend")
>>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
>>> ---
>>>  drivers/staging/erofs/decompressor.c | 50 ++++++++++++++++------------
>>>  1 file changed, 28 insertions(+), 22 deletions(-)
>>>
>>> diff --git a/drivers/staging/erofs/decompressor.c b/drivers/staging/erofs/decompressor.c
>>> index 80f1f39719ba..1fb0abb98dff 100644
>>> --- a/drivers/staging/erofs/decompressor.c
>>> +++ b/drivers/staging/erofs/decompressor.c
>>> @@ -13,7 +13,7 @@
>>>  #define LZ4_DISTANCE_MAX 65535	/* set to maximum value by default */
>>>  #endif
>>>  
>>> -#define LZ4_MAX_DISTANCE_PAGES	DIV_ROUND_UP(LZ4_DISTANCE_MAX, PAGE_SIZE)
>>> +#define LZ4_MAX_DISTANCE_PAGES	(DIV_ROUND_UP(LZ4_DISTANCE_MAX, PAGE_SIZE) + 1)
>>>  #ifndef LZ4_DECOMPRESS_INPLACE_MARGIN
>>>  #define LZ4_DECOMPRESS_INPLACE_MARGIN(srcsize)  (((srcsize) >> 8) + 32)
>>>  #endif
>>> @@ -35,19 +35,28 @@ static int lz4_prepare_destpages(struct z_erofs_decompress_req *rq,
>>>  	const unsigned int nr =
>>>  		PAGE_ALIGN(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
>>>  	struct page *availables[LZ4_MAX_DISTANCE_PAGES] = { NULL };
>>> -	unsigned long unused[DIV_ROUND_UP(LZ4_MAX_DISTANCE_PAGES,
>>> -					  BITS_PER_LONG)] = { 0 };
>>> +	unsigned long bounced[DIV_ROUND_UP(LZ4_MAX_DISTANCE_PAGES,
>>> +					   BITS_PER_LONG)] = { 0 };
>>>  	void *kaddr = NULL;
>>> -	unsigned int i, j, k;
>>> +	unsigned int i, j, top;
>>>  
>>> -	for (i = 0; i < nr; ++i) {
>>> +	top = 0;
>>> +	for (i = j = 0; i < nr; ++i, ++j) {
>>>  		struct page *const page = rq->out[i];
>>> +		struct page *victim;
>>>  
>>> -		j = i & (LZ4_MAX_DISTANCE_PAGES - 1);
>>> -		if (availables[j])
>>> -			__set_bit(j, unused);
>>> +		if (j >= LZ4_MAX_DISTANCE_PAGES)
>>> +			j = 0;
>>> +
>>> +		/* 'valid' bounced can only be tested after a complete round */
>>> +		if (test_bit(j, bounced)) {
>>> +			DBG_BUGON(i < LZ4_MAX_DISTANCE_PAGES);
>>> +			DBG_BUGON(top >= LZ4_MAX_DISTANCE_PAGES);
>>> +			availables[top++] = rq->out[i - LZ4_MAX_DISTANCE_PAGES];
>>
>> Maybe we can change 'i - LZ4_MAX_DISTANCE_PAGES' to 'j' directly for better
>> readability.
> 
> OK, I think they are equivalent as well, will change for readability, retest and resend.
> Thanks for your suggestion :)

I tested again and I observed that using j broke the logic and I think we cannot use j
to replace i - LZ4_MAX_DISTANCE_PAGES.

Since bounced pages was marked according to the last round rather than the first round,
we cannot directly use the first round pages to push into the stack, e.g.

1)
    0 1 2 ... 16 17 18 ... 33 34
    p             b            b

bounce page could be allocated from rq->out[17], and we could reuse it from rq->out[34], which
is not equal to rq->out[0].

2)
    0 1 2 ... 16 17 18  19  ... 33 34 35 36
      b              p   b                b
allocated in rq->out[1] j = 1, reuse it in rq->out[19] j = 2, reuse it again in rq->out[36] j = 2,
which is not equal to rq->out[2].

I think the original patch is ok, and it cannot be replaced to rq->out[j].

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang
> 
>>
>> Otherwise, it looks good to me.
>>
>> Reviewed-by: Chao Yu <yuchao0@huawei.com>
>>
>> Thanks,
>>
>>> +		}
>>>  
>>>  		if (page) {
>>> +			__clear_bit(j, bounced);
>>>  			if (kaddr) {
>>>  				if (kaddr + PAGE_SIZE == page_address(page))
>>>  					kaddr += PAGE_SIZE;
>>> @@ -59,27 +68,24 @@ static int lz4_prepare_destpages(struct z_erofs_decompress_req *rq,
>>>  			continue;
>>>  		}
>>>  		kaddr = NULL;
>>> +		__set_bit(j, bounced);
>>>  
>>> -		k = find_first_bit(unused, LZ4_MAX_DISTANCE_PAGES);
>>> -		if (k < LZ4_MAX_DISTANCE_PAGES) {
>>> -			j = k;
>>> -			get_page(availables[j]);
>>> +		if (top) {
>>> +			victim = availables[--top];
>>> +			get_page(victim);
>>>  		} else {
>>> -			DBG_BUGON(availables[j]);
>>> -
>>>  			if (!list_empty(pagepool)) {
>>> -				availables[j] = lru_to_page(pagepool);
>>> -				list_del(&availables[j]->lru);
>>> -				DBG_BUGON(page_ref_count(availables[j]) != 1);
>>> +				victim = lru_to_page(pagepool);
>>> +				list_del(&victim->lru);
>>> +				DBG_BUGON(page_ref_count(victim) != 1);
>>>  			} else {
>>> -				availables[j] = alloc_pages(GFP_KERNEL, 0);
>>> -				if (!availables[j])
>>> +				victim = alloc_pages(GFP_KERNEL, 0);
>>> +				if (!victim)
>>>  					return -ENOMEM;
>>>  			}
>>> -			availables[j]->mapping = Z_EROFS_MAPPING_STAGING;
>>> +			victim->mapping = Z_EROFS_MAPPING_STAGING;
>>>  		}
>>> -		rq->out[i] = availables[j];
>>> -		__clear_bit(j, unused);
>>> +		rq->out[i] = victim;
>>>  	}
>>>  	return kaddr ? 1 : 0;
>>>  }
>>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
