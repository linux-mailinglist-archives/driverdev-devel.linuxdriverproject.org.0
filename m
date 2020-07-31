Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA87233F33
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 08:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BF8D88780;
	Fri, 31 Jul 2020 06:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e7A4SF5uMmZh; Fri, 31 Jul 2020 06:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0EC188702;
	Fri, 31 Jul 2020 06:40:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F27D41BF40E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 06:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF182880D0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 06:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kEMt0IT+1LoW
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 06:39:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 49B6D880BB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 06:39:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A18D220829;
 Fri, 31 Jul 2020 06:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596177598;
 bh=YCJoUaWR/x7qnP+PdHEOelksbMa6S31UZAJI17UwjLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=biW43IdJG+7LIQvVu24YKluF/c9CA46sd0L/uPeA7K8sCAC10GiiKDl+zh+h/nbhS
 e0xreGMHYf6b97xkqAUTgU72aYu/An2dUsEu0lAL5Ma1Z6FY1qc1P2BVWrqQccTo2x
 JIqv+BWIZpyTZbvNR5L9A0xpTqhKt5J8I+Sguh8g=
Date: Fri, 31 Jul 2020 08:39:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v6] drivers: most: add USB adapter driver
Message-ID: <20200731063945.GF1508201@kroah.com>
References: <1596111472-21232-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596111472-21232-1-git-send-email-christian.gromm@microchip.com>
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

On Thu, Jul 30, 2020 at 02:17:52PM +0200, Christian Gromm wrote:
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
> 
>  drivers/most/Kconfig              |   11 +
>  drivers/most/Makefile             |    2 +
>  drivers/most/most_usb.c           | 1170 +++++++++++++++++++++++++++++++++++++
>  drivers/staging/most/Kconfig      |    2 -
>  drivers/staging/most/usb/Kconfig  |   13 -
>  drivers/staging/most/usb/Makefile |    4 -
>  drivers/staging/most/usb/usb.c    | 1170 -------------------------------------
>  7 files changed, 1183 insertions(+), 1189 deletions(-)
>  create mode 100644 drivers/most/most_usb.c
>  delete mode 100644 drivers/staging/most/usb/Kconfig
>  delete mode 100644 drivers/staging/most/usb/Makefile
>  delete mode 100644 drivers/staging/most/usb/usb.c
> 

If you create this with 'git format-patch -M' we can see that this
really is a rename/move and nothing else is changed in the file.

Can you do that here?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
