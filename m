Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB68811533D
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Dec 2019 15:36:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E62D22628C;
	Fri,  6 Dec 2019 14:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2H5Q1AMjVDG0; Fri,  6 Dec 2019 14:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CB7F26202;
	Fri,  6 Dec 2019 14:36:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2BBA1BF844
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7ECC884E9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWH4EBbmxf5E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:36:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3486388499
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:36:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85AD22464E;
 Fri,  6 Dec 2019 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575642961;
 bh=YyflOjb4lUY5qcmqeS3M2Jl15fybKfgugoi+z2potTY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IVRK/kXZzPXoXGggfyY0zUH2O4LMInPe9NWRsUSA6lk4X17SWEaBObY0xgb4DpKLh
 Ins+TmB1XEj1xY6IftLlkY0KHOzu2fhGbsW5B+kL/2v4XrOGPB6nIP4Xh7Jz51u/Hx
 pS9+G0gnnb0z6F7yyyXOFN724P6hOShoPyLmFtDo=
Date: Fri, 6 Dec 2019 15:35:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC 4/6] staging: most: move core files out of the
 staging area
Message-ID: <20191206143558.GB32126@kroah.com>
References: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
 <1574697096-2942-5-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574697096-2942-5-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 25, 2019 at 04:51:34PM +0100, Christian Gromm wrote:
> This patch moves the core module to the /drivers/most directory
> and makes all necessary changes in order to not break the build.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
>  drivers/Kconfig                    |    1 +
>  drivers/Makefile                   |    1 +
>  drivers/most/Kconfig               |   15 +
>  drivers/most/Makefile              |    4 +
>  drivers/most/configfs.c            |  708 +++++++++++++++++
>  drivers/most/core.c                | 1523 ++++++++++++++++++++++++++++++++++++

When renaming or moving files, generate the patch with -M so that we see
it as a rename, not as an remove/add type of patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
