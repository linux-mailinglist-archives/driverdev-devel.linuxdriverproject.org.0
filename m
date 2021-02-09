Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B41331491F
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 07:54:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F33A861F0;
	Tue,  9 Feb 2021 06:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rq_ueNWv8Ujo; Tue,  9 Feb 2021 06:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19EAB84C13;
	Tue,  9 Feb 2021 06:54:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8381BF29D
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 06:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01BF9868F8
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 06:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjXaFUi4iSQR for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 06:54:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F582868EB
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 06:54:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DA9364E3B;
 Tue,  9 Feb 2021 06:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612853642;
 bh=BNSYLp3ioBVGsc8rUJwVikVM+1rP8S7o+9FcABtHl2w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nup6oGAvTkfDbr+wl9ac1EQSI/Xod0gRQ9J+WDu3IHPbRayCVosMvhZ2eZ33BbmFy
 uxBOIyi/LovVazf2H7RR7ljszFpTb8ZNczQqwR5wLlfht3SAKB7WQIIg4HA7R5YDIW
 2BTh0WzoJPHDdb+u/kCNV0NrG35gQ6yk41dWdspU=
Date: Tue, 9 Feb 2021 07:53:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mukul Mehar <mukulmehar02@gmail.com>
Subject: Re: [PATCH]: drivers: staging: most: Fixed styling issue.
Message-ID: <YCIxhTu2HHs2KuD7@kroah.com>
References: <20210209062311.GA10016@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209062311.GA10016@gmail.com>
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

On Tue, Feb 09, 2021 at 11:53:11AM +0530, Mukul Mehar wrote:

> >From 29bcaf0066003983da29b1e026b985c0727b091a Mon Sep 17 00:00:00 2001
> From: Mukul Mehar <mukulmehar02@gmail.com>
> Date: Mon, 8 Feb 2021 01:03:06 +0530
> Subject: [PATCH] Drivers: staging: most: sound: Fixed style issue.

Why is this still an attached file?  These lines should not show up in
the body of the email.  Look at the thousands of examples on the mailing
list as what needs to be done here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
