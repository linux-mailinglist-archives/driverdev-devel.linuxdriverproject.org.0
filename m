Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E2921D75E
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2FA788CB9;
	Mon, 13 Jul 2020 13:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZWHfIap++H5; Mon, 13 Jul 2020 13:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA61A88CB4;
	Mon, 13 Jul 2020 13:38:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5E61BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 96564893A8
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZf7bDbwpn+w for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:38:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D3220893A3
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:38:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15EF82072D;
 Mon, 13 Jul 2020 13:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594647522;
 bh=wyDj5szV8OmNtohY+xQpY+G0Z1pE2OR4OnJcyQ88UEY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ob6zrZtahjAV8QMihS44IWx0ZFiu/QvHuO7fjyFxcLvdeXk+Q82PcWJwKKXo7+L0J
 pUiS/BngnJLf5fidss3pOB+WDKwTcQknIAia8e2cjSDbAam08NwhEFRHP1g8rNSpp/
 AQeFS0mmiGUylPn4dd6IkGVeTX6UfqqabxrERrkY=
Date: Mon, 13 Jul 2020 15:38:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH 4/6] staging: qlge: qlge_main: Simplify while statements.
Message-ID: <20200713133842.GA3138742@kroah.com>
References: <cover.1594642213.git.usuraj35@gmail.com>
 <1bb472c5595d832221fd142dddb68907feeeecbe.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bb472c5595d832221fd142dddb68907feeeecbe.1594642213.git.usuraj35@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 13, 2020 at 05:50:14PM +0530, Suraj Upadhyay wrote:
> Simplify while loops into more readable and simple for loops.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 49 ++++++++++++++------------------
>  1 file changed, 22 insertions(+), 27 deletions(-)

This patch did not apply for some odd reason :(

Please rebase and resend

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
