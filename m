Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF86A48C3B1
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 13:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EC6042902;
	Wed, 12 Jan 2022 12:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l8z00rEMt977; Wed, 12 Jan 2022 12:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F5E0428F6;
	Wed, 12 Jan 2022 12:06:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 298361BF3EB
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1808D428E6
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zEuWyBEv1JJD for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 12:06:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EF19428E3
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 12:06:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD23D6189B;
 Wed, 12 Jan 2022 12:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99650C36AEA;
 Wed, 12 Jan 2022 12:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1641989180;
 bh=HjLAGiICEdBjyy57hSRIlZqgutrx5Bc1oaXf7MmzTqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xrbeYF37jTAC/ZI7OAVid6rJcE47n2V9lxMuI5iGDChOMv/GblmE3ImXt4dZtoJOV
 qEHZJcpHaqQKVo8ESNv+JFu2EJ30olVzq36bDZl9mPXjDTutPNxF5ZvSIwaoiov89j
 PCcPWV9T7cnr2Vf41TdUfzTHBBaS1ImLfElElFG8=
Date: Wed, 12 Jan 2022 13:06:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
Message-ID: <Yd7EOcx/zHJFeJUv@kroah.com>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
 <20220112105859.u4j76o7cpsr4znmb@pali> <42104281.b1Mx7tgHyx@pc-42>
 <20220112114332.jadw527pe7r2j4vv@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220112114332.jadw527pe7r2j4vv@pali>
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 12, 2022 at 12:43:32PM +0100, Pali Roh=E1r wrote:
> Btw, is there any project which maintains SDIO ids, like there is
> pci-ids.ucw.cz for PCI or www.linux-usb.org/usb-ids.html for USB?

Both of those projects have nothing to do with the kernel drivers or
values at all, they are only for userspace tools to use.

So even if there was such a thing for SDIO ids, I doubt it would help
here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
