Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1B121C34
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 19:08:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B417086B62;
	Fri, 17 May 2019 17:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CD5GIlrgphe2; Fri, 17 May 2019 17:08:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37EDD86B65;
	Fri, 17 May 2019 17:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10A691BF397
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0DC4886AF8
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPnjpGxRiuWr for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 17:08:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ABB9486AD8
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 17:08:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09AD220848;
 Fri, 17 May 2019 17:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558112883;
 bh=GTG+1jP/TVoKJCDtPyVDCCcYy1RrBeov1C+3tNwcaUI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZS8Xf9xuuvN2a09MEk01c+N1MzAfzmhC181+vlqrCItANmRCv8B7tblhsFKp+88sw
 fm5TuzNp6wJVxdtmVmjQxQPhwWNXygJAmAed20s9ZyeWoJvDC64qwS+cEhdqoGA0sm
 Kvfe95tKWFerkxJkEDbyjycAbydpwFw1rufLq8j4=
Date: Fri, 17 May 2019 19:08:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Oscar Gomez Fuente <oscargomezf@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
Message-ID: <20190517170801.GA20089@kroah.com>
References: <1558111991-30751-1-git-send-email-oscargomezf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558111991-30751-1-git-send-email-oscargomezf@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, thesven73@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 17, 2019 at 06:53:11PM +0200, Oscar Gomez Fuente wrote:
> Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>
> ---
>  drivers/staging/fieldbus/dev_core.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

I don't take patches without any changelog text, sorry.

Please fix and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
