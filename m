Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D6032F8F3
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 09:21:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 321234ED64;
	Sat,  6 Mar 2021 08:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1Yi4-dN7L2M; Sat,  6 Mar 2021 08:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A32B4EC35;
	Sat,  6 Mar 2021 08:21:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 192751BF2E4
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 08:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 085E160661
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 08:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xRBYTpK4M6dK for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 08:20:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7A72605DC
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 08:20:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA45564FE4;
 Sat,  6 Mar 2021 08:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615018856;
 bh=V+apSkenj7wVNfvNTT/reRzRO7BIURwxpVzitvx2RuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GkEt9F0qplk/H2xjRMgtaqKwa69fb2iYjAEeYNF0F7Q0F3/KK0/oVEm7Z5rCekMI5
 hbBPgUaqq4jAn+HbHIphTac6jzv6hDufnElIrLygTgBl5JDj7jQkS5vJDLH5dn0ODW
 cIihiBS0ByovsR1lQpsGJVuKzdLcXMhNyKlNwlH0=
Date: Sat, 6 Mar 2021 09:20:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: nabil5352 <nabil.ibn.mahmud@gmail.com>
Subject: Re: [PATCH] Staging: android: ashmem: fixed a struct without const
Message-ID: <YEM7ZcT4QzZ0uCaC@kroah.com>
References: <20210306063817.674041-1-nabil.ibn.mahmud@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210306063817.674041-1-nabil.ibn.mahmud@gmail.com>
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

On Sat, Mar 06, 2021 at 12:38:17PM +0600, nabil5352 wrote:
> Fixed a struct without const
> 
> Signed-off-by: nabil5352 <nabil.ibn.mahmud@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index d66a64e42273..7854fd410efa 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  

It's a bit rude to submit patches that you have not at the very least,
tried to build before sending it out to us, right?

Please always do so.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
