Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A2231947C
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:30:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94A1F875B5;
	Thu, 11 Feb 2021 20:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAhtNWaI8A63; Thu, 11 Feb 2021 20:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90A83875BD;
	Thu, 11 Feb 2021 20:30:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A9A61BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 273B4875D7
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzMkVfhXvGZ5 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:30:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A0D45875CB
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 20:30:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8021D60238;
 Thu, 11 Feb 2021 20:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613075406;
 bh=9BeSxp+LfXzGr7rzTLopFJRujqx6EtqDjtC3aepToeE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VbQZgb9+yzbi4MXAN9SO5G3v0DJ9VKEz2lREsidbnvUeGg9uiWpiljuXMHOpGRFk8
 w05tsSMgZoOKhhfd4Yvz4XLzqPJPlhw4FBCMAJL849AEsoMdglUNIBRvoryjQqj73A
 sdyXMj1muvY47F7nESCt7YMynHdd4BDRQmJdtVf0=
Date: Thu, 11 Feb 2021 21:30:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH] staging: greybus: Fixed misspelling and alignment issue
 in hid.c
Message-ID: <YCWTyntWHst9TSnt@kroah.com>
References: <20210211153001.10358-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211153001.10358-1-pritthijit.nath@icloud.com>
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
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 09:00:01PM +0530, Pritthijit Nath wrote:
> This change fixes a checkpatch CHECK style issue for "Alignment should match open parenthesis".
> In addition the misspelling of "transferred" also has been fixed.

When you say "also" or "in addition" in a changelog, that is a huge hint
that this needs to be broken up into multiple patches.

Please do so, and fix your changelog ling length and send this as a
patch series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
