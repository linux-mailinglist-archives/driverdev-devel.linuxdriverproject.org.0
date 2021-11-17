Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4F74546C2
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Nov 2021 13:59:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD83E40915;
	Wed, 17 Nov 2021 12:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KooY5AdIDMlu; Wed, 17 Nov 2021 12:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 256B04049F;
	Wed, 17 Nov 2021 12:59:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED2861BF283
 for <devel@linuxdriverproject.org>; Wed, 17 Nov 2021 12:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5F3F400F7
 for <devel@linuxdriverproject.org>; Wed, 17 Nov 2021 12:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2pj7MZOkGoQ for <devel@linuxdriverproject.org>;
 Wed, 17 Nov 2021 12:58:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48F4B400D2
 for <devel@driverdev.osuosl.org>; Wed, 17 Nov 2021 12:58:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6136B613A7;
 Wed, 17 Nov 2021 12:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637153931;
 bh=LZi5NAWod/LifYIQNeWmuEN6jzrzatRpMWHmPT9ld6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kJmtAdhvpbiltKqPY+I4Jkh0QkR4/JJ0g1G/GaXjMid2YAWi5QvNCNUyVn310d5+N
 4TfGyuxU1wBsbZ4ya02TbrHtzHg2GrWOW8RVGb+n2KrSUFS8aDSLoSDEwJtusjlxnF
 gbGcQMcP8fYYsFS+rwcOVsR4cblFpQo/sBr6P74M=
Date: Wed, 17 Nov 2021 13:58:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v2] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <YZT8icKxE7YpYf/e@kroah.com>
References: <20211115233102.GA94584@bulldog>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115233102.GA94584@bulldog>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 16, 2021 at 12:31:02AM +0100, Alberto Merciai wrote:
> Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
> Indicator) into linux kernel coding style equivalent
> variable "current_rssi".
> 
> Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
> ---

Sent to the wrong mailing list, please use scripts/get_maintainer.pl
properly.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
