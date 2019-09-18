Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FAEB6D4E
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 22:12:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9ADC868FF;
	Wed, 18 Sep 2019 20:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gMv6Q9sFVTf; Wed, 18 Sep 2019 20:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CC4386834;
	Wed, 18 Sep 2019 20:12:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15D771BF311
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12FB58462A
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0OpxMqpDE45 for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 20:12:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE256845D2
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 20:12:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40A8D21A4C;
 Wed, 18 Sep 2019 20:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568837522;
 bh=/chlWVQdDDbU1oUJxPB9d8/3qiTPTTojAGNqFxZ0HI8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OgkOx50FcQPkSYnKouKL41ERFq6xpp3MlOmnxXlOJKBMz/LE79/BAZ9d7hhrJxzst
 2RX74uIvXWirN/O9On1s+zoub4FL29DOO3z5dcwXx8bOhVnH8DoFA4j2uxVO7EEoHX
 cc8fCxDxzrG1CxHqKh7505zu53zKyYFk+GoGItUE=
Date: Wed, 18 Sep 2019 22:12:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Park Ju Hyung <qkrwngud825@gmail.com>
Subject: Re: [PATCH] staging: exfat: rebase to sdFAT v2.2.0
Message-ID: <20190918201200.GA2025570@kroah.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190918195920.25210-1-qkrwngud825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918195920.25210-1-qkrwngud825@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com, valdis.kletnieks@vt.edu,
 sergey.senozhatsky.work@gmail.com, namjae.jeon@samsung.com,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 04:59:20AM +0900, Park Ju Hyung wrote:
> The new sdFAT driver base brings many improvements to the table.
> Quoting Namjae Jeon:
> 
> ======================================================================
> 1. sdfat has been refactored to improve compatibility, readability and
> to be linux friendly.(included support mass storages larger than 2TB.)
> 
> 2. sdfat has been optimized for the performance of SD-cards.
>   - Support SD-card friendly block allocation and delayed allocation
>     for vfat-fs only.
>   - Support aligned_mpage_write for both vfat-fs and exfat-fs
> 
> 3. sdfat has been optimized for the performance of general operations
>     like create,lookup and readdir.
> 
> 4. Fix many critical and minor bugs
>  - Handle many kinds of error conditions gracefully to prevent panic.
>  - Fix critical bugs related to rmdir, truncate behavior and so on...
> 
> 5. Fix NLS functions
> ======================================================================
> 
> sdFAT v2.2.0 (from N970FXXU1ASHE) was forked and then cleaned up to better
> suit mainline's standards:
> 
>  * Remove fat12/16/32 handlings and rename to exFAT.
>  * Remove older kernel compatibilities.
>  * Remove Samsung's userspace-specific code (e.g. defrag).
>  * Fix compilation warnings on modern compiler.
>  * Remove unused functions.
>  * Rename non-static functions for avoiding global symbol table pollutions.
>  * Declare functions as static whenever possible.
>  * Fix checkpatch.pl errors.
>  * Remove aligned mpage write for portability.
> 
> Full rebase history can be found on:
> https://github.com/arter97/exfat-linux/commits/for-next
> 
> Signed-off-by: Park Ju Hyung <qkrwngud825@gmail.com>
> ---
>  drivers/staging/exfat/Kconfig        |   88 +-
>  drivers/staging/exfat/Makefile       |   11 +-
>  drivers/staging/exfat/TODO           |   15 +-
>  drivers/staging/exfat/api.h          |  265 ++
>  drivers/staging/exfat/blkdev.c       |  330 +++
>  drivers/staging/exfat/cache.c        |  785 +++++
>  drivers/staging/exfat/config.h       |   32 +
>  drivers/staging/exfat/core.c         | 3169 ++++++++++++++++++++
>  drivers/staging/exfat/core.h         |  149 +
>  drivers/staging/exfat/core_exfat.c   | 1485 ++++++++++
>  drivers/staging/exfat/exfat.h        | 1261 +++-----
>  drivers/staging/exfat/exfat_blkdev.c |  136 -
>  drivers/staging/exfat/exfat_cache.c  |  724 -----
>  drivers/staging/exfat/exfat_core.c   | 3701 -----------------------
>  drivers/staging/exfat/exfat_fs.h     |  398 +++
>  drivers/staging/exfat/exfat_nls.c    |  404 ---
>  drivers/staging/exfat/exfat_super.c  | 4049 --------------------------
>  drivers/staging/exfat/exfat_upcase.c |  740 -----
>  drivers/staging/exfat/extent.c       |  329 +++
>  drivers/staging/exfat/fatent.c       |  113 +
>  drivers/staging/exfat/misc.c         |  356 +++
>  drivers/staging/exfat/nls.c          |  323 ++
>  drivers/staging/exfat/super.c        | 3168 ++++++++++++++++++++
>  drivers/staging/exfat/upcase.h       |  394 +++
>  drivers/staging/exfat/xattr.c        |   76 +
>  25 files changed, 11777 insertions(+), 10724 deletions(-)

That's a lot of rewriting :(

How about at least keeping the file names the same to make it easier to
see what happened here?

Then send a follow-on patch that just does the rename?

And by taking something like this, are you agreeing that Samsung will
help out with the development of this code to clean it up and get it
into "real" mergable shape?

Also, I can't take this patch for this simple reason alone:

> --- a/drivers/staging/exfat/Makefile
> +++ b/drivers/staging/exfat/Makefile
> @@ -1,10 +1,5 @@
> -# SPDX-License-Identifier: GPL-2.0
> -

Don't delete SPDX lines :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
