Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B56231F776
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:41:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 099DB86BA5;
	Fri, 19 Feb 2021 10:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acS5V-aLFher; Fri, 19 Feb 2021 10:41:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DD7686B9E;
	Fri, 19 Feb 2021 10:41:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D4691BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A1CC8704C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOka3aVv7qdX for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81B5E87038
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:40:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8207464EAF;
 Fri, 19 Feb 2021 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613731259;
 bh=eVO2HD34oqjPxE4D8k4YzK7H3mbnN08+5UHMMbGmNkk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jeE0V6mQ4HY0+J8qY39MMjuC/hFrku7azSwseFci48NNxZWxDxXAWpLHjh7jBh73F
 LrBpfvsu8egXYahoLDHqEBNzdNbVf4IMfP3ENwzuWYpHXPvvIz/iDW+suJvqNz0Iuz
 jE/vHBvI7HktVdK3fxYW69jfiU7IPRcyHrkCoH0s=
Date: Fri, 19 Feb 2021 11:40:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amrit Khera <amritkhera98@gmail.com>
Subject: Re: [PATCH] staging: android: Fix const keyword style issue in
 ashmem.c
Message-ID: <YC+Vt0qJbkCLPZfo@kroah.com>
References: <20210219101338.2670-1-amritkhera98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219101338.2670-1-amritkhera98@gmail.com>
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

On Fri, Feb 19, 2021 at 03:43:39PM +0530, Amrit Khera wrote:
> This change fixes a checkpatch warning for "struct file_operations should normally be const".
> 
> Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
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

Always test-build your patches before sending them out, otherwise you
are wasting reviewer's time, right?

:(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
