Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD045332712
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 14:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DAEA83D53;
	Tue,  9 Mar 2021 13:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3y9X_bakkGxI; Tue,  9 Mar 2021 13:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E04B4833CA;
	Tue,  9 Mar 2021 13:25:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A099D1BF2F0
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 981846F54A
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XqIzNlkbKpjl for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 13:25:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B59AB6F532
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 13:25:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9762964EBB;
 Tue,  9 Mar 2021 13:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615296338;
 bh=NyXOl2NuApJTT+C5q0M/pah7sdr6CZ1hEWNqGRvVsXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x/lthFm2Dt9Zrta0Jgs5v5vVC6dPjamv02TdG4/tBc/b5MAzE144yN9Kg5HnsbfkF
 eO1WtjEsGKFR/mD6co3krTXvGKHEqUvEYjSb74MOIo0cCsK4d84lqx46jiZdAuk1Ce
 cn+AcSAwNYEez3cJDABUltPwE1hwR7mwnWQcq1RE=
Date: Tue, 9 Mar 2021 14:25:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Selvakumar Elangovan <selvakumar16197@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: fixed whitespace coding style issue
Message-ID: <YEd3T9D3kMWTU+Pe@kroah.com>
References: <20210309125445.15167-1-selvakumar16197@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309125445.15167-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 09, 2021 at 06:24:45PM +0530, Selvakumar Elangovan wrote:
> Removed additional whitspaces and added space around the binary operator in the rtl8712_xmit.h file

Please wrap your changelog at 72 columns.

And you are doing 2 different things in this patch, please only do one
"logical" thing.

And finally, you sent 2 copies of this patch, I don't know which to
apply, so I'll drop both and wait for a v2.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
