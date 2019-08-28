Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFD29FD3A
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 10:35:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9E9E24DD1;
	Wed, 28 Aug 2019 08:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8oiSgqs19mM; Wed, 28 Aug 2019 08:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F67A228DF;
	Wed, 28 Aug 2019 08:35:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63EF91BF3A1
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 08:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6167322844
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 08:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eWCcHcAq4Kpu for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 08:35:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BCD9B227F8
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 08:35:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E95C214DA;
 Wed, 28 Aug 2019 08:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566981321;
 bh=jCBmJ968p6AegHWRNIvZuOkadJ2+5QH7sEl0+raorLU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QmxmG60yTLmsczg5shRXN+jZMOb4xsHS3oGp6QuHcmLtfTvqDp4wRP94Qoa5F0GEW
 17umAa9+lGuUuSBqawyxG1Jnk+3eitTnqk9Ii/UGyqSKOA9s2p69qzRaL8L3GrOlcE
 PRUkpGAv9VT1wPiZbu8P0GQW7F8d+G+dVDVBA88g=
Date: Wed, 28 Aug 2019 10:35:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rui Miguel Silva <rui.silva@linaro.org>
Subject: Re: [PATCH v2] staging: greybus: add missing includes
Message-ID: <20190828083519.GA29752@kroah.com>
References: <20190827205917.8308-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827205917.8308-1-rui.silva@linaro.org>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 09:59:17PM +0100, Rui Miguel Silva wrote:
> Before moving greybus core out of staging and moving header files to
> include/linux some greybus header files were missing the necessary
> includes. This would trigger compilation faillures with some example
> errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.
> 
> So, add the necessary headers to compile clean before relocating the
> header files.
> 
> ./include/linux/greybus/hd.h:23:50: error: unknown type name 'u16'
>   int (*cport_disable)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/greybus_protocols.h:1314:2: error: unknown type name '__u8'
>   __u8 data[0];
>   ^~~~
> ./include/linux/greybus/hd.h:24:52: error: unknown type name 'u16'
>   int (*cport_connected)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/hd.h:25:48: error: unknown type name 'u16'
>   int (*cport_flush)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/hd.h:26:51: error: unknown type name 'u16'
>   int (*cport_shutdown)(struct gb_host_device *hd, u16 cport_id, ^~~
> ./include/linux/greybus/hd.h:27:5: error: unknown type name 'u8'
> u8 phase, unsigned int timeout);
>      ^~
> ./include/linux/greybus/hd.h:28:50: error: unknown type name 'u16'
>   int (*cport_quiesce)(struct gb_host_device *hd, u16 cport_id, ^~~
> ./include/linux/greybus/hd.h:29:5: error: unknown type name 'size_t'
>      size_t peer_space, unsigned int timeout);
>      ^~~~~~
> ./include/linux/greybus/hd.h:29:5: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
> ./include/linux/greybus/hd.h:1:1:
> +#include <stddef.h>
>  /* SPDX-License-Identifier: GPL-2.0 */
> ./include/linux/greybus/hd.h:29:5:
>      size_t peer_space, unsigned int timeout);
>      ^~~~~~
> ./include/linux/greybus/hd.h:30:48: error: unknown type name 'u16'
>   int (*cport_clear)(struct gb_host_device *hd, u16 cport_id); ^~~
> ./include/linux/greybus/hd.h:32:49: error: unknown type name 'u16'
>   int (*message_send)(struct gb_host_device *hd, u16 dest_cport_id, ^~~
> ./include/linux/greybus/hd.h:33:32: error: unknown type name 'gfp_t'
> struct gb_message *message, gfp_t gfp_mask); ^~~~~
> ./include/linux/greybus/hd.h:35:55: error: unknown type name 'u16'
>   int (*latency_tag_enable)(struct gb_host_device *hd, u16 cport_id);
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Gao Xiang <hsiangkao@aol.com>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> Acked-by: Alex Elder <elder@kernel.org>
> ---
> 
> v1->v2:
> lkp@intel:
>   - added greybus_protocols.h include to svc.h header
> Alex Elder:
>   - remove extra line in operation.h
> 
> Looks like lkp can now find missing headers that we can not :),
> it must be the config. but it is right.
> 
> Greg please note the new include in svc.h may need to be changed
> when moving headers to include/linux

As a version of your first patch is already in my tree, this one will
not apply :(

Can you just send a fix-up patch against my staging-next branch instead?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
