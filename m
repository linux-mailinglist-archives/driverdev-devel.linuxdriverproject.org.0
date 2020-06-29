Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D3620CECF
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 15:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C3E488888;
	Mon, 29 Jun 2020 13:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mlnjYfUQI9q8; Mon, 29 Jun 2020 13:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FF6988495;
	Mon, 29 Jun 2020 13:26:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC6891BF385
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 13:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6C4C884D9
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 13:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8tH92CUx2m-2 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 13:26:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81CCA88495
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 13:26:15 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32DDC23D6A;
 Mon, 29 Jun 2020 13:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593437175;
 bh=hOJIPbJXPvorQtrhgyqOIr37k404XP7JJGNJCE8s+Y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MAX6lR6wO0zARsIgVfVNexIL/S+5tt+gFwta5XG+JfKdCl2/tbJ4ltJxUO2OPNrKa
 GixHl/5xiVLA0/rMJNNFIA3gXA3qacdPqgt4MG48tHiIWMumQBXzIHFPtRCObTrojs
 IE9fAP73j8zkayeTR3FtmWStj0DR0SLZ9TEq4/3I=
Received: by pali.im (Postfix)
 id EE3E381F; Mon, 29 Jun 2020 15:26:12 +0200 (CEST)
Date: Mon, 29 Jun 2020 15:26:12 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
Message-ID: <20200629132612.nl6rfpihzlii6ilh@pali>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623110000.31559-1-ajay.kathat@microchip.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 Sripad.Balwadgi@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 23 June 2020 11:00:04 Ajay.Kathat@microchip.com wrote:
> This patch series is to review and move wilc1000 driver out of staging.
> Most of the review comments received in [1] & [2] are addressed in the
> latest code.
> Please review and provide your inputs.

Hello Ajay! Could you please move SDIO vendor/device ID definitions from
driver code wilc1000/sdio.c to common file include/linux/mmc/sdio_ids.h?

Similar cleanup was recently finished for all existing non-staging drivers:
https://lore.kernel.org/linux-mmc/20200522144412.19712-1-pali@kernel.org/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
