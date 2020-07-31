Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD632345F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 14:40:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 823F586AC6;
	Fri, 31 Jul 2020 12:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l7wtGk42A-aT; Fri, 31 Jul 2020 12:40:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DA3686A47;
	Fri, 31 Jul 2020 12:40:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D8A21BF28F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99E5088688
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLFMAbvRVdQ7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:40:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0407688236
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:40:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3420621744;
 Fri, 31 Jul 2020 12:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596199250;
 bh=Pt1S98f0GzIE3AAoj+4sq2CBEAjfR0SVaxb/dca5dmc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xUV6h0YtM1KiAG4GBOeaFkD4UyQQkUDaU4z6OfG0q003a/iyU/xaYkXx7pBXpxljS
 cZDNilfa82croF8TomtZSU63xNIlNxIzcoHNPHvBzUaUHOO0OoxLEL7zJGN7Wv78mi
 m7hr7smE8oUTadvR0ClNkIlK+LwhTHijHY39uYos=
Date: Fri, 31 Jul 2020 14:40:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v7] drivers: most: add USB adapter driver
Message-ID: <20200731124037.GA1689939@kroah.com>
References: <1596198058-26541-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596198058-26541-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 31, 2020 at 02:20:58PM +0200, Christian Gromm wrote:
> This patch adds the USB driver source file most_usb.c and
> modifies the Makefile and Kconfig accordingly.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
> v2:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>         - don't remove usb driver from staging area
>         - don't touch staging/most/Kconfig
>         - remove subdirectory for USB driver and put source file into
>           drivers/most
> v3:
>         - submitted fixes found during code audit to staging version
>           first to be able to resend single patch that adds the driver
> v4:
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
>         submitted patch set that fixes issues found during code audit
>         to staging version first to be able to resend single patch that
>         adds the driver. The patch series included:
> 
>         - use function sysfs_streq
>         - add missing put_device calls
>         - use correct error codes
>         - replace code to calculate array index
>         - don't use error path to exit function on success
>         - move allocation of URB out of critical section
>         - return 0 instead of variable
>         - change return value of function drci_rd_reg
>         - don't use expressions that might fail in a declaration
>         - change order of function parameters
> 
> v5:
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
>         submitted patch set that fixes issues found during code audit
>         to staging version first to be able to resend single patch that
>         adds the driver. The patch series included:
> 
>         - init return value in default path of switch/case expression
> 
> v6:
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> 
> 	remove dependency to NET in Kconfig file
> 
> v7:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> 	created patch with 'git format-patch -M' to show that this is
> 	a move only.
>  
>  drivers/most/Kconfig                                | 11 +++++++++++
>  drivers/most/Makefile                               |  2 ++
>  drivers/{staging/most/usb/usb.c => most/most_usb.c} |  0
>  drivers/staging/most/Kconfig                        |  2 --
>  drivers/staging/most/usb/Kconfig                    | 13 -------------
>  drivers/staging/most/usb/Makefile                   |  4 ----
>  6 files changed, 13 insertions(+), 19 deletions(-)
>  rename drivers/{staging/most/usb/usb.c => most/most_usb.c} (100%)
>  delete mode 100644 drivers/staging/most/usb/Kconfig
>  delete mode 100644 drivers/staging/most/usb/Makefile

Thanks, this worked, now queued up!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
