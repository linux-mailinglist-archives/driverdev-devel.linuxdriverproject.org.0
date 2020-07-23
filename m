Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E317D22B4F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 19:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0907620791;
	Thu, 23 Jul 2020 17:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DfYuG-mZPHTg; Thu, 23 Jul 2020 17:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DA8A320431;
	Thu, 23 Jul 2020 17:34:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BE841BF861
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 17:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7910A21561
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 17:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VP1w1w892tdN for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 17:34:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 571832076E
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 17:34:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A64520714;
 Thu, 23 Jul 2020 17:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595525666;
 bh=Qhrjw7uyDWdXXIAvmKfEK6zrtiSur7oYHENRu1OnN3Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mPXjgtQfYvIUJ9CMdLnwxLE0QAOiL5hC7Q56P+XKldQdMheN6WLKo3IJtnaWlRm5h
 VrMruFbX9BCXuA9phurly9B34jULxl604wuZB13+rCleqogq1TvWwYw1Yb+dRr8Kr2
 vdIEEDAFwTgqFt3xMxpqtqyEZ9V2tKcGX5beBHsM=
Date: Thu, 23 Jul 2020 19:34:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH v2] staging: octeon: Add the license identifier
Message-ID: <20200723173429.GA2907237@kroah.com>
References: <20200723163150.GA10505@musamaanjum>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723163150.GA10505@musamaanjum>
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

On Thu, Jul 23, 2020 at 09:31:50PM +0500, Muhammad Usama Anjum wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Missing or malformed SPDX-License-Identifier tag
> 
> Add a the SPDX-License-Identifier tag on line 1
> 
> Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> ---
> Other files in this folder have GPL-2.0 license. So this file should
> have the same license which was missing before and checkpatch.pl was
> giving the warning.

Why is this information not up in the changelog area?

And what changeds from v1?  ALways put that below the --- line.

v3?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
