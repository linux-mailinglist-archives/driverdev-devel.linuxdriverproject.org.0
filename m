Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6A4432CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10AD7876D4;
	Thu, 13 Jun 2019 05:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c3SXSS0IkNuk; Thu, 13 Jun 2019 05:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9259876D1;
	Thu, 13 Jun 2019 05:41:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C96891BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C3765876C9
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p-WYzaJ0+o+1 for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:41:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0913586D6F
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:41:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 561782053B;
 Thu, 13 Jun 2019 05:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560404499;
 bh=8Xh4IPVPSoQJv7GWld73+9V0oaBZe8Mpmmz/mKLN+rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ByZS4yI0t6Lw+NdGjH9a07AeUUIjvk1cJGDzyfIrJViTGTIERIRZJL73c1qIokMUC
 kT69jwfWNhHdI09f8E0yIK0aUZ+KzXE4TbSXQvD9JCQDWMDp6umh59lH1N+nTQhdeL
 M/gOrFkfIXjo0IPpGalbyOsvg9YOy3Os1OrJnBOY=
Date: Thu, 13 Jun 2019 07:41:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@android.com>
Subject: Re: [PATCH] binder: fix possible UAF when freeing buffer
Message-ID: <20190613054136.GA19717@kroah.com>
References: <20190612202927.54518-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612202927.54518-1-tkjos@google.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, arve@android.com,
 maco@google.com, joel@joelfernandes.org, kernel-team@android.com,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 12, 2019 at 01:29:27PM -0700, Todd Kjos wrote:
> There is a race between the binder driver cleaning
> up a completed transaction via binder_free_transaction()
> and a user calling binder_ioctl(BC_FREE_BUFFER) to
> release a buffer. It doesn't matter which is first but
> they need to be protected against running concurrently
> which can result in a UAF.
> 
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---
>  drivers/android/binder.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)

Does this also need to go to the stable kernels?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
