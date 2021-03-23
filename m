Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2FA345A4D
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 10:04:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 244084037F;
	Tue, 23 Mar 2021 09:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DBtESwFI2Siu; Tue, 23 Mar 2021 09:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 466A84037E;
	Tue, 23 Mar 2021 09:04:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D00461BF319
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEEC54037E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n0qfvUzY248w
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:04:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B8974036D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:04:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 99E8361879;
 Tue, 23 Mar 2021 09:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616490258;
 bh=EUl/v0iffJBU2WtPHHnlxTZrCzvNxJZP1g5ojT/BG8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S10jimcRP8IHCkeX7z2kd73vhXg11unBK+dF/c68f2POE2Ofippr4Q1UGeSVABffn
 /T5xqJ5AlmFghW9rdLAbVQiKmCQz/FIQhRBLgWY3C2WlYJ+iNA8p1sjP2eLvrmzzDr
 SIZOJOMe+4MOsp4hT6R7R3pgtO0Fn2OKLiy/dNhI=
Date: Tue, 23 Mar 2021 10:04:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v3] drivers: most: add ALSA sound driver
Message-ID: <YFmvD/oYW8ihe+ez@kroah.com>
References: <1612865627-29950-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1612865627-29950-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 11:13:47AM +0100, Christian Gromm wrote:
> This patch moves the ALSA sound driver out of the staging area and adds it
> to the stable part of the MOST driver. Modifications to the Makefiles and
> Kconfigs are done accordingly to not break the build.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
> v2:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>         
>         submitted patch that fixes issue found during code audit
>         to staging version first to be able to resend single patch that
>         adds the driver. The patch series included:
> 
>         - use swabXX functions of kernel
> 
> v3:
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> 	- use non-safe list iteration
> 	- add sanity check for function argument

Given a lack of complaints about this, I've now queued this up in my
staging tree for the next -rc1 merge window, thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
