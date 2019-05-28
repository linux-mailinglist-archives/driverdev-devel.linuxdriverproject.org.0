Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E54D92BFF6
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 09:17:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE5862E379;
	Tue, 28 May 2019 07:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XcJQRhoDwQH; Tue, 28 May 2019 07:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79E982D8AB;
	Tue, 28 May 2019 07:17:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58F091BF86C
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 07:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F48D85D3D
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 07:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5XsQSzoNUHi0 for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 07:17:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E04EB84E97
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 07:17:36 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8EA04D05DC1A8EE71882;
 Tue, 28 May 2019 15:17:31 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 28 May
 2019 15:17:25 +0800
Subject: Re: [PATCH v2 2/2] staging: erofs: fix i_blocks calculation
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190528023147.94117-2-gaoxiang25@huawei.com>
 <20190528023602.178923-1-gaoxiang25@huawei.com>
 <fe0ff7bb-b576-f949-d57a-2892d116b22f@huawei.com>
 <20190528065709.GY31203@kadam>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <cfcdc928-f9c4-a172-15a2-2faeca62f826@huawei.com>
Date: Tue, 28 May 2019 15:16:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190528065709.GY31203@kadam>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On 2019/5/28 14:57, Dan Carpenter wrote:
> On Tue, May 28, 2019 at 11:02:12AM +0800, Chao Yu wrote:
>> On 2019/5/28 10:36, Gao Xiang wrote:
>>> For compressed files, i_blocks should not be calculated
>>> by using i_size. i_u.compressed_blocks is used instead.
>>>
>>> In addition, i_blocks was miscalculated for non-compressed
>>> files previously, fix it as well.
>>>
>>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
>>> ---
>>> change log v2:
>>>  - fix description in commit message
>>>  - fix to 'inode->i_blocks = nblks << LOG_SECTORS_PER_BLOCK'
>>>
>>> Thanks,
>>> Gao Xiang
>>>
>>>  drivers/staging/erofs/inode.c | 14 ++++++++++++--
>>>  1 file changed, 12 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
>>> index 8da144943ed6..6e67e018784e 100644
>>> --- a/drivers/staging/erofs/inode.c
>>> +++ b/drivers/staging/erofs/inode.c
>>> @@ -20,6 +20,7 @@ static int read_inode(struct inode *inode, void *data)
>>>  	struct erofs_vnode *vi = EROFS_V(inode);
>>>  	struct erofs_inode_v1 *v1 = data;
>>>  	const unsigned int advise = le16_to_cpu(v1->i_advise);
>>> +	erofs_blk_t nblks = 0;
>>>  
>>>  	vi->data_mapping_mode = __inode_data_mapping(advise);
>>>  
>>> @@ -60,6 +61,10 @@ static int read_inode(struct inode *inode, void *data)
>>>  			le32_to_cpu(v2->i_ctime_nsec);
>>>  
>>>  		inode->i_size = le64_to_cpu(v2->i_size);
>>> +
>>> +		/* total blocks for compressed files */
>>> +		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
>>> +			nblks = v2->i_u.compressed_blocks;
>>
>> Xiang,
>>
>> It needs to use le32_to_cpu(). ;)
>>
> 
> I wonder it the kbuild bot is going to send an email about that...

Not yet, and v3 fixes it. I have no idea whether kbuild checks all version
or just the latest version...

> Hopefully these sorts of bugs get detected with Sparse CF=-D__CHECK_ENDIAN__

Yes, I missed this case by mistake.
These two patches are small, I didn't do too many static checking expect for checkpatch.pl.
v3 seems fine and I will take care later, Thanks for kindly suggestion. :)

Thanks,
Gao Xiang

> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
