Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E258633EDE4
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 11:02:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 170BC43202;
	Wed, 17 Mar 2021 10:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xC7LqY_p9WHK; Wed, 17 Mar 2021 10:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DA1940197;
	Wed, 17 Mar 2021 10:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F17871BF20B
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 10:02:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC80242C2A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 10:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EdCCJnjJOQcp for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 10:02:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 621DF40139
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 10:02:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A7F164F6C;
 Wed, 17 Mar 2021 10:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615975337;
 bh=rnFPxkpXYUq+oUBeFeUJ54dHBeYSHquuWQJDH+00gro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MDvYWw5juOdHu/wa5T8Bwx+L1fnA+U6JjUgp/+b2vv1ijzgnMzzJzFm896oT6rhbI
 HJWOavZZ1aePmX2iqLDyHFWxznQ6rFgV6iK8nEXWqs01h7NF2J5RsO/1AJO3UUI2Jd
 M+pcnrYGarWK8IuWbyn/c1lxZ6zITX+9iRQTxBBA=
Date: Wed, 17 Mar 2021 11:02:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: staging: rtl8723bs: remove unused code blocks completed?
Message-ID: <YFHTpb6oSarirQJv@kroah.com>
References: <20210317095932.GA2308@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210317095932.GA2308@agape.jhs>
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

On Wed, Mar 17, 2021 at 10:59:32AM +0100, Fabio Aiuto wrote:
> Hi,
> 
> I'm trying to search other unused code blocks:
> 
> grep -r '^\(#ifdef \|#if defined(\|#ifndef \)CONFIG_' drivers/staging/rtl8723bs/
> 
> drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
> drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
> drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:#if defined(CONFIG_WEXT_PRIV)
> drivers/staging/rtl8723bs/include/drv_conf.h:#ifndef CONFIG_RTW_HIQ_FILTER
> drivers/staging/rtl8723bs/include/autoconf.h:#ifndef CONFIG_WIRELESS_EXT
> 
> all blocks left are checked by existing defines.
> Could we apply this?

Sure, looks good, submit this as a real patch with this information in
the changelog and I"ll be glad to take it.

thanks,
greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
