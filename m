Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EABA22BBDBF
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 08:14:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19EE386FCA;
	Sat, 21 Nov 2020 07:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpIoGpRWndSU; Sat, 21 Nov 2020 07:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CECA86FAE;
	Sat, 21 Nov 2020 07:14:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B0841BF5A7
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 07:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5813B874C1
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 07:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r1h5RNWayXbG for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 07:14:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 189CA874BC
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 07:14:14 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEF732223F;
 Sat, 21 Nov 2020 07:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1605942853;
 bh=2gsmAi27bRo7R7CNFx36lA3IuPcYZAvhfGz15Jm323Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f2s5auFeKAMWUv/XsdCBy682+ZP5bC+6qoUtAuOQDHeD62cSLvx6qA37M6+DZ6KBu
 vyw8RWqe2apDYKuh92YnkSyEir+tEYPXE0EpSRTRScLGi/5WJHGaghfk97UJHcNOF+
 KeRq5aRPmDowz8To9DH5ocGSt5zndT5V6WglKW6o=
Date: Sat, 21 Nov 2020 08:14:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: add flag to clear buffer on txn complete
Message-ID: <X7i+QcE8hhY03FX1@kroah.com>
References: <20201120233743.3617529-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120233743.3617529-1-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, smoreland@google.com,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 20, 2020 at 03:37:43PM -0800, Todd Kjos wrote:
> Add a per-transaction flag to indicate that the buffer
> must be cleared when the transaction is complete to
> prevent copies of sensitive data from being preserved
> in memory.
> 
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

DOes this need to be backported to stable kernels as well?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
