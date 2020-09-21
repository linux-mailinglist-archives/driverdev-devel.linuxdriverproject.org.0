Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B27E271A4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 07:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 69D1E204F0;
	Mon, 21 Sep 2020 05:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJToPus3TE-r; Mon, 21 Sep 2020 05:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC679204DB;
	Mon, 21 Sep 2020 05:09:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1681BF4D5
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 05:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44DA8204DB
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 05:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuL883W19Stc for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 05:09:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 08CE120492
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 05:09:51 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9949920739;
 Mon, 21 Sep 2020 05:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600664991;
 bh=3mouzdzDe+zIdAUI84appaTKfzTrfev8XyD553QgtYI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U6T38ru6jDtUOT64Ei2bWqc+OG9tY4u0edA8H98XSkwdfR3Si8ghY1kGCpuVbS8Aj
 MwvpOfYSKcS8jBkUbQZO7xzbMxZZ+d1Uqk6JdctgtvJHAr8BG/8nSDgaFX8Wvsa14S
 wLnNhuwAF1Xibei7mqXYlvgx6CRA4N4N0hhnhfg4=
Date: Mon, 21 Sep 2020 07:09:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: James Browning <jamesbrowning137@gmail.com>
Subject: Re: [PATCH 2/2] drivers:staging:comedi:comedi.h Fixed typo in comment
Message-ID: <20200921050946.GB537189@kroah.com>
References: <20200921041452.7293-1-jamesbrowning137@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921041452.7293-1-jamesbrowning137@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 20, 2020 at 09:14:49PM -0700, James Browning wrote:
> Removed repeated word "in"
> 
> Signed-off-by: James Browning <jamesbrowning137@gmail.com>
> ---
>  drivers/staging/comedi/comedi.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You sent two different patches that did different things, yet had the
same exact subject line, which isn't ok.

Why not just merge them into the same patch?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
