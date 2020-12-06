Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDD12D05CD
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 17:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FEB486A8D;
	Sun,  6 Dec 2020 16:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HK9h8xLBf0T; Sun,  6 Dec 2020 16:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B50786A5C;
	Sun,  6 Dec 2020 16:02:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEE141BF958
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 16:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D90C7872C9
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 16:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LY3L8DS0u3sq for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 16:02:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C72FA871B2
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 16:02:09 +0000 (UTC)
Date: Sun, 6 Dec 2020 17:03:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607270529;
 bh=0FflSmA1v4GBMAOc9xGQoPxFOoHKt02TbpXBi/lcBQ8=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=HIEO3vF1i5k8ZMDuGRuv3JLNbFlBk0XiWyj7B0PwkfnwfD3ftNm7sTgvob83IgdU4
 39JRSxKg2lyEmyffzPaGh5zEtFVPup0OZbI7sxZZ8f2B3zd8EWX8ww5jz8NfTvUvR5
 /Vg50nrVpa8DVew7zSYfw0iJSF30mU+wWQhqSdA4=
From: Greg KH <gregkh@linuxfoundation.org>
To: shaojie.dong@isrc.iscas.ac.cn
Subject: Re: [PATCH] staging: rtl8712: check register_netdev() return value
Message-ID: <X80AySpyP3fxhRmb@kroah.com>
References: <20201206155907.7991-1-shaojie.dong@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201206155907.7991-1-shaojie.dong@isrc.iscas.ac.cn>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 06, 2020 at 11:59:07PM +0800, shaojie.dong@isrc.iscas.ac.cn wrote:
> From: "shaojie.dong" <shaojie.dong@isrc.iscas.ac.cn>
> 
> Function register_netdev() can fail, so we should check it's return value

You just check it, you are not doing anything with it, which is just the
same as not checking this.

Please fix this properly.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
