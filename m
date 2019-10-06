Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1780CD01E
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 11:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0A0082300;
	Sun,  6 Oct 2019 09:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAyNhfkjdPuL; Sun,  6 Oct 2019 09:50:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A14285EF1;
	Sun,  6 Oct 2019 09:50:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D66081BF366
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D268B85EBF
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JNgxNxs0pNOz for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 09:50:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B9C0285A84
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 09:50:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C62A20867;
 Sun,  6 Oct 2019 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570355444;
 bh=IEIOaPM0gWMqpc0zX16Dpknqo7eoR6bXroNx94NIjbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fDoRXRDUAh3f/Wl8m8Vf/KnM7I7dINcMPAD41WRI3EoYkS1D+NMGcmB+k9CX7T2PK
 YOne+95KYCGaaeOr69HmTnV84fF9HvNyvZgp8P2J5UAb3spb29Ecs9IvXfWJ9wxrv7
 gLk7BTpwXrYWdzyS2zRz5WHW2PRUyH63LCHWwe8o=
Date: Sun, 6 Oct 2019 11:50:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [PATCH] staging: greybus: add blank line after declarations
Message-ID: <20191006095042.GA2918514@kroah.com>
References: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, greybus-dev@lists.linaro.org,
 johan@kernel.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 05, 2019 at 06:00:46PM -0300, Gabriela Bittencourt wrote:
> Fix CHECK: add blank line after declarations
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/greybus/control.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> index 3a29ec05f631..5a45d55349a1 100644
> --- a/drivers/staging/greybus/control.h
> +++ b/drivers/staging/greybus/control.h
> @@ -24,6 +24,7 @@ struct gb_control {
>  	char *vendor_string;
>  	char *product_string;
>  };
> +
>  #define to_gb_control(d) container_of(d, struct gb_control, dev)

No, the original code is "better" here, it's a common pattern despite
what checkpatch.pl tells you, sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
