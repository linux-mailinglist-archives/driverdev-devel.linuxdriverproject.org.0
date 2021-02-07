Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E535A3122C7
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 09:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB53086CEC;
	Sun,  7 Feb 2021 08:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WtcN3tiNoWqI; Sun,  7 Feb 2021 08:35:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C242586C8C;
	Sun,  7 Feb 2021 08:34:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75F701BF966
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7300886C88
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpjHal1DYAgc for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 08:34:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8586C86C82
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 08:34:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CB48764E72;
 Sun,  7 Feb 2021 08:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612686892;
 bh=A888IaNSu2puuK4G07jua8gvDnPrfTuVGtEQP35oN9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0Nmx60DOiWfBPaUAgsjI6TnhllIu6VSGe/8EQ9zHSy2ZM4pfxmXzNUTO083Db5UU1
 I60XWNw45jX64rdrAtLxV0DQDUqymUn49z6NYluD1+3GAFzBhzXrxRgrRF2pegYOPy
 5LdyJWr7XUYkp5dxZwrlfBb+tW2cB5lxYfJMbt0o=
Date: Sun, 7 Feb 2021 09:34:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mahak gupta <gmahak1@gmail.com>
Subject: Re: [PATCH] staging: gasket: Align code to match with open
 parenthesis and fix the lines ending with open parenthesis
Message-ID: <YB+mKfTaadKs7QCN@kroah.com>
References: <CAPqi7VBLxAsjXKpVc_u6q44mVXMJf8dERh7OnR3cjZRD0-t4eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPqi7VBLxAsjXKpVc_u6q44mVXMJf8dERh7OnR3cjZRD0-t4eg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Richard Yeh <rcy@google.com>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 01:11:36PM +0530, Mahak gupta wrote:
> This patch fixes warnings of checkpatch.pl. According to the coding style
> of linux, code should be aligned properly to match with open parenthesis
> and lines should not end with open parenthesis.
> 
> Signed-off-by: mhk19 <gmahak1@gmail.com>
> ---
>  drivers/staging/gasket/gasket_ioctl.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_ioctl.c
> b/drivers/staging/gasket/gasket_ioctl.c
> index e3047d36d8db..a966231bad42 100644
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ b/drivers/staging/gasket/gasket_ioctl.c
> @@ -40,7 +40,7 @@ static int gasket_set_event_fd(struct gasket_dev
> *gasket_dev,
> 
>  /* Read the size of the page table. */
>  static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
> -       struct gasket_page_table_ioctl __user *argp)
> +                                      struct gasket_page_table_ioctl
> __user *argp)
>  {
>         int ret = 0;
>         struct gasket_page_table_ioctl ibuf;
> @@ -51,8 +51,7 @@ static int gasket_read_page_table_size(struct gasket_dev
> *gasket_dev,
>         if (ibuf.page_table_index >= gasket_dev->num_page_tables)
>                 return -EFAULT;
> 
> -       ibuf.size = gasket_page_table_num_entries(
> -               gasket_dev->page_table[ibuf.page_table_index]);
> +       ibuf.size =
> gasket_page_table_num_entries(gasket_dev->page_table[ibuf.page_table_index]);
> 
>         trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
>                                            ibuf.host_address,
> @@ -66,7 +65,7 @@ static int gasket_read_page_table_size(struct gasket_dev
> *gasket_dev,
> 
>  /* Read the size of the simple page table. */
>  static int gasket_read_simple_page_table_size(struct gasket_dev
> *gasket_dev,
> -       struct gasket_page_table_ioctl __user *argp)
> +                                             struct
> gasket_page_table_ioctl __user *argp)
>  {
>         int ret = 0;
>         struct gasket_page_table_ioctl ibuf;
> @@ -92,7 +91,7 @@ static int gasket_read_simple_page_table_size(struct
> gasket_dev *gasket_dev,
> 
>  /* Set the boundary between the simple and extended page tables. */
>  static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
> -       struct gasket_page_table_ioctl __user *argp)
> +                                      struct gasket_page_table_ioctl
> __user *argp)
>  {
>         int ret;
>         struct gasket_page_table_ioctl ibuf;
> @@ -107,8 +106,8 @@ static int gasket_partition_page_table(struct
> gasket_dev *gasket_dev,
> 
>         if (ibuf.page_table_index >= gasket_dev->num_page_tables)
>                 return -EFAULT;
> -       max_page_table_size = gasket_page_table_max_size(
> -               gasket_dev->page_table[ibuf.page_table_index]);
> +       max_page_table_size = gasket_page_table_max_size
> +               (gasket_dev->page_table[ibuf.page_table_index]);
> 
>         if (ibuf.size > max_page_table_size) {
>                 dev_dbg(gasket_dev->dev,
> @@ -119,8 +118,7 @@ static int gasket_partition_page_table(struct
> gasket_dev *gasket_dev,
> 
>         mutex_lock(&gasket_dev->mutex);
> 
> -       ret = gasket_page_table_partition(
> -               gasket_dev->page_table[ibuf.page_table_index], ibuf.size);
> +       ret =
> gasket_page_table_partition(gasket_dev->page_table[ibuf.page_table_index],
> ibuf.size);
>         mutex_unlock(&gasket_dev->mutex);
> 
>         return ret;
> @@ -183,7 +181,7 @@ static int gasket_unmap_buffers(struct gasket_dev
> *gasket_dev,
>   * corresponding memory.
>   */
>  static int gasket_config_coherent_allocator(struct gasket_dev *gasket_dev,
> -       struct gasket_coherent_alloc_config_ioctl __user *argp)
> +                                           struct
> gasket_coherent_alloc_config_ioctl __user *argp)
>  {
>         int ret;
>         struct gasket_coherent_alloc_config_ioctl ibuf;
> --
> 2.17.1

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch is malformed (tabs converted to spaces, linewrapped, etc.)
  and can not be applied.  Please read the file,
  Documentation/email-clients.txt in order to fix this.

- You sent multiple patches, yet no indication of which ones should be
  applied in which order.  Greg could just guess, but if you are
  receiving this email, he guessed wrong and the patches didn't apply.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for a description of how
  to do this so that Greg has a chance to apply these correctly.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
