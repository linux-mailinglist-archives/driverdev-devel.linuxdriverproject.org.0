Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5566691684
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 14:28:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97C8B85C05;
	Sun, 18 Aug 2019 12:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2IbcZ7L5xnQ; Sun, 18 Aug 2019 12:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A92AA84E55;
	Sun, 18 Aug 2019 12:28:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E6D91BF3C5
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 12:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6AA1B203E6
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 12:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lUJ3ONkpyKcA for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 12:28:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 629EE20387
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 12:28:23 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5873E2087E;
 Sun, 18 Aug 2019 12:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566131303;
 bh=HNJf38I0a+gOcKfNaVQtjLQwEFcksaHhA/6CljFKIX4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=RxO9+puRHJmcKvOPSsCIPeit66aYoj6vdmvSvEIcCAGxl/lQIzCzgZpgT5ughClzO
 wIqm7cqj2bficZvnTqKwidE/4nq+1hW4Zs/UqyQbXa2h+6RCAZnfhq1YIBHHU2+vJe
 P3oDVOoomun8slQgNxHOvH2LUOzvG1HPJuph6pfE=
Subject: Re: [PATCH v2] staging: erofs: fix an error handling in
 erofs_readdir()
To: Gao Xiang <hsiangkao@aol.com>
References: <20190818014835.5874-1-hsiangkao@aol.com>
 <20190818015631.6982-1-hsiangkao@aol.com>
 <20190818022055.GA14592@bombadil.infradead.org>
 <20190818023240.GA7739@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818025339.GB14592@bombadil.infradead.org>
 <c624d057-cd42-515c-cff8-cf68340401e0@kernel.org>
 <20190818105255.GA22640@hsiangkao-HP-ZHAN-66-Pro-G1>
From: Chao Yu <chao@kernel.org>
Message-ID: <8244d199-ea53-e482-41b0-114031c91e49@kernel.org>
Date: Sun, 18 Aug 2019 20:28:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190818105255.GA22640@hsiangkao-HP-ZHAN-66-Pro-G1>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Richard Weinberger <richard@nod.at>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 stable@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xiang,

On 2019-8-18 18:52, Gao Xiang wrote:
> Hi Chao,
> 
> On Sun, Aug 18, 2019 at 06:39:52PM +0800, Chao Yu wrote:
>> On 2019-8-18 10:53, Matthew Wilcox wrote:
>>> On Sun, Aug 18, 2019 at 10:32:45AM +0800, Gao Xiang wrote:
>>>> On Sat, Aug 17, 2019 at 07:20:55PM -0700, Matthew Wilcox wrote:
>>>>> On Sun, Aug 18, 2019 at 09:56:31AM +0800, Gao Xiang wrote:
>>>>>> @@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
>>>>>>  		unsigned int nameoff, maxsize;
>>>>>>  
>>>>>>  		dentry_page = read_mapping_page(mapping, i, NULL);
>>>>>> -		if (IS_ERR(dentry_page))
>>>>>> -			continue;
>>>>>> +		if (IS_ERR(dentry_page)) {
>>>>>> +			errln("fail to readdir of logical block %u of nid %llu",
>>>>>> +			      i, EROFS_V(dir)->nid);
>>>>>> +			err = PTR_ERR(dentry_page);
>>>>>> +			break;
>>>>>
>>>>> I don't think you want to use the errno that came back from
>>>>> read_mapping_page() (which is, I think, always going to be -EIO).
>>>>> Rather you want -EFSCORRUPTED, at least if I understand the recent
>>>>> patches to ext2/ext4/f2fs/xfs/...
>>>>
>>>> Thanks for your reply and noticing this. :)
>>>>
>>>> Yes, as I talked with you about read_mapping_page() in a xfs related
>>>> topic earlier, I think I fully understand what returns here.
>>>>
>>>> I actually had some concern about that before sending out this patch.
>>>> You know the status is
>>>>    PG_uptodate is not set and PG_error is set here.
>>>>
>>>> But we cannot know it is actually a disk read error or due to
>>>> corrupted images (due to lack of page flags or some status, and
>>>> I think it could be a waste of page structure space for such
>>>> corrupted image or disk error)...
>>>>
>>>> And some people also like propagate errors from insiders...
>>>> (and they could argue about err = -EFSCORRUPTED as well..)
>>>>
>>>> I'd like hear your suggestion about this after my words above?
>>>> still return -EFSCORRUPTED?
>>>
>>> I don't think it matters whether it's due to a disk error or a corrupted
>>> image.  We can't read the directory entry, so we should probably return
>>> -EFSCORRUPTED.  Thinking about it some more, read_mapping_page() can
>>> also return -ENOMEM, so it should probably look something like this:
>>>
>>> 		err = 0;
>>> 		if (dentry_page == ERR_PTR(-ENOMEM))
>>> 			err = -ENOMEM;
>>> 		else if (IS_ERR(dentry_page)) {
>>> 			errln("fail to readdir of logical block %u of nid %llu",
>>> 			      i, EROFS_V(dir)->nid);
>>> 			err = -EFSCORRUPTED;
>>
>> Well, if there is real IO error happen under filesystem, we should return -EIO
>> instead of EFSCORRUPTED?
>>
>> The right fix may be that doing sanity check on on-disk blkaddr, and return
>> -EFSCORRUPTED if the blkaddr is invalid and propagate the error to its caller
>> erofs_readdir(), IIUC below error info.
> 
> In my thought, I actually don't care what is actually returned
> (In other words, I have no tendency about EFSCORRUPTED / EIO)
> as long as it behaves normal for corrupted image.

I doubt that user can and be willing to handle different error code in there
error path.

> 
> A little concern is that I have no idea whether all user problems
> can handle EUCLEAN properly.

Yes, I can see it's widely used in fileystem, I guess it would be better to
update manual of common fs interfaces to let user be aware of the meaning of it.

> 
> I don't want to limit blkaddr as what ->blocks recorded in
> erofs_super_block since it's already used for our hotpatching
> approach and that field is only used for statfs() for users
> to know its visible size, and block layer will block such
> invalid block access.
> 
> All in all, that is minor. I think we can fix as what Matthew said.

Yeah, as we discuss offline, we need keep flexibility on current version for
android, and maybe we can add a feature to check blkaddr validation later.

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>>
>>> [36297.354090] attempt to access beyond end of device
>>> [36297.354098] loop17: rw=0, want=29887428984, limit=1953128
>>> [36297.354107] attempt to access beyond end of device
>>> [36297.354109] loop17: rw=0, want=29887428480, limit=1953128
>>> [36301.827234] attempt to access beyond end of device
>>> [36301.827243] loop17: rw=0, want=29887428480, limit=1953128
>>
>> Thanks,
>>
>>> 		}
>>>
>>> 		if (err)
>>> 			break;
>>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
