Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2367332716
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 14:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2767383A55;
	Tue,  9 Mar 2021 13:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f3g3dfazh-09; Tue,  9 Mar 2021 13:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C2B883D6C;
	Tue,  9 Mar 2021 13:27:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36E2B1BF2F0
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 266024ABAD
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q0to_EPiQPhV for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 13:26:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C8504AAEE
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 13:26:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 310F764EBB;
 Tue,  9 Mar 2021 13:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615296417;
 bh=K27e2MuTBLShtG4BbakNEwRL0Q+kaRxqlgtHK8Aq1kM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1E6W7dqhM1v4Jip9EqQPHqw3PGLUEmpEZcOujfJewcB6I0LLI4g2JH1NURvz8G6U9
 uebFRA3OGMWrKsacPjhejHI99M6ErhJKWbYdLCJ8OcQr+iH8aP/3kGvIM4poaKWGFt
 Act9etKvQXInhpF2z+/H7tJfdQtxjWZbs4cvfheg=
Date: Tue, 9 Mar 2021 14:26:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: gasket: Fix sizeof() in gasket_handle_ioctl()
Message-ID: <YEd3n/vbIzRr5vnA@kroah.com>
References: <YAroue0qiuf35rkS@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YAroue0qiuf35rkS@mwanda>
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
Cc: devel@driverdev.osuosl.org, John Joseph <jnjoseph@google.com>,
 kernel-janitors@vger.kernel.org, Simon Que <sque@chromium.org>,
 Richard Yeh <rcy@google.com>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 22, 2021 at 06:01:13PM +0300, Dan Carpenter wrote:
> The "gasket_dev->num_page_tables" variable is an int but this is copying
> sizeof(u64).  On 32 bit systems this would end up disclosing a kernel
> pointer to user space, but on 64 bit it copies zeroes from a struct
> hole.
> 
> Fixes: 9a69f5087ccc ("drivers/staging: Gasket driver framework + Apex driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> This is an API change.  Please review this carefully!  Another potential
> fix would be to make ->num_page_tables a long instead of an int.
> 
>  drivers/staging/gasket/gasket_ioctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Looks like this driver is dead, with no response from anyone from
Google.

Should I just delete it?  The goal of using normal apis and getting this
out of staging seems to have totally died, so it shouldn't even still be
living in the kernel tree.  Even if having it here actually finds
security issues that the authors missed like this :(

So, any objection to me deleting it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
