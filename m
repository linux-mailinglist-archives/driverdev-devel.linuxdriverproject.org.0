Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEFE320510
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 12:13:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 706B3835A6
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 11:13:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5BqWvdTYCW32 for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 11:13:29 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id AA29E83759; Sat, 20 Feb 2021 11:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF85483578;
	Sat, 20 Feb 2021 11:13:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B905A1BF831
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 11:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A234C6F48D
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 11:13:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ji-GKkC5N4Qa for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 11:13:06 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id F2B3B6F60A; Sat, 20 Feb 2021 11:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E73096F48D
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 11:13:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BDDD364E76;
 Sat, 20 Feb 2021 11:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613819584;
 bh=CeOaW03d10kbAd6D3R64qI1Da05bexs8Y8mdKcjIP1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NLzdakdnzBRJTEYL2jUVQRiMHOjwlBJsWHX+mN6T0HVpWOaizD67mC8exmRh50ugY
 Yck1iWy1d5CK0u7VQnr2rtLGoBW7XuYTZtxayXgEBNvSHooKQxq0inkCZ3+XHLBB8P
 JhmBLn0EUdTiG31BUBlK5POXrQ5fhmeslYSh44HA=
Date: Sat, 20 Feb 2021 12:12:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
Subject: Re: [PATCH] staging: wimax: i2400m: add space before open parenthesis
Message-ID: <YDDuu6sRtSfWhnbY@kroah.com>
References: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
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
Cc: devel@driverdev.osuosl.org, sfr@canb.auug.org.au,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 02:48:16AM -0800, Rajesh Kumbhakar wrote:
> netdev.c

Why is this here?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
