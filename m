Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D1C3A4ED
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 12:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BBBD85B6F;
	Sun,  9 Jun 2019 10:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ki5HqZNJ9tAK; Sun,  9 Jun 2019 10:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA7C3859EA;
	Sun,  9 Jun 2019 10:59:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 394121BF288
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E894859EA
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id owWgx-Nz2ukl for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 10:59:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 879E0859BE
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 10:59:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C19FD2083D;
 Sun,  9 Jun 2019 10:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560077958;
 bh=rwSR3o1mv7zWnCRQ7zDWKuYNCzMiZtQnKYlpzI1SHOA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fa586/Nq76fAtEB8nXsQvlJD11gR/Z7mszDYU5HMV9dfRfItXyaUpLfMgfvt4tG3C
 5iZpQxmdpLGyXXZfXYkNwZxEKshPryB2lpBGJldouR7i0KKGUYyIzg2NzgdxbBLYu2
 SH76ke4aksII0NxvnGqEuIlrFrBgcnmL5Oc0ZgrQ=
Date: Sun, 9 Jun 2019 12:59:09 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Rishiraj Manwatkar <manwatkar@outlook.com>
Subject: Re: [PATCH] staging: isdn: To make hysdn_proc_entry static.
Message-ID: <20190609105909.GA30671@kroah.com>
References: <VE1PR09MB31685C49AD00EC2206C471E5A4120@VE1PR09MB3168.eurprd09.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR09MB31685C49AD00EC2206C471E5A4120@VE1PR09MB3168.eurprd09.prod.outlook.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "isdn@linux-pingi.de" <isdn@linux-pingi.de>, "arnd@arndb.de" <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 09, 2019 at 12:24:59AM +0000, Rishiraj Manwatkar wrote:
> 	Made hysdn_proc_entry static as suggested by Sparse tool.

Why is this indented?

> 
> Signed-off-by: Rishiraj Manwatkar <manwatkar@outlook.com>
> ---
>  drivers/staging/isdn/hysdn/hysdn_procconf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/isdn/hysdn/hysdn_procconf.c b/drivers/staging/isdn/hysdn/hysdn_procconf.c
> index 73079213ec94..3d12c058a6f1 100644
> --- a/drivers/staging/isdn/hysdn/hysdn_procconf.c
> +++ b/drivers/staging/isdn/hysdn/hysdn_procconf.c
> @@ -349,7 +349,7 @@ static const struct file_operations conf_fops =
>  /*****************************/
>  /* hysdn subdir in /proc/net */
>  /*****************************/
> -struct proc_dir_entry *hysdn_proc_entry = NULL;
> +static struct proc_dir_entry *hysdn_proc_entry = NULL;

I will have to wait until after 5.3-rc1 before taking any
drivers/staging/isdn patches, sorry.

I suggest waiting until then before resending, and even then, the isdn
code is about to be deleted, try working on code that is being accepted.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
