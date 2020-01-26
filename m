Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A72E149C4B
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 19:30:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58755877E6;
	Sun, 26 Jan 2020 18:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARY84NPbyz4i; Sun, 26 Jan 2020 18:30:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F12A187804;
	Sun, 26 Jan 2020 18:30:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB1C01BF421
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 18:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E7C7285B94
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 18:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRpOlRvWOlxC for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 18:30:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 634D185B12
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 18:30:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA16C206F0;
 Sun, 26 Jan 2020 18:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580063437;
 bh=IeQGexIT5WZnRinFdIJYWHpbxRm7H11XzhptV9yLbpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OyPqZHwyhFaf1WhFfb67oyG03LfqZktOW7s0kdsxcEOx7zEeXVF8nz0yXZJkBIoLA
 +GB5nza4xPb4Ddkh/gzf9xNsoiMpp6kBYW/xBo8QGnUtT6/gfWQSJGrCeUG51U9lq+
 sbbX8jgApxNQZ8Q8n9duXUENZPQ+m/FaBDP6Y4Go=
Date: Sun, 26 Jan 2020 19:30:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: greybus: fix fw is NULL but dereferenced.
Message-ID: <20200126183034.GA4086664@kroah.com>
References: <20200126083130.GA17725@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200126083130.GA17725@google.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 26, 2020 at 02:01:30PM +0530, Saurav Girepunje wrote:
> Fix the warning reported by cocci check.

What is "cocci check"?

> Changes:
> 

Why add that line?

> In queue_work fw dereference before it actually get assigned.
> move queue_work before gb_bootrom_set_timeout.
> 
> As gb_bootrom_get_firmware () return NEXT_REQ_READY_TO_BOOT
> only when there is no error and offset + size is actually equal
> to fw->size. So initialized next_request to NEXT_REQ_GET_FIRMWARE
> for return in other case.
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/staging/greybus/bootrom.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

As Johan said, there are a lot of really bad "static checking"
tools out there that can not properly parse C code.  Always verify by
hand what the tools said is wrong, really is an issue before sending a
patch out for something that is not correct.  This looks like you need
to use a better tool.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
