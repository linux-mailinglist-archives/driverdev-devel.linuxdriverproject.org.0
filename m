Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4225302303
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Jan 2021 09:50:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4FFA873F0;
	Mon, 25 Jan 2021 08:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id peuYMlVFQANX; Mon, 25 Jan 2021 08:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44D52872B4;
	Mon, 25 Jan 2021 08:50:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D432A1BF319
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 08:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC9AD855DF
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 08:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QfLBnrCpfDhU for <devel@linuxdriverproject.org>;
 Mon, 25 Jan 2021 08:50:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C9CE854E0
 for <devel@driverdev.osuosl.org>; Mon, 25 Jan 2021 08:50:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4681322CF6;
 Mon, 25 Jan 2021 08:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611564608;
 bh=8R/dDVa/hq2LeuM0260+HWRNutMZSEiafO+90owIq/8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=weq9SpnMXwrA+VZ/5vfxP964jkqA/Gr0znk6NIJpNLgAuFvTjS4znC/8won2G8FOx
 SLkHzz0TE/S4vl8IQoW6w6zYfWSmaRnIaKRjrl6sxA3JCuCKKwn5p+O1idzX2md5ut
 VP+DKWLss7qo78tBQSRGDyDKD2btuAgbDsJ8Mu4E=
Date: Mon, 25 Jan 2021 09:50:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v2] fbtft: add tearing signal detect
Message-ID: <YA6GPqYbhFzfySDc@kroah.com>
References: <1611564252-84205-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611564252-84205-1-git-send-email-zhangxuezhi3@gmail.com>
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

On Mon, Jan 25, 2021 at 04:44:12PM +0800, Carlis wrote:
> From: "carlis.zhang_cp" <zhangxuezhi1@yulong.com>

I need a "real" name here, and in the signed-off-by: area as I do not
think you sign documents with a "." and "_", right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
