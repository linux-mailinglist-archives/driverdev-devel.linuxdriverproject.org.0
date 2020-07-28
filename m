Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D017B23119E
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 20:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFD1886519;
	Tue, 28 Jul 2020 18:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id goQAK0PiK3JY; Tue, 28 Jul 2020 18:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4CAA86444;
	Tue, 28 Jul 2020 18:25:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA291BF28E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 88FF086444
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C4AHC_VTou5N for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 18:25:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24FFF85D8D
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 18:25:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5646220714;
 Tue, 28 Jul 2020 18:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595960727;
 bh=qp1ca15nlchOHHWpb0GDZ73wbp+5RJCEQgUj8cnylfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ff0DX65e31G0m+5Hgz2THK4PAsZcNMAcPSBMJ4drm6k/yNHzucgxwUjxzJ2zUtGfF
 BRdS7iGEG4jO6FwIPpqa/CSzQJihlZ9IkEtyAr9GwODy4o6JPtkpuVPgQeyaB3eZsd
 sth0X63UplVmflYZb88E+Ca9IDr+HDobPgpo7qMU=
Date: Tue, 28 Jul 2020 20:25:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: used const keyword
Message-ID: <20200728182519.GA328787@kroah.com>
References: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, surenb@google.com,
 linux-kernel@vger.kernel.org, hridya@google.com, arve@android.com,
 joel@joelfernandes.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 28, 2020 at 11:29:35PM +0530, Dhiraj Sharma wrote:
> I ran checkpatch.pl script which reported a warning to use const keyword
> on line 370.Therefore I made this change.
> 
> Signed-off-by: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
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

You have now submitted two patches that you obviously never even built,
which is the first step in kernel development :(

Please be more careful next time.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
