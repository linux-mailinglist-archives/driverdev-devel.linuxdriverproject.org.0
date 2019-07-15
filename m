Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC1669BC5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FCC085344;
	Mon, 15 Jul 2019 19:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lpc2rcXkT4FR; Mon, 15 Jul 2019 19:56:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 099E381EF6;
	Mon, 15 Jul 2019 19:56:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1111BF393
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A7DA85E79
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GAYzTHHueDLG
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48BB985E28
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:56:16 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02B6520665;
 Mon, 15 Jul 2019 19:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220576;
 bh=ENZn2XvpNskqUZBLxiITHS2Ayjbx6qtEFWjOFLyLy/8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0aEqybXym8O6rOLBEaYUXhyzviDx+TcYUJ/a37Ec+WvKj3nWWzq1gGhq3keqRMhDz
 yP718VwD6OdGHkl2n8+TmjEHjh7+KoRnbM6Ss51maJp/Co7zJ1gSB7uXVcPmrp2N2q
 nflp0ISQqDX74giA5484AO0GY43dE7QCepdoAWYo=
Date: Mon, 15 Jul 2019 21:42:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: Delete multiple blank line.
Message-ID: <20190715194234.GE26092@kroah.com>
References: <20190713215743.12012-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713215743.12012-1-christianluciano.m@gmail.com>
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

On Sat, Jul 13, 2019 at 06:57:43PM -0300, christianluciano.m@gmail.com wrote:
> From: Christian Luciano Moreno <christianluciano.m@gmail.com>
> 
> Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h | 1 -
>  1 file changed, 1 deletion(-)

I can't take patches without any changelog text :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
