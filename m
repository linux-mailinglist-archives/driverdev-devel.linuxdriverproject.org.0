Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76666320B3B
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8722870DC;
	Sun, 21 Feb 2021 15:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4GRmeGLwkbg; Sun, 21 Feb 2021 15:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 746D7870BF;
	Sun, 21 Feb 2021 15:04:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 713441BF95A
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6EB8B870C6
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zD7Nh2oJ+H1I for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 040CA870BF
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:04:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 62B1364EDE;
 Sun, 21 Feb 2021 15:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613919850;
 bh=HdV1Ye88NmtsAD7PKJ4XCcCHcM93BPfK8ueC9ThbLxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oQJtaHhTarwYJu9l9Y6+m6gnIilN466Pk1A/qAXZQVYHMlcFrgb5cpNP2D76KUYqJ
 Li7w5biuk9v5VJFV+dhEWD3oMaCzlYidTXqpnxSqG99f4naTITTpd/tWQ6OimV4czy
 n9NNrzT9hY3sTTxe7lYBAxUMLhCvlY7nWA1FNKjA=
Date: Sun, 21 Feb 2021 16:04:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shreesh Adiga <16567adigashreesh@gmail.com>
Subject: Re: [PATCH] staging: octeon: refactor interface check logic in
 ethernet.c
Message-ID: <YDJ2Z/vVKuDC+3SD@kroah.com>
References: <20210221145505.2869928-1-16567adigashreesh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221145505.2869928-1-16567adigashreesh@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 08:25:05PM +0530, Shreesh Adiga wrote:
> The check for interface is duplicated in 3 places and has been refactored
> into a function. Also the if condition was wrapping the whole body in all
> three places, so it has been changed to return if the condition is false
> to reduce the indentation levels.

When you have an "also" in a changelog text, that's a huge hint this
needs to be broken up into multiple patches.

Please do that here and send a patch series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
