Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B0A2E0CA7
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD06B273E1;
	Tue, 22 Dec 2020 15:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhYGVBpMsD9k; Tue, 22 Dec 2020 15:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A3BB21561;
	Tue, 22 Dec 2020 15:25:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE3771BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB1B9860E0
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id or72ScqsY1kN for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:25:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 53F8B860DE
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:25:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8438C22B2B;
 Tue, 22 Dec 2020 15:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608650748;
 bh=5u1OMPazxna6SdFx9055/ZLyzwNHmLasEDnc+ZdsHKQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VT5ufNfTQ9zHVf2sog5IbNLe33dKHyraVdbhAhDioiIFia5wjW/bGXXyPHFCSh5kY
 CGvdJjggR7bAXGtx/LtjFgzceZ44NAnL7We7BHtHSDOQxw4BlABUrK76l5G+CtkItm
 HWi0t5/T0yE6kbm7VVDd2ByOjkbBvXlEZtFpjKlc=
Date: Tue, 22 Dec 2020 16:27:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v3 09/24] wfx: add hwio.c/hwio.h
Message-ID: <X+IQRct0Zsm87H4+@kroah.com>
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-10-Jerome.Pouiller@silabs.com>
 <87lfdp98rw.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lfdp98rw.fsf@codeaurora.org>
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
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 22, 2020 at 05:10:11PM +0200, Kalle Valo wrote:
> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> 
> > +/*
> > + * Internal helpers.
> > + *
> > + * About CONFIG_VMAP_STACK:
> > + * When CONFIG_VMAP_STACK is enabled, it is not possible to run DMA on stack
> > + * allocated data. Functions below that work with registers (aka functions
> > + * ending with "32") automatically reallocate buffers with kmalloc. However,
> > + * functions that work with arbitrary length buffers let's caller to handle
> > + * memory location. In doubt, enable CONFIG_DEBUG_SG to detect badly located
> > + * buffer.
> > + */
> 
> This sounds very hacky to me, I have understood that you should never
> use stack with DMA.

You should never do that because some platforms do not support it, so no
driver should ever try to do that as they do not know what platform they
are running on.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
