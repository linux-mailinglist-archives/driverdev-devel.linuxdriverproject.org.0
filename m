Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D461531E6B3
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6855084F2E;
	Thu, 18 Feb 2021 07:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcF8bcGYEaEw; Thu, 18 Feb 2021 07:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E358B860C8;
	Thu, 18 Feb 2021 07:10:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED1921BF32C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E73BD864F6
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZjLSdjMyhtHH for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 07:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B000863D5
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 07:10:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBC7164D9F;
 Thu, 18 Feb 2021 07:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613632232;
 bh=V0ObLKL8xMIPQWZ+Z7mEwookFjTJoIGtHvN+xm7+Rwk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VCWvovz1y5axANTN4LfJQ8h4mwNxCRNI2xggDWg3Aey16+TaiWX7tCnMcYQfKvN/o
 HfqLvm3frRgElCkITrRVi/1LkZrwaAWW2nOXPHjW1IZ7Hp0G36NuA86sZg9P9CtqKB
 87JPZv3o63E7vCx0wyGKHDmx3bYS9yS8s7LI2JIk=
Date: Thu, 18 Feb 2021 08:10:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Atul Gopinathan <atulgopinathan@gmail.com>
Subject: Re: [PATCH] staging: comedi: cast to (void __user *)
Message-ID: <YC4S5Pxw341zw9DL@kroah.com>
References: <20210218062839.32650-1-atulgopinathan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218062839.32650-1-atulgopinathan@gmail.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 11:58:40AM +0530, Atul Gopinathan wrote:
> Resolve the following sparse warning:
> drivers/staging//comedi/comedi_fops.c:2983:41: warning: incorrect type in argument 1 (different address spaces)
> drivers/staging//comedi/comedi_fops.c:2983:41:    expected void [noderef] <asn:1> *uptr
> drivers/staging//comedi/comedi_fops.c:2983:41:    got unsigned int *chanlist
> 
> cmd->chanlist is of type (unsigned int *) as defined in
> "struct comedi_cmd" in file drivers/staging/comedi/comedi.h
> 
> The function "ptr_to_compat()" expects argument of type
> (void __user *) as defined in include/linux/compat.h
> 
> Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Is this different from your previous patch:
	https://lore.kernel.org/r/20210217165907.9777-1-atulgopinathan@gmail.com

if so, you might need a better subject line here, and for that one, as
they look alike at a quick glance.

Which one goes first?

Can you resend both of these as a patch series with better subjects as a
v2 patch set?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
