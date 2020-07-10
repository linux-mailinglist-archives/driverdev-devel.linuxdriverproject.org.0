Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A6D21AFDC
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 09:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 786DD89903;
	Fri, 10 Jul 2020 07:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nA88VA6Y7iwH; Fri, 10 Jul 2020 07:03:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 486D88990C;
	Fri, 10 Jul 2020 07:03:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6CF81BF333
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 07:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE9F9885B2
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 07:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mk6uCDgLCfIB for <devel@linuxdriverproject.org>;
 Fri, 10 Jul 2020 07:03:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F77586EAA
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 07:03:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 772B2206A5;
 Fri, 10 Jul 2020 07:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594364607;
 bh=dYmX8RjtgwOU2jBuCzoVMgaEAnNs+JRhXV9g96pNMig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tXMGoA2tehFXUGrgwmIUsE7gEF6y2rI6hf/0Uezb6hTzCT7LTuNv/+zACyqzy1Eys
 9apna7cSxzRYDMjl5iJTc3LIuw1UqjPgFSbA/8zav8ePmYiHQt5ptp/fhR5skjhnXm
 L7+/BqOW+9jTs9t49dw15fl7b6sH6nLSGifcJpY4=
Date: Fri, 10 Jul 2020 09:03:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
Message-ID: <20200710070332.GA1175842@kroah.com>
References: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 10, 2020 at 02:45:29PM +0800, Nicolas Boichat wrote:
> trace_printk should not be used in production code, replace it
> call with pr_info.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> ---
> Sent this before as part of a series (whose 4th patch was a
> change that allows to detect such trace_printk), but maybe it's
> easier to get individual maintainer attention by splitting it.

Mauro should take this soon:

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
