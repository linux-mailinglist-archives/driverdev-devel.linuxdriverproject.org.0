Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6C12BD60
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 04:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9741687B4A;
	Tue, 28 May 2019 02:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRDjNF7N7NoF; Tue, 28 May 2019 02:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2083887ADF;
	Tue, 28 May 2019 02:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5B081BF95E
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 02:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2B3387B05
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 02:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PjP7IysNXwZp for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 02:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E830287ADF
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 02:49:42 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5BBB52D4EEDAEF075B80;
 Tue, 28 May 2019 10:49:39 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.212) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 28 May
 2019 10:49:33 +0800
Subject: Re: [PATCH 1/2] staging: erofs: support statx
To: Chao Yu <yuchao0@huawei.com>
References: <20190528023147.94117-1-gaoxiang25@huawei.com>
 <2f6e75f8-ff82-7472-54ff-8c0648e8f075@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <86c2307e-f09b-12f8-3ed4-71e8ed6f2299@huawei.com>
Date: Tue, 28 May 2019 10:49:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <2f6e75f8-ff82-7472-54ff-8c0648e8f075@huawei.com>
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
 Chao Yu <chao@kernel.org>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chao,

On 2019/5/28 10:44, Chao Yu wrote:
> On 2019/5/28 10:31, Gao Xiang wrote:
>> statx() has already been supported in commit a528d35e8bfc
>> ("statx: Add a system call to make enhanced file info available"),
>> user programs can get more useful attributes.
>>
>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
>> ---
>>  drivers/staging/erofs/inode.c    | 18 ++++++++++++++++++
>>  drivers/staging/erofs/internal.h |  2 ++
>>  drivers/staging/erofs/namei.c    |  1 +
>>  3 files changed, 21 insertions(+)
>>
>> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
>> index c7d3b815a798..8da144943ed6 100644
>> --- a/drivers/staging/erofs/inode.c
>> +++ b/drivers/staging/erofs/inode.c
>> @@ -285,7 +285,23 @@ struct inode *erofs_iget(struct super_block *sb,
>>  	return inode;
>>  }
>>  
>> +int erofs_getattr(const struct path *path, struct kstat *stat,
>> +		  u32 request_mask, unsigned int query_flags)
>> +{
>> +	struct inode *const inode = d_inode(path->dentry);
>> +	struct erofs_vnode *const vi = EROFS_V(inode);
>> +
>> +	if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
>> +		stat->attributes |= STATX_ATTR_COMPRESSED;
>> +
>> +	stat->attributes |= STATX_ATTR_IMMUTABLE;
> 
> Xiang,
> 
> Should update stat->attributes_mask as well to indicate all erofs supported
> attributes bits.

opps, my fault... I just verified these patches stability.
Will do in the next version.

Thanks,
Gao Xiang

> 
> Thanks,
> 
>> +
>> +	generic_fillattr(inode, stat);
>> +	return 0;
>> +}
>> +
>>  const struct inode_operations erofs_generic_iops = {
>> +	.getattr = erofs_getattr,
>>  #ifdef CONFIG_EROFS_FS_XATTR
>>  	.listxattr = erofs_listxattr,
>>  #endif
>> @@ -294,6 +310,7 @@ const struct inode_operations erofs_generic_iops = {
>>  
>>  const struct inode_operations erofs_symlink_iops = {
>>  	.get_link = page_get_link,
>> +	.getattr = erofs_getattr,
>>  #ifdef CONFIG_EROFS_FS_XATTR
>>  	.listxattr = erofs_listxattr,
>>  #endif
>> @@ -302,6 +319,7 @@ const struct inode_operations erofs_symlink_iops = {
>>  
>>  const struct inode_operations erofs_fast_symlink_iops = {
>>  	.get_link = simple_get_link,
>> +	.getattr = erofs_getattr,
>>  #ifdef CONFIG_EROFS_FS_XATTR
>>  	.listxattr = erofs_listxattr,
>>  #endif
>> diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
>> index c47778b3fabd..911333cdeef4 100644
>> --- a/drivers/staging/erofs/internal.h
>> +++ b/drivers/staging/erofs/internal.h
>> @@ -556,6 +556,8 @@ static inline bool is_inode_fast_symlink(struct inode *inode)
>>  }
>>  
>>  struct inode *erofs_iget(struct super_block *sb, erofs_nid_t nid, bool dir);
>> +int erofs_getattr(const struct path *path, struct kstat *stat,
>> +		  u32 request_mask, unsigned int query_flags);
>>  
>>  /* namei.c */
>>  extern const struct inode_operations erofs_dir_iops;
>> diff --git a/drivers/staging/erofs/namei.c b/drivers/staging/erofs/namei.c
>> index d8d9dc9dab43..fd3ae78d0ba5 100644
>> --- a/drivers/staging/erofs/namei.c
>> +++ b/drivers/staging/erofs/namei.c
>> @@ -247,6 +247,7 @@ static struct dentry *erofs_lookup(struct inode *dir,
>>  
>>  const struct inode_operations erofs_dir_iops = {
>>  	.lookup = erofs_lookup,
>> +	.getattr = erofs_getattr,
>>  #ifdef CONFIG_EROFS_FS_XATTR
>>  	.listxattr = erofs_listxattr,
>>  #endif
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
