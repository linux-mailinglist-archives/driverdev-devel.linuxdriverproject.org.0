Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A225A4A9ADE
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Feb 2022 15:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B713860B42;
	Fri,  4 Feb 2022 14:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TTiWAa_K_4I; Fri,  4 Feb 2022 14:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 722D2605EA;
	Fri,  4 Feb 2022 14:23:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B42151BF2FC
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 14:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A08E44052A
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 14:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m_M0b4zVEKk5 for <devel@linuxdriverproject.org>;
 Fri,  4 Feb 2022 14:23:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD95040510
 for <devel@driverdev.osuosl.org>; Fri,  4 Feb 2022 14:23:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F1EF960B8D;
 Fri,  4 Feb 2022 14:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBE70C340E9;
 Fri,  4 Feb 2022 14:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1643984616;
 bh=lfy7vJioDybXdR7wJftnkVwV2ISJao8GP2gpwcbuuDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v+mGhZ9+A2O8dRNg9jsF7KdtrrKZQJpW1woDpMdTJwOSJNYJpwQeixtCCsXpuSt3e
 K4QKJK0UMWNkB1GxozNwMBMIucRnzCj+jUXx/iPv42DRksA0+GtLpgDh0FJ/0Qr2qQ
 vAOpOvvjpq9AxePyU/lNgd+cdpnvMQHJhpndPPPo=
Date: Fri, 4 Feb 2022 15:23:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tong Zhang <ztong0001@gmail.com>
Subject: Re: [PATCH] staging: gs_fpgaboot: revert removed board specific code
Message-ID: <Yf025dphJw2rUVR5@kroah.com>
References: <20220204054028.3123858-1-ztong0001@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220204054028.3123858-1-ztong0001@gmail.com>
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
Cc: devel@driverdev.osuosl.org, insop.song@gainspeed.com,
 Paul Bolle <pebolle@tiscali.nl>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 03, 2022 at 09:40:27PM -0800, Tong Zhang wrote:
> gs_fpgaboot is currently useless since the board specific code is
> removed in 06a3fab941da.

Nit, commits should be printed out like this:
06a3fab941da ("staging: gs_fpgaboot: remove checks for CONFIG_B4860G100")

> Loading the driver will always fail since
> xl_init_io() always returns -1. This driver is broken since 2014 and I
> doubt anyone is actually using it, we could either remove it or revert
> to the previous working version.

Let's just remove it obviously no one is using it.

Or do you want to use it for your hardware?  if so, let's fix it for
that platform.

> 
> $ modprobe gs_fpga
> GPIO INIT FAIL!!
> 
> This patch reverts previously removed code and adds a Kconfig to make
> this board selectable for PPC_85xx processors.
> 
> Fixes: 06a3fab941da ("staging: gs_fpgaboot: remove checks for CONFIG_B4860G100")
> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> ---
>  drivers/staging/gs_fpgaboot/Kconfig |  14 ++-
>  drivers/staging/gs_fpgaboot/io.c    | 173 ++++++++++++++++++++++++++++
>  2 files changed, 186 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gs_fpgaboot/Kconfig b/drivers/staging/gs_fpgaboot/Kconfig
> index 968a153c4ab6..0b4144450123 100644
> --- a/drivers/staging/gs_fpgaboot/Kconfig
> +++ b/drivers/staging/gs_fpgaboot/Kconfig
> @@ -5,4 +5,16 @@
>  config GS_FPGABOOT
>  	tristate "Xilinx FPGA firmware download module"
>  	help
> -	  Xilinx FPGA firmware download module
> +	  Xilinx FPGA firmware download module.
> +
> +choice
> +	prompt "Support Board"
> +	depends on GS_FPGABOOT

That's an odd config option, what will that show?  Shouldn't the prompt
have something to do with the board name?

Anyway, no new config options please, either lets remove it or fix it
for your hardware.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
