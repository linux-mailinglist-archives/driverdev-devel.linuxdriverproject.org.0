Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FA51DE341
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 11:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C1A4259FF;
	Fri, 22 May 2020 09:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2BbzETs7kWdr; Fri, 22 May 2020 09:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEEED20458;
	Fri, 22 May 2020 09:37:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 817A11BF370
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B8C48788F
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCn33E48dqjb for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 09:37:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5009C8788E
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 09:37:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7753206DD;
 Fri, 22 May 2020 09:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590140262;
 bh=35cJRmTh058RiER0D+CYZkhMXu//HtQ3orgCY5xtYP8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZcfJm0kE2vSf7EEvq3kgSsrOTYMGhxJC4lfhzQfB4x3kuCS0sitncoxxiZRJyNtQT
 DhhU1IdrLLNy+OaJN6HHOBI0A/swZ5e9WDAerOZoaGxPkYeF1bZQ2gbeRcJos11IQ+
 1SORWP5ncr9j4Sf4ubcCcFpZoDe6Ury/yb8kpPHs=
Date: Fri, 22 May 2020 11:37:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: MugilRaj <dmugil2000@gmail.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522093738.GA1231689@kroah.com>
References: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 22, 2020 at 02:46:28PM +0530, MugilRaj wrote:
> fix checkpatch.pl warning, which is Use of volatile is usually wrong: see
> Documentation/process/volatile-considered-harmful.rst
> Signed-off-by: MugilRaj <dmugil2000@gmail.com>

As Samuel said, you can't "just remove this", otherwise it would have
been done a long time ago, don't you think?

But for your next patch, you need to have a blank line before the
signed-off-by: line in order for it to be in a format the patch could be
merged in.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
