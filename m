Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019F769BC4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2FF487BA6;
	Mon, 15 Jul 2019 19:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id np0iK413r13H; Mon, 15 Jul 2019 19:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A1D787524;
	Mon, 15 Jul 2019 19:56:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 726081BF393
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FAB685E79
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v_5y_yBzxszT
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5AC2785EC1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:05 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7D5620659;
 Mon, 15 Jul 2019 19:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220565;
 bh=xIb7tsYZMMMTId+Wj+vNyTLNRCu2kgl1BKNu9aLIxcs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Biq7abDx2PPAM9lg+LOdrshyeoc1Q6rlhtvAuoGw9XMKLfV+hXTY5WXWEKa6idGcN
 8VLBemOanh/C7lwUzrnUFYXedM0CgqBXXo94i/vi2D585nHzAKvDdee4rn1uMwZM6v
 hBawtiQ0Lpwp5xk0MX/WsYsPcdX2gFgYLQQ/3K/A=
Date: Mon, 15 Jul 2019 21:42:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: Fix CHECK reported by checkpatch
Message-ID: <20190715194213.GD26092@kroah.com>
References: <20190714002005.14303-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190714002005.14303-1-christianluciano.m@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 13, 2019 at 09:20:05PM -0300, christianluciano.m@gmail.com wrote:
> From: Christian Luciano Moreno <christianluciano.m@gmail.com>
> 
> Change local variable name to avoid CamelCase.
> Align code to the open parenthesis to fix alignment issues.

That is two different things, right?

So it should be 2 patches.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
