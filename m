Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 715C62E3487
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 07:35:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C81F86153;
	Mon, 28 Dec 2020 06:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wI0_5Fe4snv; Mon, 28 Dec 2020 06:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C05E85DA5;
	Mon, 28 Dec 2020 06:35:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55B061BF3C1
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 06:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50CDC86912
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 06:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kf7x-wkA3l4U for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 06:35:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 02A81868DE
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 06:35:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4886120715;
 Mon, 28 Dec 2020 06:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609137312;
 bh=tuuZcnd4yFMUkxjYB/o7BzJe7osRuH4BdWFrjJ43KxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PQHOtvte1kVQZgTZCfIWJRWo8MDb2BNoXlEnngQm4lTO/Qv4otduoNUoHBbT5TLwV
 btbQcE8ipZtb1ZPIM77wT80EHwdj4m80E1MahDAFtMtZsLvhHXLjtKP6HKk3mKFgMQ
 +XSYLs22K4qv/a1Nhv4R2Om9NMgUek4prfMF7Bq4=
Date: Mon, 28 Dec 2020 07:35:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: jovin555 <jovin555@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Declared file operation with
 const keyword
Message-ID: <X+l8m6Z7eD26gaUC@kroah.com>
References: <20201228051301.14983-1-jovin555@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201228051301.14983-1-jovin555@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 28, 2020 at 12:13:00AM -0500, jovin555 wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: jovin555 <jovin555@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index c05a214191da..f9cfa15b785f 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  

Did you build your modified kernel with this change in it?

Always do so...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
