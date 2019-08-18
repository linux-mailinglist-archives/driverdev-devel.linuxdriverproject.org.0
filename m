Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA379162D
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 12:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5288886100;
	Sun, 18 Aug 2019 10:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Bsfd7CS33N2; Sun, 18 Aug 2019 10:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94EFF860D5;
	Sun, 18 Aug 2019 10:40:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8440C1BF3AA
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 10:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F2F520387
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 10:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nENY0NM9Jpbc for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 10:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 04A0820366
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 10:39:59 +0000 (UTC)
Received: from [192.168.0.101] (unknown [180.111.132.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB5402173B;
 Sun, 18 Aug 2019 10:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566124798;
 bh=NZToQaeJzz8Ty+Y0B57dsWw46aBahEhnOAkutIVO54Y=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=CsD7cjaN8Kycm4SVNR7vGn1g2VrzQcmT40WDMLnYfOS6oeI6RVJVrJd+vn4F/oW5e
 Lonw4lm85ZI/xRvSs4p4tNebnaWPfW2rGYI6V5fcdfC8IXMnZiyPxB4kiCybncg2rf
 NoXjpYAKkJLM7wzG/WfrfT3xQ8H9xja220BFAKmE=
Subject: Re: [PATCH v2] staging: erofs: fix an error handling in
 erofs_readdir()
To: Matthew Wilcox <willy@infradead.org>, Gao Xiang <hsiangkao@aol.com>
References: <20190818014835.5874-1-hsiangkao@aol.com>
 <20190818015631.6982-1-hsiangkao@aol.com>
 <20190818022055.GA14592@bombadil.infradead.org>
 <20190818023240.GA7739@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818025339.GB14592@bombadil.infradead.org>
From: Chao Yu <chao@kernel.org>
Message-ID: <c624d057-cd42-515c-cff8-cf68340401e0@kernel.org>
Date: Sun, 18 Aug 2019 18:39:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190818025339.GB14592@bombadil.infradead.org>
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
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-8-18 10:53, Matthew Wilcox wrote:
> On Sun, Aug 18, 2019 at 10:32:45AM +0800, Gao Xiang wrote:
>> On Sat, Aug 17, 2019 at 07:20:55PM -0700, Matthew Wilcox wrote:
>>> On Sun, Aug 18, 2019 at 09:56:31AM +0800, Gao Xiang wrote:
>>>> @@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
>>>>  		unsigned int nameoff, maxsize;
>>>>  
>>>>  		dentry_page = read_mapping_page(mapping, i, NULL);
>>>> -		if (IS_ERR(dentry_page))
>>>> -			continue;
>>>> +		if (IS_ERR(dentry_page)) {
>>>> +			errln("fail to readdir of logical block %u of nid %llu",
>>>> +			      i, EROFS_V(dir)->nid);
>>>> +			err = PTR_ERR(dentry_page);
>>>> +			break;
>>>
>>> I don't think you want to use the errno that came back from
>>> read_mapping_page() (which is, I think, always going to be -EIO).
>>> Rather you want -EFSCORRUPTED, at least if I understand the recent
>>> patches to ext2/ext4/f2fs/xfs/...
>>
>> Thanks for your reply and noticing this. :)
>>
>> Yes, as I talked with you about read_mapping_page() in a xfs related
>> topic earlier, I think I fully understand what returns here.
>>
>> I actually had some concern about that before sending out this patch.
>> You know the status is
>>    PG_uptodate is not set and PG_error is set here.
>>
>> But we cannot know it is actually a disk read error or due to
>> corrupted images (due to lack of page flags or some status, and
>> I think it could be a waste of page structure space for such
>> corrupted image or disk error)...
>>
>> And some people also like propagate errors from insiders...
>> (and they could argue about err = -EFSCORRUPTED as well..)
>>
>> I'd like hear your suggestion about this after my words above?
>> still return -EFSCORRUPTED?
> 
> I don't think it matters whether it's due to a disk error or a corrupted
> image.  We can't read the directory entry, so we should probably return
> -EFSCORRUPTED.  Thinking about it some more, read_mapping_page() can
> also return -ENOMEM, so it should probably look something like this:
> 
> 		err = 0;
> 		if (dentry_page == ERR_PTR(-ENOMEM))
> 			err = -ENOMEM;
> 		else if (IS_ERR(dentry_page)) {
> 			errln("fail to readdir of logical block %u of nid %llu",
> 			      i, EROFS_V(dir)->nid);
> 			err = -EFSCORRUPTED;

Well, if there is real IO error happen under filesystem, we should return -EIO
instead of EFSCORRUPTED?

The right fix may be that doing sanity check on on-disk blkaddr, and return
-EFSCORRUPTED if the blkaddr is invalid and propagate the error to its caller
erofs_readdir(), IIUC below error info.

> [36297.354090] attempt to access beyond end of device
> [36297.354098] loop17: rw=0, want=29887428984, limit=1953128
> [36297.354107] attempt to access beyond end of device
> [36297.354109] loop17: rw=0, want=29887428480, limit=1953128
> [36301.827234] attempt to access beyond end of device
> [36301.827243] loop17: rw=0, want=29887428480, limit=1953128

Thanks,

> 		}
> 
> 		if (err)
> 			break;
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
