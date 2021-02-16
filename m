Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABD031C87A
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 11:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C0DF86824;
	Tue, 16 Feb 2021 10:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MW8l9+yz-WSq; Tue, 16 Feb 2021 10:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D6B0867CD;
	Tue, 16 Feb 2021 10:02:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B29F1BF285
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 10:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0872F86FD7
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 10:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JGVeDyplGRtF for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 10:02:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A606D86FC0
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 10:02:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F04664DA1;
 Tue, 16 Feb 2021 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613469722;
 bh=QhTo5jdF8bFE9bfH83cy/ZMztDmZIcQflTrAZAn0SaA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=srjJXlO6x9eRHLu0+cvLO+tBJjLbsHCJ1+wZQQvoCKSYeY8fHFOoj95WsSeRtisEl
 JULeTXoCMPZnDk6CK0TVzWIIHWaXiTo3xZXlHVOxWPFJVvaNO7WPm+ILvaQz5Wal6D
 g9rnA37kFWqVd2bkfe5JCR0ozKcT7zc9cw9diK00=
Date: Tue, 16 Feb 2021 11:01:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Du Cheng <ducheng2@gmail.com>
Subject: Re: [PATCH v4] staging: qlge: fix comment style in qlge_main.c
Message-ID: <YCuYFz1vpgTEsjb/@kroah.com>
References: <20210216094012.183420-1-ducheng2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216094012.183420-1-ducheng2@gmail.com>
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
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 05:40:12PM +0800, Du Cheng wrote:
> align * in block comments on each line

That says _what_ you did, not _why_ you did it.

And "each line"?  You only did this once.

> This series of patches is for Task 10 of the Eudyptula Challenge

This isn't a "series" of patches, it is a single patch.  And no one
cares about why you are doing this, this text isn't needed at all.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
