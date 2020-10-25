Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C13442980F8
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 10:23:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7957786D79;
	Sun, 25 Oct 2020 09:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3aZkfpKf-Nce; Sun, 25 Oct 2020 09:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87EE286B6D;
	Sun, 25 Oct 2020 09:23:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D38E1BF322
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 09:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0756E27400
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 09:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMiLZAUIT4gn for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 09:22:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 264042733D
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 09:22:59 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1F3622259;
 Sun, 25 Oct 2020 09:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603617778;
 bh=zyob1uJJFMg/3l5Ccy8tiIhLwAdla2K9dlocrrPKKiY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mDePK54IjYOE333bt19fKiguWbcXk7ad6uQrdwVP8DFnR1P87lUWSZzYTuP+1lHAi
 srQVcIJiUxkBBSYl7Uf6MlvPFfxtsQG3BtIQNNNxMXE8L+PXl9jhNDA9zPtvS/Rv3S
 JBNo/Ep57BqFX9PJJ+a74pqG2cQFfwEdSdO+AXog=
Date: Sun, 25 Oct 2020 10:22:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH v2 net] staging: octeon: Drop on uncorrectable alignment
 or FCS error
Message-ID: <20201025092255.GA113243@kroah.com>
References: <20201016101858.11374-1-alexander.sverdlin@nokia.com>
 <20201016101858.11374-2-alexander.sverdlin@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016101858.11374-2-alexander.sverdlin@nokia.com>
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
 "David S. Miller" <davem@davemloft.net>, Ralf Baechle <ralf@linux-mips.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 16, 2020 at 12:18:58PM +0200, Alexander A Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> 
> Currently in case of alignment or FCS error if the packet cannot be
> corrected it's still not dropped. Report the error properly and drop the
> packet while making the code around a little bit more readable.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> Fixes: 80ff0fd3ab ("Staging: Add octeon-ethernet driver files.")
> 
> Change-Id: Ie1fadcc57cb5e221cf3e83c169b53a5533b8edff

Please stop using gerrit for patches destined for upstream development
:(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
