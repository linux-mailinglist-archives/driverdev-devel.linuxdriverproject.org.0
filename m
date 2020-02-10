Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D203158244
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:28:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 679AD851AD;
	Mon, 10 Feb 2020 18:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2N1_YzmgQx1P; Mon, 10 Feb 2020 18:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76E79834D7;
	Mon, 10 Feb 2020 18:27:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 337FD1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D91885116
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTWsdUTpZvUP for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:27:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7DBE834D7
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:27:56 +0000 (UTC)
Received: from localhost (unknown [104.132.1.111])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 922A22080C;
 Mon, 10 Feb 2020 18:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581359275;
 bh=MsiLjdHsCfAqkZL4yKnHmAvUXIHHS+bk97cPqovFsqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0BGAh7Aq3gk2jSg9U76x7nO1HJFImAgGGDm9prbl64XE/YcnzdRZChCjFXMbW4Ddh
 zJrMQ9ECDXcW3xfryLL8OkoqiN10mqszoKEZT+vRLFvMdgPLP/cJQQhrrDpE/t8QpU
 mXL9/5kSFdHrHmqqk+60Hs7Y7PQ2FpXF49iVcJ5g=
Date: Mon, 10 Feb 2020 10:27:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [PATCH 4/6] staging: rtl8723bs: Fix potential overuse of kernel
 memory
Message-ID: <20200210182755.GA1048334@kroah.com>
References: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
 <20200210180235.21691-5-Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210180235.21691-5-Larry.Finger@lwfinger.net>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 Stable <stable@vger.kernel.org>, Pietro Oliva <pietroliva@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 10, 2020 at 12:02:33PM -0600, Larry Finger wrote:
> In routine wpa_supplicant_ioctl(), the user-controlled p->length is
> checked to be at least the size of struct ieee_param size, but the code
> does not detect the case where p->length is greater than the size
> of the struct, thus a malicious user could be wasting kernel memory.
> Fixes commit 554c0a3abf216 ("staging: Add rtl8723bs sdio wifi driver").
> 
> Reported by: Pietro Oliva <pietroliva@gmail.com>
> Cc: Pietro Oliva <pietroliva@gmail.com>
> Cc: Stable <stable@vger.kernel.org>
> Fixes: 554c0a3abf216 ("staging: Add rtl8723bs sdio wifi driver").
> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
> -# Please enter the commit message for your changes. Lines starting
> ---

Funny line :)

I'll go edit it...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
