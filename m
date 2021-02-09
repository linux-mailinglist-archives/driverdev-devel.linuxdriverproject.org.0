Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42532314876
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 07:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A5BC87269;
	Tue,  9 Feb 2021 06:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fA1M8k49CkxB; Tue,  9 Feb 2021 06:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58A3F87248;
	Tue,  9 Feb 2021 06:09:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93BBD1BF29D
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 06:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 64CFF86A11
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 06:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-Pu1sjf4d1M for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 06:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D478C8698C
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 06:08:56 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9002F64EB8;
 Tue,  9 Feb 2021 06:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612850936;
 bh=7ZFeJoTMAgClPx+EU8W9uRO0tg2vEEeuop17o7Cs8Dw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xUHDV35uVMGKQ4TNZs5xaMxieWSSyQQmNygNIuoxx/xn3R4dG/ayZE6JOUUQHM5uK
 eYMzNitPjQSYz1Lhx0l01Snvv/acXBAnPWGljl+46rRfHL+BP6B/W0gibrjw3/SKtx
 Bd+gPWGNl9h04FS785HR0A5fPoseMBDkg+Va4r6A=
Date: Tue, 9 Feb 2021 07:08:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Atul Gopinathan <leoatul12@gmail.com>
Subject: Re: [PATCH] staging: hikey9xx: fix checkpatch error and warning
Message-ID: <YCIm9e0w06aeOL91@kroah.com>
References: <20210209055703.7211-1-leoatul12@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209055703.7211-1-leoatul12@gmail.com>
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
Cc: mchehab+huawei@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 11:27:04AM +0530, Atul Gopinathan wrote:
> Fix the following types of checkpatch error and warning:
> 
> ERROR: code indent should use tabs where possible
> WARNING: struct phy_ops should normally be const

That is 2 different things, which means this should be 2 different
patches.  Please make this a patch series and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
