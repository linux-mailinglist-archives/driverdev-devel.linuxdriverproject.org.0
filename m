Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4402433D43C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 13:51:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75BA16F60D;
	Tue, 16 Mar 2021 12:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkeIh4V7W7BP; Tue, 16 Mar 2021 12:51:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD92D60675;
	Tue, 16 Mar 2021 12:51:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 967381BF868
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 12:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8566A60675
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 12:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocFKo9CdYbjV for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 12:51:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFB2360669
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 12:51:24 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0F95365036;
 Tue, 16 Mar 2021 12:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615899084;
 bh=gmxqoMt9J/BIXwHRDd8I4NBJ+PNnpfBABT0cNtOxOts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NXl07EQioB4L+TaHyK4BhsKl3P2qBs5amJmsJyvwrw8RfOFJ38O9A7BCdMHVQVYTH
 5Vx0o8MZ6wjNmsxog7kMUzhbK73KdxkmvfVo3TwK9k2AlRb4NS8rdmLQlEDVVGKJhw
 IHmo4I9mA89ClYgfpCmwh78V/oHkv51iiiEs9qdc=
Date: Tue, 16 Mar 2021 12:43:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 00/15] staging: rtl8723bs: remove unused code blocks
Message-ID: <YFCZ04cYWwDUuwsi@kroah.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 11:13:49AM +0100, Fabio Aiuto wrote:
> Remove unused code blocks as required in TODO file
> 
> Fabio Aiuto (15):
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_AUTO_AP_MODE
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_HW_PWRP_DETECTION
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_QOS_OPTIMIZATION
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_AP_WOWLAN
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_PM
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_SIGNAL_DISPLAY_DBM
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_BACKGROUND_NOISE_MONITOR
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_SKIP_SIGNAL_SCALE_MAPPING
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_GPIO_API
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_EXT_CLK
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_CHECK_BT_HANG
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_SDIO_TX_TASKLET
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_SW_CHANNEL_PLAN
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_C2H_PACKET_EN
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_ODM_ADAPTIVITY

Not all of these would apply, please rebase and resend the remaining
ones.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
