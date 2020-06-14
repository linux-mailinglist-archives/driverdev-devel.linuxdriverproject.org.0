Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343B41F8740
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jun 2020 08:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CA9688871;
	Sun, 14 Jun 2020 06:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtEs-tSSDAKc; Sun, 14 Jun 2020 06:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 043B5887F3;
	Sun, 14 Jun 2020 06:25:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A19E71BF5E9
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 06:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9DF83887F8
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 06:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dDcKpyq+rYd for <devel@linuxdriverproject.org>;
 Sun, 14 Jun 2020 06:25:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ECB26887F3
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 06:25:04 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E6D720714;
 Sun, 14 Jun 2020 06:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592115904;
 bh=+G4mFwwUxmvulUqVt+U7sEFgiDncSSdch8RRO+Rxg8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pQ3hdpvVEsVSGxTpRYyfTvoyFlSPo7daG/GvIK6LqYPP9oF5AYCNIJ133AzcrnEPj
 zVLqWD4ebXqK/2jYxNngAIG7d75cLYlA7c+Sv68AQAst5+nlMBOxCUgWnYvjncdM+s
 l0f4HoE5v9nDdYbgobdDaiRCnyprotyZ6XlNb4eQ=
Date: Sun, 14 Jun 2020 08:25:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dio Putra <dioput12@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem.c: Cleanup
Message-ID: <20200614062501.GA2610536@kroah.com>
References: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
 <77288a97-c87a-8ef2-60ab-e7f89cde07ff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77288a97-c87a-8ef2-60ab-e7f89cde07ff@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 14, 2020 at 11:40:42AM +0700, Dio Putra wrote:
> Okay, my fault here. Changing the function a little bit didn't help unfortunately.
> 
> $ cd ~/git/linux/
> $ make CC=clang W=1 M=drivers/staging/android
>   CC      drivers/staging/android/ashmem.o
> drivers/staging/android/ashmem.c:418:16: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
>                         vmfile_fops = *vmfile->f_op;
>                         ~~~~~~~~~~~ ^
> drivers/staging/android/ashmem.c:370:31: note: variable 'vmfile_fops' declared const here
>         const struct file_operations vmfile_fops;
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> drivers/staging/android/ashmem.c:419:21: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
>                         vmfile_fops.mmap = ashmem_vmfile_mmap;
>                         ~~~~~~~~~~~~~~~~ ^
> drivers/staging/android/ashmem.c:370:31: note: variable 'vmfile_fops' declared const here
>         const struct file_operations vmfile_fops;
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> drivers/staging/android/ashmem.c:420:34: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
>                         vmfile_fops.get_unmapped_area =
>                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/staging/android/ashmem.c:370:31: note: variable 'vmfile_fops' declared const here
>         const struct file_operations vmfile_fops;
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> 3 errors generated.
> make[1]: *** [scripts/Makefile.build:267: drivers/staging/android/ashmem.o] Error 1
> make: *** [Makefile:1735: drivers/staging/android] Error 2
> $ 
> 
> On 6/14/20 12:37 AM, Dio Putra wrote:
> > Minor cleanup to make file_operations const once again.
> > 
> > Signed-off-by: Dio Putra <dioput12@gmail.com>
> > ---
> >  drivers/staging/android/ashmem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > base-commit: aa5af974127d317071d6225a0f3678c5f520e7ce
> > diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> > index 8044510d8ec6..fbb6ac9ba1ab 100644
> > --- a/drivers/staging/android/ashmem.c
> > +++ b/drivers/staging/android/ashmem.c
> > @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> >  
> >  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
> >  {
> > -	static struct file_operations vmfile_fops;
> > +	static const struct file_operations vmfile_fops;
> >  	struct ashmem_area *asma = file->private_data;
> >  	int ret = 0;
> >  

Always test-build your patches before you send them out please...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
