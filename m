Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 291CF1D1225
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 14:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A74F86E3B;
	Wed, 13 May 2020 12:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Liq9HnnvlWLh; Wed, 13 May 2020 12:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DC4A86D94;
	Wed, 13 May 2020 12:02:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 902C71BF38E
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 12:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 89DAD86D94
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 12:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qnWmEVoOUZ1Q for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 12:02:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2523686D64
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 12:02:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84732206CC;
 Wed, 13 May 2020 12:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589371341;
 bh=jve5K37fv5VsBx4Jio6QoqhRZJ/jnSw8nytBUhmeRPo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d+ibi98WB83LJ0UYWfadbixi4CEwz9KT3CjMNIIlAVJ7W1evjLTYNkavpzZaS11XC
 S+qWLdo+tfihive/D1EJTHZZS/0wiYSsbP6o4wxrgAdUZo2pRCx0yqF7D1zmBaPcFi
 RjQ7L0V0uM5WFDbhBJU6hism00lULVMmEKimQ6Vo=
Date: Wed, 13 May 2020 14:02:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anmol <anmol.karan123@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Fixed a issue related to
 file_operations
Message-ID: <20200513120218.GA982037@kroah.com>
References: <20200513114116.26410-1-user@debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513114116.26410-1-user@debian>
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

On Wed, May 13, 2020 at 05:11:16PM +0530, Anmol wrote:
> From: Anmol <anmol.karan123@gmail.com>
> 
> Fixed a issue related to struct file_operations which should normally be const.
> 
> Signed-off-by: Anmol <anmol.karan123@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 8044510d8ec6..fbb6ac9ba1ab 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const struct file_operations vmfile_fops;

Did you properly build this change?

Also, always use your full name for kernel changes, as the Documentation
states to.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
