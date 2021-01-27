Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC65305DDD
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:08:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7193B85D40;
	Wed, 27 Jan 2021 14:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v0YZwRIa4uDS; Wed, 27 Jan 2021 14:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7176D84414;
	Wed, 27 Jan 2021 14:08:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF28D1BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EC1D5871C2
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dz1x9DURUVAT for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:08:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B5C5871AC
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:08:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 85FFB2100A;
 Wed, 27 Jan 2021 14:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611756489;
 bh=yqGnxCx5oZvyrJm+gp7Zb+WXFEubWq9jM3h88+rjhyg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iiDc6+xJvbdEqFiw0ZJd2eElatv9eP3dsYLHwWFb8xr2IUduGaRXSjNB53x91t2rz
 ZrXEyf4QE5UphvjfxbriUuiyARobfGjoKmk5G1/pPet2DJSi0GaXDgDV0u8G7v2ce5
 tyWgkMtFhXeO8t3RhTyj43UPZlzBg52JIu5jWWm8=
Date: Wed, 27 Jan 2021 15:08:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v11] staging: fbtft: add tearing signal detect
Message-ID: <YBFzxucgqJCX8IBO@kroah.com>
References: <1611756149-165287-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611756149-165287-1-git-send-email-zhangxuezhi3@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, colin.king@canonical.com, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 10:02:29PM +0800, Carlis wrote:
> From: zhangxuezhi <zhangxuezhi1@yulong.com>
> 
> For st7789v ic,when we need continuous full screen refresh, it is best to
> wait for the TE signal arrive to avoid screen tearing
> 
> Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>

Again, slow down, and wait for comments before responding so quickly, as
you missed all of my review...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
