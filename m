Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F133D75AD
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jul 2021 15:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AED383134;
	Tue, 27 Jul 2021 13:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TKHB7C9YEqLZ; Tue, 27 Jul 2021 13:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C391B82EAD;
	Tue, 27 Jul 2021 13:17:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6CC11BF40F
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 13:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2A5C60679
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 13:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfMvLW-_X48M for <devel@linuxdriverproject.org>;
 Tue, 27 Jul 2021 13:17:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36EF36062A
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 13:17:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7AF1D6187F;
 Tue, 27 Jul 2021 13:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1627391830;
 bh=YdFNH0RRyJDNOCQstjjEb7UvYayYGnJ5AFi6nXdGOc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fvtak2ALQ7cnwQ41HdZx7jYlZ/AIRV+jgF40f5p9TTZ508JAvDqpdOSTX2fjRri/M
 x3w2B3vt71tlYj5kwz1xtVTosTzzfViqGO+tdt1CdR2Tc9WPwdX6QPq4m/SXfhSorm
 X9Z5fNVtkj4KhTZMN3XPZy95cn+32AmAj5YDfjYQ=
Date: Tue, 27 Jul 2021 15:17:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Benjamin Philip <benjamin.philip495@gmail.com>
Subject: Re: [PATCH v2 0/3] Remove blank lines at
 drivers/rtl8188eu/core/rtw_ap.c
Message-ID: <YQAHVHGs7/vB4Ofx@kroah.com>
References: <cover.1627029208.git.benjamin.philip495@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1627029208.git.benjamin.philip495@gmail.com>
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 23, 2021 at 04:27:50PM +0530, Benjamin Philip wrote:
> The following few patches remove some blank lines that before or after a brace.
> 
> To test my changes, I have checked if it compiles (which it does). I also have
> checked the patch with checkpatch.pl, which does not pass any warnings of any sort.
> 
> Changes in v2:
> * Tested by building (no changes code)
> 
> This is my first patch to the linux kernel. I apologize for all the inconveniences caused
> by my unfamiliarity with the kernel workflow.
> 
> I also have split each line I removed into a patch so that it is convenient for the
> maintainer. I hope it is so.
> 
> Thanks,
> Benjamin Philip
> 
> Benjamin Philip (3):
>   staging: rtl8188eu: Remove blank line at core/rtw_ap.c:385
>   staging: rtl8188eu: Remove blank line at core/rtw_ap.c:457
>   staging: rtl8188eu: Remove blank line at core/rtw_ap.c:1143

That's just too many patches, your first one was just fine :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
