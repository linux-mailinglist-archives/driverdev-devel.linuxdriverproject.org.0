Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DED2E9794
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 15:48:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 148E186924;
	Mon,  4 Jan 2021 14:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09oiaz3xHCuL; Mon,  4 Jan 2021 14:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F04186849;
	Mon,  4 Jan 2021 14:48:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 767231BF346
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 14:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7076820797
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 14:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRN8bjHyGd3q for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 14:48:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F6642078B
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 14:48:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7071D207BC;
 Mon,  4 Jan 2021 14:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609771698;
 bh=tMK9lgZTp2/PYxk2/HncYQK0TyrP7dM/vOybkysA4ls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O5IWFhMU5QgFCcWzhum7IkBzJ98LRTKf29hw+C7u2zDTWascteDhcVLFmEFB3Z1LV
 CQALfQgyt2ileBW9dth1lC+I/miX0hslj580mwizB431pX91ml1MlTs+hFKXj18HpN
 j557hRsNIxbrDZn6iZEqIRIxJEgv+yoP5yn1ZNUcbp6ZCaSCx0nfqJNBsg8TgiaCRv
 3Z3kGZeXrefIV7tR99yYpV3Tb3FEDGqAUH8tbYT4o7E9zzZRl4bK4g7pGdjfpkd/YE
 3cb/J1zKRoiSi/7YGdYJQaveVp7rLHH1UiySVbi7gSg0jOKUcJV20yoLNJB1A1yfW8
 fgVTdq0eFNqog==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kwR9a-0007Hi-KG; Mon, 04 Jan 2021 15:48:15 +0100
Date: Mon, 4 Jan 2021 15:48:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 09/24] wfx: add hwio.c/hwio.h
Message-ID: <X/MqrvQSAPXkqFVF@hovoldconsulting.com>
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <87lfdp98rw.fsf@codeaurora.org> <X+IQRct0Zsm87H4+@kroah.com>
 <4279510.LvFx2qVVIh@pc-42> <20210104123410.GN2809@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104123410.GN2809@kadam>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
 linux-mmc@vger.kernel.org, Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 04, 2021 at 03:34:10PM +0300, Dan Carpenter wrote:

> There is a Smatch warning for this, but I hadn't looked at the results
> in a while. :/  I'm not sure how many are valid.  Some kind of
> annotation would be nice.

> drivers/usb/class/usblp.c:593 usblp_ioctl() error: doing dma on the stack (&newChannel)
> drivers/usb/serial/iuu_phoenix.c:542 iuu_uart_flush() error: doing dma on the stack (&rxcmd)

I only looked at these two but they are are indeed valid, and I've now
fixed them up.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
