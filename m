Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A96BDA9C00
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 09:38:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5795486B75;
	Thu,  5 Sep 2019 07:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2wpjHrzjDXO; Thu,  5 Sep 2019 07:38:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BC56869E4;
	Thu,  5 Sep 2019 07:38:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F85C1BF3D6
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:38:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8CA8288543
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OAmLI8cSZSkh for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 07:38:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1CF4E8853D
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 07:38:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E3002145D;
 Thu,  5 Sep 2019 07:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567669086;
 bh=ZjDzOuega+mZVAiWkRReiyj0ameJrbOP0VlkJ/bmbHo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O8EEpYh9e5eOQ0wS8ipE22a+dMMtSpWPNldVVR276PKiAfZtE5krHTBVib/he7UGR
 8ZB5MmdGAKuDwNjKsZarYVv30EwTDE1QIsooaPofhpz5+29BD40+6q7eNplCHDyRE+
 GUlYOJT4hPOJpZdl+vRomxQ2256a0wbzTp7JFs0o=
Date: Thu, 5 Sep 2019 09:38:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 2/2] staging: wilc1000: look for rtc_clk clock
Message-ID: <20190905073804.GA30881@kroah.com>
References: <1567603548-13355-1-git-send-email-eugen.hristev@microchip.com>
 <1567603548-13355-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567603548-13355-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 01:34:01PM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> If rtc_clk is provided from DT, use it and enable it.
> This is optional.
> The signal may be hardcoded and no need to be requested,
> but if DT provides it, use it.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Acked-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  drivers/staging/wilc1000/wilc_sdio.c          | 14 ++++++++++++++
>  drivers/staging/wilc1000/wilc_wfi_netdevice.h |  1 +
>  2 files changed, 15 insertions(+)

This patch does not apply to my tree at all.

Please redo it against staging-next and resend the series, with Ajay's
ack added to it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
