Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C29418F30A
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 11:42:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 25D3E228EA;
	Mon, 23 Mar 2020 10:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jO8h2xMrEJCo; Mon, 23 Mar 2020 10:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5BFA228D1;
	Mon, 23 Mar 2020 10:42:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D1A31BF375
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 10:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6DCC885F84
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 10:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBkcWHwpUQMU for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 10:42:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2E8585F3E
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 10:42:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 484212070A;
 Mon, 23 Mar 2020 10:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584960122;
 bh=Ccwab3iVrVXsTGRGRaE2cs1o1ArfyD+mxp9Qsa+VY0k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MrE/xAyjC7/YaiPjSDVJvmYE7KIRe6Hip0vPP7giCVScHHcINd/3e41LurE0vIqbk
 yGFfF5Q4/FC22DbxfDJN0zl9hMxcSIiVm9GZBhbpSU82uK/LpjvRvSQL7977vhUsud
 NeYZZt4jqxdpLSgipeVdyqe3jGFie7ksqHCs1kmk=
Date: Mon, 23 Mar 2020 11:42:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use DIV_ROUND_UP macro instead of
 specific code
Message-ID: <20200323104200.GA501377@kroah.com>
References: <20200322112342.9040-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322112342.9040-1-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 22, 2020 at 12:23:42PM +0100, Oscar Carter wrote:
> Use DIV_ROUND_UP macro instead of specific code with the same purpose.
> Also, remove the unused variables.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c | 21 ++++-----------------
>  1 file changed, 4 insertions(+), 17 deletions(-)

Please rebase this against my staging-next branch of my staging.git tree
and resend it as it does not apply to it at the moment at all.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
