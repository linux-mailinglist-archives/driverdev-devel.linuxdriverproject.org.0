Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D603814A4DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 14:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F9108796D;
	Mon, 27 Jan 2020 13:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMUfnk3Oxej4; Mon, 27 Jan 2020 13:22:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CB198795A;
	Mon, 27 Jan 2020 13:22:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 925CD1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 13:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F09584CF4
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 13:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWtqBubnqzqv for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 13:22:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27E3F84C9F
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 13:22:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81C0C20702;
 Mon, 27 Jan 2020 13:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580131363;
 bh=Kb9x2s+UkwWqGC22SMv7hYVGLMzfbIYXm5FD1TymFlo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QLRKMtQe3CWXw3qsNchZ+wH+soGWVSVV3TPOYlHmNcnGi0/sS7AZLEF2rAbzJ+wEy
 B6pI7BJ6BrwsW0JF/jvnFtcx3S/ebZE8rRadayMeXfZohnQD6qjUdcWDShsAfQYJLi
 ixEa8+AZ1GKWg9TG0Mbnz304ximeon0hE1rAbH14=
Date: Mon, 27 Jan 2020 14:22:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pragat Pandya <pragat.pandya@gmail.com>
Subject: Re: [PATCH 10/22] staging: exfat: Rename variable "SecSize" to
 "sec_size"
Message-ID: <20200127132240.GB415635@kroah.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
 <20200127101343.20415-11-pragat.pandya@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127101343.20415-11-pragat.pandya@gmail.com>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 27, 2020 at 03:43:31PM +0530, Pragat Pandya wrote:
> Change all the occurrences of "SecSize" to "sec_size" in exfat.
> 
> Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> ---
>  drivers/staging/exfat/exfat.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index a228350acdb4..58292495bb57 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -237,7 +237,7 @@ struct part_info_t {
>  };
>  
>  struct dev_info_t {
> -	u32      SecSize;    /* sector size in bytes */

"sector_size"?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
