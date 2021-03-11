Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AD8336D22
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 08:34:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 135366001B;
	Thu, 11 Mar 2021 07:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id byeQsWNjQZOJ; Thu, 11 Mar 2021 07:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64C4B605C8;
	Thu, 11 Mar 2021 07:33:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1ABEE1BF3CD
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 07:33:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 088BC400E2
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 07:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MXZx1azy5sFO for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 07:33:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 662C44301C
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 07:33:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05DDA64FA6;
 Thu, 11 Mar 2021 07:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615448025;
 bh=7dTehs9P2eSp8sPbhZSelcrxKBy+711FsOPQ49ldA2M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oQrojNVlTFN7S2w7V6r70oZ6JR7PULc6szKdgpvs5dN2lZT1ILTgl2y4wcW2Eiw5z
 T+OoyGSB4CaFAkvbVt9MfHkp/VVSEYzfSsF51gsA4ffmBakBn2BJgewmLidaee8pul
 j8C3XGKtcv2fvkenUfOl8nPfLi1clTc7ePLBcBaU=
Date: Thu, 11 Mar 2021 08:33:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1 1/3] binder: BINDER_FREEZE ioctl
Message-ID: <YEnH1qd527g/neY4@kroah.com>
References: <20210310225251.2577580-1-dualli@chromium.org>
 <20210310225251.2577580-2-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310225251.2577580-2-dualli@chromium.org>
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 maco@google.com, hridya@google.com, surenb@google.com, christian@brauner.io,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 10, 2021 at 02:52:49PM -0800, Li Li wrote:
>  	if (target_proc) {
>  		binder_inner_proc_lock(target_proc);
> +		target_proc->outstanding_txns--;
> +		WARN_ON(target_proc->outstanding_txns < 0);

WARN_* is a huge crutch, please just handle stuff like this properly and
if you really need to, warn userspace (but what can they do about it?)

You also just rebooted all systems that have panic-on-warn set, so if
this can be triggered by userspace, you caused a DoS of things :(

So please remove all of the WARN_ON() you add in this patch series to
properly handle the error conditions and deal with them correctly.

And if these were here just for debugging, hopefully the code works
properly now and you do not need debugging anymore so they can all just
be dropped.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
