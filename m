Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 007BA1BBFFB
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 15:40:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9578686329;
	Tue, 28 Apr 2020 13:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0NNpNx7osR2; Tue, 28 Apr 2020 13:40:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22E7B862CA;
	Tue, 28 Apr 2020 13:40:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 432131BF401
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 13:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 074DC22728
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 13:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vzp7EpBJ+7KT for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 13:40:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5979E226C2
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 13:40:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC285206D7;
 Tue, 28 Apr 2020 13:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588081213;
 bh=z6FwCpZc4bewQTILO5ed54oDlhcVRcQNbY1dTaBbd6I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cVkICW4Z7Gqg9PFeTpJx749wpYdzY1xShHb2yMmN+xaT45MjnilFD+afecPd9dSto
 sCzuyHDpAkyNOtqJYSPbwgTSTHwvuxcIZn0gS4NvHa860NVVh5lfoqvwLdsHACsIrT
 W/NEXMgeOvEPPtZv63J1pgPB/026WMACNMYwLFKI=
Date: Tue, 28 Apr 2020 15:40:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma.c: Fix Missing a blank
 line after declarations
Message-ID: <20200428134010.GA1374852@kroah.com>
References: <20200426161319.23941-1-john.oldman@polehill.co.uk>
 <20200426170719.GA2138855@kroah.com>
 <CA+JojbpBAkBHqZ3RUXjf-u-j9DUoS_m5oYwHQ=AWWp7qWQ8G-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+JojbpBAkBHqZ3RUXjf-u-j9DUoS_m5oYwHQ=AWWp7qWQ8G-g@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 28, 2020 at 02:21:25PM +0100, John Oldman wrote:
> I was not so happy about this one, even though I went and committed it.
> 
> Without the blank line checkpatch reports:
> 
> WARNING: Missing a blank line after declarations
> #160: FILE: drivers/staging/mt7621-dma/mtk-hsdma.c:160:
> + struct tasklet_struct task;
> + volatile unsigned long chan_issued;
> 
> So I dumly inserted a blank line to silence checkpatch.

As checkpatch is just a simple script, it is not always right, don't
blindly follow it.

> In hindsight maybe a false positive, blank lines in a struct might not be
> helpful.

It can be, but not here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
