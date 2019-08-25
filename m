Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B99C28F
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 10:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 291BE85E95;
	Sun, 25 Aug 2019 08:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPtg1YEUzbB9; Sun, 25 Aug 2019 08:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72F6185A9E;
	Sun, 25 Aug 2019 08:28:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E20B1BF573
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 08:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B87687DD4
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 08:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5PBtrb+55Eg for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 08:28:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF7D787B25
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 08:28:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3361720870;
 Sun, 25 Aug 2019 08:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566721705;
 bh=LyyuVacUgp0QI5+McQ246IhEd+pkcxaG0db7hV8Z3xk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CCw9OWnIGjaeTxR+9Xx5LnDUbjfhCIuB5F5w9FFfzf7SuOwbxMJ+4cVtc8wI7S20T
 SE5DNlPlCPNTNlIWUq2enwtwY657PeQaQ3WdZmv8nS3QGrG3LfvDIjqra5BizdLoT0
 nXqLqWTXPCfJDdbzEu081JoguF9/gZIHRaiJDkrU=
Date: Sun, 25 Aug 2019 10:28:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stephen Brennan <stephen@brennan.io>
Subject: Re: [PATCH] staging: rtl8192u: Fix indentation
Message-ID: <20190825082823.GA4301@kroah.com>
References: <20190822175228.3419-1-stephen@brennan.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822175228.3419-1-stephen@brennan.io>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Thu, Aug 22, 2019 at 10:52:28AM -0700, Stephen Brennan wrote:
> Checkpatch reports WARNING:SUSPECT_CODE_INDENT in several places. Fix
> this by aligning code properly with tabs.
> 
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> ---
>  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |   2 +-
>  .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 112 +++++++++---------
>  .../staging/rtl8192u/ieee80211/ieee80211_tx.c |  18 +--
>  .../staging/rtl8192u/ieee80211/ieee80211_wx.c |   8 +-
>  drivers/staging/rtl8192u/r819xU_firmware.c    |   2 +-
>  5 files changed, 71 insertions(+), 71 deletions(-)

This patch does not apply to my tree.  Please redo it against the latest
staging-next branch of the staging.git tree and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
