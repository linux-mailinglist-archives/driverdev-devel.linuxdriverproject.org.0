Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE641F039
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:42:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 508B5861C7;
	Wed, 15 May 2019 11:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMiJ_QXfwnC9; Wed, 15 May 2019 11:42:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C062861EE;
	Wed, 15 May 2019 11:42:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB811BF3D9
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 11:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C9E98619E
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 11:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3UvdIrft7119 for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:42:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A31C286199
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 11:42:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02E642053B;
 Wed, 15 May 2019 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557920526;
 bh=CJglLWpl75ZYj9k7YBK3dEW3AsldyHrTYFhuxMMNwbY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LxyVJ60wBaB/9nci8DZDtaxj9O8RMS1fA/MALjXQQOwVdpFmE58SeyqzfTO180JW/
 rsp7spefQKf5h15vj0xNDBKddxCf48TxaVMQYqZbhhQLYVYo3SlNCxT6qHRUxr7+Gs
 DGAR+c9H7gK9L8HyPmiP396d8CSaP1Gj31gwyfoE=
Date: Wed, 15 May 2019 13:40:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
Message-ID: <20190515114022.GA18824@kroah.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515112401.15373-1-kai.heng.feng@canonical.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 15, 2019 at 07:24:01PM +0800, Kai-Heng Feng wrote:
> The rtl8821ce can be found on many HP and Lenovo laptops.
> Users have been using out-of-tree module for a while,
> 
> The new Realtek WiFi driver, rtw88, will support rtl8821ce in 2020 or
> later.

Where is that driver, and why is it going to take so long to get merged?

>  296 files changed, 206166 insertions(+)

Ugh, why do we keep having to add the whole mess for every single one of
these devices?

Why can't we just have a real driver now?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
