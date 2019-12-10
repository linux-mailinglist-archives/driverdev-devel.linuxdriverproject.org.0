Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 984A7118368
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 10:19:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 028E22210F;
	Tue, 10 Dec 2019 09:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HR6yO1xDXRRI; Tue, 10 Dec 2019 09:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10F17220C4;
	Tue, 10 Dec 2019 09:19:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC7D1BF2A0
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF8428786C
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-0teibxQRkj for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:19:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 921EE87E14
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 09:19:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D576F2073B;
 Tue, 10 Dec 2019 09:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575969547;
 bh=viR6aQSK+CgMvXKVb+9R042jToM9N6CtV3XYKFxogeg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rPT2fOupSrrWNlAManYtIUKMrNgPHN2ZR1NwfbQ+ys94H6NkTOq46FMutmaPMyH54
 SbhVzBbTYtraEBy1zMuSvvcQGdh893DskolaLHA82JIpMH7F8KJ0n6d9QttJRT6kdf
 tSGN1nKB0s9N2U/UkW3h+yRuaXT1LJTd69upJcbc=
Date: Tue, 10 Dec 2019 10:19:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/2] staging: remove isdn capi drivers
Message-ID: <20191210091905.GA3547805@kroah.com>
References: <20191209151114.2410762-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209151114.2410762-1-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, Johan Hedberg <johan.hedberg@gmail.com>,
 netdev@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 isdn4linux@listserv.isdn4linux.de, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 04:11:13PM +0100, Arnd Bergmann wrote:
> As described in drivers/staging/isdn/TODO, the drivers are all
> assumed to be unmaintained and unused now, with gigaset being the
> last one to stop being maintained after Paul Bolle lost access
> to an ISDN network.
> 
> The CAPI subsystem remains for now, as it is still required by
> bluetooth/cmtp.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  Documentation/ioctl/ioctl-number.rst        |    1 -

This file is not in 5.5-rc1, what tree did you make this against?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
