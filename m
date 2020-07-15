Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA21220605
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 09:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FCFE8AC1E;
	Wed, 15 Jul 2020 07:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZAjL5BDtjqe; Wed, 15 Jul 2020 07:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D43B8AC13;
	Wed, 15 Jul 2020 07:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB9461BF40F
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 07:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ADD8B2151E
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 07:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcejdYjLR8P8 for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 07:17:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C46C620529
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 07:17:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1A522065E;
 Wed, 15 Jul 2020 07:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594797472;
 bh=6OLifhZpY8P2Nf/yLaI8P4QAL9rlGQNYmf4dlB26GIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DjpRJ13Ot+BFAKDkdOP3t2xGMqJ81zplNuPJAPIPd5FPizEOcBRHyWLmkukaSQh1E
 knhyoDuVuY9zvb2Uhc89AuFqqudNu3M0cyEFMoF0AMRXXcJANuBx4oxjw996Zngqpg
 hL259xKF7aewNDzbeb9ysnUOYhq3rMLXysE5b27Y=
Date: Wed, 15 Jul 2020 09:17:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhixu Zhao <zhixu001@126.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Message-ID: <20200715071748.GC2305231@kroah.com>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200714234440.27009-1-zhixu001@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714234440.27009-1-zhixu001@126.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, rcy@google.com,
 rspringer@google.com, joe@perches.com, toddpoynor@google.com,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 07:44:40AM +0800, Zhixu Zhao wrote:
> On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> > A coding alignment issue is found by checkpatch.pl.
> > Fix it by using a temporary for gasket_dev->bar_data[bar_num].
> > 
> > Signed-off-by: Zhixu Zhao <zhixu001@126.com>
> 
> Hi, there~
> 
> Does anybody have any further comments on this?
> Can it be merged?

I never saw the first version of this, are you sure it got sent to the
mailing list?  It's not in any archives anywhere.

Also, 3 days is really fast for a simple coding style cleanup to be
worried about.  Give it usually at least 2 weeks.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
