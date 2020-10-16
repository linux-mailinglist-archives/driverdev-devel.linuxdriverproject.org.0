Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F0628FD97
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 07:16:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 912CA8874B;
	Fri, 16 Oct 2020 05:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJUvdPW8m7B9; Fri, 16 Oct 2020 05:16:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C5C8887AB;
	Fri, 16 Oct 2020 05:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F73E1BF860
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C46A8883F
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMYlicHjxdIr; Fri, 16 Oct 2020 05:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22FE488809;
 Fri, 16 Oct 2020 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=JOXeCK9Kxtfq4AH4ck/GKxNTnJOF7GQv5ZeoYVro91g=; b=Mb2ThDJKjCAGcN36qVAbwqsPoF
 pWDsDrEy/HFIjhvF/1jNQijps1rXMJ3CV+Ai2D9aCE73b20h/9M+HvhyKt4VJU+rpx+bC8j+y2c68
 rdDmS3CKaf7deWGsqwlWVoIOOqJ/2+8Yk3kW1peBzaTT6l/tHFas9s1tsCpik1NSYJO7mSp/ENoI+
 VcfRAIv8YZ0pReR6FZZQBe6hYztvZU7g69HI/AX7ftELgudiDobxt87rQmBZKvVK7x8QbY8tp+k/5
 iu242Dt9M3OTdJJtKhWl41rwruOAToRTUN/9oym8IY8U/nWYx/OYqvrCtcjVMino1BFeu5tYBTY9x
 9HWByYJg==;
Received: from [2601:1c0:6280:3f0::507c]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTI6h-00051g-Uw; Fri, 16 Oct 2020 05:16:48 +0000
Subject: Re: [PATCH] Staging: android: ashmem: changed struct file_operations
 to const file_operations
To: kiransuren@osuosl.org, kirank.suren@gmail.com, gregkh@linuxfoundation.org
References: <20201016051111.1947-1-kirank.suren@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f5804e0d-974d-36b2-3247-747187d1f135@infradead.org>
Date: Thu, 15 Oct 2020 22:16:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201016051111.1947-1-kirank.suren@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/15/20 10:11 PM, kiransuren@osuosl.org wrote:
> From: kiransuren <kirank.suren@gmail.com>
> 
> Fixed a coding style issue.
> 
> Signed-off-by: Kiran Surendran <kirank.suren@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 10b4be1f3e78..f2b67c4fe8d2 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  
> 

Did you build/compile this change?  My brain syntax checker doesn't like it.

and what coding style issue?

-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
