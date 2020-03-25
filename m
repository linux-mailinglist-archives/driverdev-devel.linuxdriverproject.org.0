Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 769A8192755
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 12:38:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C891A88000;
	Wed, 25 Mar 2020 11:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dFw1IZ3IQQBe; Wed, 25 Mar 2020 11:38:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C46C8880A4;
	Wed, 25 Mar 2020 11:38:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 247C11BF5DC
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 11:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 206C687E72
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 11:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJa8oaQ1scu7 for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 11:38:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A3E49879DB
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 11:38:00 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.72,304,1580770800"; d="scan'208";a="343676712"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 12:37:57 +0100
Date: Wed, 25 Mar 2020 12:37:56 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: kpc2000: Removing a blank
 line
In-Reply-To: <20200325095407.GA3788@simran-Inspiron-5558>
Message-ID: <alpine.DEB.2.21.2003251234560.2444@hadrien>
References: <20200325095407.GA3788@simran-Inspiron-5558>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 25 Mar 2020, Simran Singhal wrote:

> This patch fixes the checkpatch warning by removing a blank
> line.
> CHECK: Please don't use multiple blank lines

The subject line and the log message should be written in the imperative.
So that would be Remove, rather than Removing for the subject line.

The log message should first say what you did to fix the problem and why.
How the problem was found can come afterwards.  So you should not start
with "This patch fixes the checkpatch warning by".  "This patch" is not
useful, because it is obvious that it is a patch, based on the subject
line.  "fixes" does not given any information about what is done or why.
"the checkpatch warning" is useful, but it's not what one wants to see
first.

julia

>
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
> Changes in v2:
>   - Make the subject and commit message correct by mentioning that
>     this patch specifically removes a blank line.
>
>  drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
> index cb815c30faa4..f1fc91b4c704 100644
> --- a/drivers/staging/kpc2000/kpc2000/pcie.h
> +++ b/drivers/staging/kpc2000/kpc2000/pcie.h
> @@ -6,7 +6,6 @@
>  #include "../kpc.h"
>  #include "dma_common_defs.h"
>
> -
>  /*      System Register Map (BAR 1, Start Addr 0)
>   *
>   *  BAR Size:
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325095407.GA3788%40simran-Inspiron-5558.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
