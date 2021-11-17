Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 518E64546C0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Nov 2021 13:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6306640211;
	Wed, 17 Nov 2021 12:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qSlepZcliVIC; Wed, 17 Nov 2021 12:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF53F4049F;
	Wed, 17 Nov 2021 12:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 234B71BF283
 for <devel@linuxdriverproject.org>; Wed, 17 Nov 2021 12:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 123E760647
 for <devel@linuxdriverproject.org>; Wed, 17 Nov 2021 12:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VmIDkwjaYSI9 for <devel@linuxdriverproject.org>;
 Wed, 17 Nov 2021 12:58:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 231CA60636
 for <devel@driverdev.osuosl.org>; Wed, 17 Nov 2021 12:58:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04DA163236;
 Wed, 17 Nov 2021 12:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637153893;
 bh=f3jQncDFPhBcMwfDCqxv/iJk088YIDPlBfWcvT7y0II=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LQgkurASHyw9B2yZ2SZ8GTna3AwKF/d1GxyBOsMI4aDQJWiAxyE7YlYnEjKNp1BHQ
 os+d/qW8Sn8hdFOmfZy6KN2PNE5g0Iti+bWP3FJN1vK+Ib35hNUkMTeXmLN8boQM9+
 iWlSgP4qJaaYJ9b8V85IZ25c2YXDI4m7BwxHPA6o=
Date: Wed, 17 Nov 2021 13:58:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v4] staging: vt6655: fix camelcase in wCurrentRate
Message-ID: <YZT8Yrk4f2gMhWTs@kroah.com>
References: <20211115140856.GA4220@alb3rt0-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115140856.GA4220@alb3rt0-VirtualBox>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 15, 2021 at 03:08:56PM +0100, Alberto Merciai wrote:
> Replace camelcase word variable "wCurrentRate" into linux kernel coding
> style equivalent "current_rate".
> 
> Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>

Does not apply to my tree.  Please rebase against the staging-next
branch and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
