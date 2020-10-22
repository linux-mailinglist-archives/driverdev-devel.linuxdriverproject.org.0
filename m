Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB91E296057
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 15:50:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E63C87096;
	Thu, 22 Oct 2020 13:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4DxxuiMvdDc; Thu, 22 Oct 2020 13:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E7D587063;
	Thu, 22 Oct 2020 13:50:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7E81BF288
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 875A72048A
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VcIMQpgiuhgA for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 13:50:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id D66B320422
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 13:50:09 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.77,404,1596492000"; d="scan'208";a="473874968"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:50:08 +0200
Date: Thu, 22 Oct 2020 15:50:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Izabela Bakollari <izabela.bakollari@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging/wlan-ng: Fix line alignment
In-Reply-To: <20201022132218.235744-1-izabela.bakollari@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010221547500.5113@hadrien>
References: <20201022132218.235744-1-izabela.bakollari@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Thu, 22 Oct 2020, izabela.bakollari@gmail.com wrote:

> From: Izabela Bakollari <izabela.bakollari@gmail.com>
>
> Fix code alignment. Issue reported by checkpatch.pl

Try to find something other than "Fix" to describe what you have done.
What kind of change have you made and why is it a good idea?
>
> Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> index a908ff301707..1bd36dc2b7ff 100644
> --- a/drivers/staging/wlan-ng/prism2mgmt.c
> +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> @@ -1198,8 +1198,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  			if (wlandev->netdev->type == ARPHRD_ETHER) {
>  				/* Save macport 0 state */
>  				result = hfa384x_drvr_getconfig16(hw,
> -						  HFA384x_RID_CNFPORTTYPE,
> -						  &hw->presniff_port_type);
> +								  HFA384x_RID_CNFPORTTYPE,
> +								  &hw->presniff_port_type);

I think that the code was nicer before.  Staying inside 80 characters is
worth something, and having the arguments lined up with the ( seems lees
important in this case.  It could be a concern if the arguments eg ended
up right under the function name, because that would be easy to misread,
but that is not the case here.

julia

>  				if (result) {
>  					netdev_dbg
>  					(wlandev->netdev,
> --
> 2.18.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201022132218.235744-1-izabela.bakollari%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
