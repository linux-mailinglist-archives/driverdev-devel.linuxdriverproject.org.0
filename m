Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604C8343267
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 13:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FA5F40275;
	Sun, 21 Mar 2021 12:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUaonuuCEP9E; Sun, 21 Mar 2021 12:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE32940245;
	Sun, 21 Mar 2021 12:24:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06C001BF5F5
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF58540274
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQ0PpiZp3ca1 for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 12:24:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 407164027B
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 12:24:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75DCD6193E;
 Sun, 21 Mar 2021 12:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616329448;
 bh=F6NhSpVdoW4xD9hrDg3OmI2in0AjEwYyN7tOvNFuxh4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zGfxj3/Zhf2b+K4d71IUHlB2auJvl453wQtt+gwFP5ptIsceuhDmJmCbzGgCNOvdL
 pVI0UT2zd0TtuMYW7Q+9AZ1uCPOeyQbLjhlsgDtuE6JD60+7XQPwzdEqckWpR1zHvR
 efQxvEqwg82nuOdaIUJlzKcID6UfaI1vFHZakefM=
Date: Sun, 21 Mar 2021 13:24:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: eli.billauer@gmail.com
Subject: Re: [PATCH v4 1/2] char: xillybus: Move class-related functions to
 new xillybus_class.c
Message-ID: <YFc65bvAN3/ZNsww@kroah.com>
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-2-eli.billauer@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311095033.20956-2-eli.billauer@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 11, 2021 at 11:50:32AM +0200, eli.billauer@gmail.com wrote:
> From: Eli Billauer <eli.billauer@gmail.com>
> 
> This patch is a preparation for adding another related driver, XillyUSB.
> In order to share some code between the existing Xillybus driver and the
> one to be added, some functions are moved to xillybus_class.c
> 
> The header file, xillybus_class.h, is temporarily placed in include/linux/,
> because the new XillyUSB driver is intended as a staging driver for the
> time being.
> 
> Signed-off-by: Eli Billauer <eli.billauer@gmail.com>
> ---
> 
> Notes:
>     Changelog:
>     
>     v4:
>       - Fix error code return value bugs in xillybus_init_chrdev() as detected by
>         Smatch test robot, and reported by Dan Carpenter.
>     
>     This patch did not exist prior to v3.
> 
>  drivers/char/xillybus/Kconfig          |   4 +
>  drivers/char/xillybus/Makefile         |   1 +
>  drivers/char/xillybus/xillybus.h       |  10 +-
>  drivers/char/xillybus/xillybus_class.c | 263 +++++++++++++++++++++++++
>  drivers/char/xillybus/xillybus_core.c  | 181 +++--------------
>  include/linux/xillybus_class.h         |  30 +++
>  6 files changed, 322 insertions(+), 167 deletions(-)
>  create mode 100644 drivers/char/xillybus/xillybus_class.c
>  create mode 100644 include/linux/xillybus_class.h
> 
> diff --git a/drivers/char/xillybus/Kconfig b/drivers/char/xillybus/Kconfig
> index 130dbdce858f..e7800f025249 100644
> --- a/drivers/char/xillybus/Kconfig
> +++ b/drivers/char/xillybus/Kconfig
> @@ -3,10 +3,14 @@
>  # Xillybus devices
>  #
>  
> +config XILLYBUS_CLASS
> +	tristate
> +
>  config XILLYBUS
>  	tristate "Xillybus generic FPGA interface"
>  	depends on PCI || OF
>  	select CRC32
> +	select XILLYBUS_CLASS

depends on, do not select.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
