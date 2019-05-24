Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC39129E11
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 20:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8744888132;
	Fri, 24 May 2019 18:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3JqeDS7mnJy; Fri, 24 May 2019 18:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5F708810C;
	Fri, 24 May 2019 18:33:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87D031BF429
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 18:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8414930F60
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 18:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNempOA7+dQo for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 18:33:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BD98C2206D
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 18:33:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D3762175B;
 Fri, 24 May 2019 18:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558722786;
 bh=BjSeJEam8WdVHSbuAW5UncP53kFfQn64ZaiSFWkxMVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dFE6c8Jbfb47ONP4xF9eloB95ixXYggZq3iasmWqxr2nePiNvoHr6/tAxJp0rAmIK
 wu1dgoX49Xm8SwR3B5+jbmQyOnWt/RZlNMz4pIr0fXlfzOIlrx2kOBdi7LgyZctrTT
 R6uHW1O404va+qULBPF+HxYSxOZUZgvzNRPNaPj0=
Date: Fri, 24 May 2019 20:33:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH v2 2/2] MAINTAINERS: Add entry for anybuss drivers
Message-ID: <20190524183303.GA3362@kroah.com>
References: <20190523203000.32306-1-TheSven73@gmail.com>
 <20190523203000.32306-2-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523203000.32306-2-TheSven73@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 04:30:00PM -0400, Sven Van Asbroeck wrote:
> Add myself as the maintainer of the anybuss bus driver, and its client
> drivers.
> 
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  MAINTAINERS | 5 +++++
>  1 file changed, 5 insertions(+)

What changed from v1?

Always list that below the --- line.

v3 please?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
