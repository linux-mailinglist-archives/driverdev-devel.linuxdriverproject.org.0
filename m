Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6681C3BC7
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 15:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBA82230A4;
	Mon,  4 May 2020 13:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iB25ZqzGeI9J; Mon,  4 May 2020 13:54:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8792520430;
	Mon,  4 May 2020 13:54:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1618D1BF41E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0BEED88360
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kf9SOTFAuT5X
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:54:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E5D28835D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:54:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB90020721;
 Mon,  4 May 2020 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588600474;
 bh=OuQ+FhdbBHGH1XqA01f+DSnZVOSwYx7Alk6BuUY6yLU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GraQHCrLa5gWw9bkjR/q4IlRQHWUFmEjFlIz7wYtsCU8WBQnBv5qgpCHSf3r7Qwjk
 +qs/bj0yiSn0kmM/LCAcxYr4xEPKqEsgcEVeLE08Kll2b+yCAJHzIyt6XqgyJki0kk
 lzdZy22WWmcw7oYzB2hffoCzfj5/ZZxXfjYjZ5PQ=
Date: Mon, 4 May 2020 15:54:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Message-ID: <20200504135431.GA2311301@kroah.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> This patch fixes error handling on function parameters.

What does that mean?  If I don't understand it, I think it needs to be
made a lot more explicit as to why you are making these changes :) 

> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>

Any "Fixes:" tag for this?

SHould it go to stable if it really resolves issues?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
