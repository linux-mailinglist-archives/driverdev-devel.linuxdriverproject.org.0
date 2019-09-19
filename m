Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F169B7FD3
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 19:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 31553220C1;
	Thu, 19 Sep 2019 17:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AX8-SvtsQrwW; Thu, 19 Sep 2019 17:17:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33DAA2042D;
	Thu, 19 Sep 2019 17:17:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBFD51BF359
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 17:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C862485FB6
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 17:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7_8tbMLlDTIt for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 17:17:47 +0000 (UTC)
X-Greylist: delayed 00:43:11 by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E8B785F9A
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 17:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zk34/WaepEZ6aVZJpiWjUS8UF7iUIRACXnV7zV0EX8U=; b=hwQPpg2MxAEK2mGXABpo2ESLzO
 SpXQrfoXC3ABRO1fNZowoBlu28Gf6eyfYSiciZS6nDtdLwjh1wUdRMuxSwHVLlK/AZ27MN96GGHmA
 8kttrhaKx2z4ENgRhGdAGKkdzaguSPi9+iX2Y9UmHHrJVKMKtVucLIwKNyg/2Wq5dYIA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1iAzO1-0007gl-It; Thu, 19 Sep 2019 18:34:29 +0200
Date: Thu, 19 Sep 2019 18:34:29 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 02/20] staging: wfx: add support for I/O access
Message-ID: <20190919163429.GB27277@lunn.ch>
References: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
 <20190919105153.15285-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919105153.15285-3-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 10:52:35AM +0000, Jerome Pouiller wrote:
> +static int wfx_sdio_copy_from_io(void *priv, unsigned int reg_id,
> +				 void *dst, size_t count)
> +{
> +	struct wfx_sdio_priv *bus = priv;
> +	unsigned int sdio_addr = reg_id << 2;
> +	int ret;
> +
> +	BUG_ON(reg_id > 7);

Hi Jerome

BUG_ON should only be used when the system is corrupted, and there is
no alternative than to stop the machine, so it does not further
corrupt itself. Accessing a register which does not exist is not a
reason the kill the machine. A WARN() and a return of -EINVAL would be
better.

	Andrew
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
