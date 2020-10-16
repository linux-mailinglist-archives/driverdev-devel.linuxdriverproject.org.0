Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F86228FD9A
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 07:18:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4F2888811;
	Fri, 16 Oct 2020 05:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5oXX3CJldKzK; Fri, 16 Oct 2020 05:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4850D887A0;
	Fri, 16 Oct 2020 05:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58C6E1BF860
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5594A88840
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rwfIJbkdut9o for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 05:18:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70C698883F
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 05:18:01 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 509112076A;
 Fri, 16 Oct 2020 05:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602825480;
 bh=YjcNRl2JJ7nRWiWDl8pgRAuyZ8xzW4GHIYnOBeGWgoI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ED4Q/aIx8sWIy6vJvxv75ipYACkPFEDD6yFe8SHUvAE0Rl7I+JfSBR6xrzGDO84gD
 lJjIUbQRyjeleUE9mhriQlKWdh93kOFiuJitxoYgYSPCpDVhpL/bzitxdOW9q8GKPP
 umNAmAARe0ra+S9zHxb4D0J+qVas6Z/xuGVPBoW0=
Date: Fri, 16 Oct 2020 07:17:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: kiransuren@osuosl.org, kirank.suren@gmail.com
Subject: Re: [PATCH] Staging: android: ashmem: changed struct file_operations
 to const file_operations
Message-ID: <20201016051757.GA463503@kroah.com>
References: <20201016051111.1947-1-kirank.suren@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016051111.1947-1-kirank.suren@gmail.com>
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

On Fri, Oct 16, 2020 at 01:11:11AM -0400, kiransuren@osuosl.org wrote:
> From: kiransuren <kirank.suren@gmail.com>

This does not match your signed-off-by line :(

> 
> Fixed a coding style issue.

What issue?  Always be specific.

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

Why did you not test-build your patch before sending it out?

Don't you think that is a big rude?

Please be more careful.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
