Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F49141F
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 04:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD87E858DA;
	Sun, 18 Aug 2019 02:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8N3I4mTvR79S; Sun, 18 Aug 2019 02:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5D44850E1;
	Sun, 18 Aug 2019 02:21:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9304B1BF319
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 02:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FD50850EA
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 02:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H71Wg8PBCLWw for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 02:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A2F4850E1
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 02:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rTepqUiIUx2nnEvuuf1IfBTS43BjeweB+IeE+bLV2H0=; b=jA5GcXNq9MfyEvl9UgqfCv2uN
 KduJxuHrPS02dFDVNAioWXKihTJvtK+MC0OIWgHKRKgWVRh4vlxhFM2sqx+9PkAGFxQrdG3sbHW/Q
 YLQSj9SqVXiZFbfvnfC2q5R/l8VeTCUNqYUCKj9DL5w+R8UYF9PUDDPy5h54axO+TzRK/pgQQZqmE
 sKb71/Rdfb4ZEcyOREIhAspSOIeiiM14fnbtnYO7e6jxzsJ7jaEW+encFkdeMqG/W9MaXcZS7Y/zA
 w/Dgbb9xXuEE95rAY/kK8se2W7Yn2s8XtVyvkFNLYO3smemDaVVdEajDo74CszfjMM7gXz/Flg7uU
 +/+5Qy5SA==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hzAoR-0001XG-Pw; Sun, 18 Aug 2019 02:20:55 +0000
Date: Sat, 17 Aug 2019 19:20:55 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v2] staging: erofs: fix an error handling in
 erofs_readdir()
Message-ID: <20190818022055.GA14592@bombadil.infradead.org>
References: <20190818014835.5874-1-hsiangkao@aol.com>
 <20190818015631.6982-1-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818015631.6982-1-hsiangkao@aol.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Richard Weinberger <richard@nod.at>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 09:56:31AM +0800, Gao Xiang wrote:
> @@ -82,8 +82,12 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
>  		unsigned int nameoff, maxsize;
>  
>  		dentry_page = read_mapping_page(mapping, i, NULL);
> -		if (IS_ERR(dentry_page))
> -			continue;
> +		if (IS_ERR(dentry_page)) {
> +			errln("fail to readdir of logical block %u of nid %llu",
> +			      i, EROFS_V(dir)->nid);
> +			err = PTR_ERR(dentry_page);
> +			break;

I don't think you want to use the errno that came back from
read_mapping_page() (which is, I think, always going to be -EIO).
Rather you want -EFSCORRUPTED, at least if I understand the recent
patches to ext2/ext4/f2fs/xfs/...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
