Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E68823401EB
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 10:23:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 138544EDED;
	Thu, 18 Mar 2021 09:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jtmcVL_AslFd; Thu, 18 Mar 2021 09:23:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B62D4ED86;
	Thu, 18 Mar 2021 09:23:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 937671BF471
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 09:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82B0B4309A
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 09:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01ZpDtfYN7nf for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 09:23:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F111B41566
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 09:23:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A8B164E3F;
 Thu, 18 Mar 2021 09:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616059389;
 bh=lG0HowW4e+FPMkk0A+FYgGzD8QLpys03bXXWgi/QB4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xvle20FiBO7Ol9vp6zjTQ4LcHBvTK5OIyn/fq/CtiW86hSDVlFv8+sdGSM9FstFMy
 Oemkq/KDu6dN/6zmhC9WJ0SGAtWd3phGMWGtGk3PHNN+aXZs59bDfUSs9UEnY3CPkF
 BgGGsm5Gv+orlgzUaf4CLQyqIcDhtOsJ1McmRzqk=
Date: Thu, 18 Mar 2021 10:23:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: staging: rtl8723bs: prefer ftrace
Message-ID: <YFMb+7jjmj7Oty8B@kroah.com>
References: <20210318091415.GA3683@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318091415.GA3683@agape.jhs>
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

On Thu, Mar 18, 2021 at 10:14:15AM +0100, Fabio Aiuto wrote:
> Hi,
> 
> some suggestions before diving in a new task.
> The following checkpatch issue:
> 
> --
> WARNING: Unnecessary ftrace-like logging - prefer using ftrace
> #559: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:559:
> +	DBG_871X("%s\n", __func__);
> 
> simply says to remove the line, due to the existence of the more
> appealing ftrace facility, right?
> 
> @@ -556,8 +554,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
>  	/* set intf_tag to if1 */
>  	/* psta->intf_tag = 0; */
>  
> -	DBG_871X("%s\n", __func__);
> -
>  	/* psta->mac_id = psta->aid+4; */
>  	/* psta->mac_id = psta->aid+1;//alloc macid when call rtw_alloc_stainfo(), */
>  	/* release macid when call rtw_free_stainfo() */
> 

Yes, stuff like this can be deleted.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
