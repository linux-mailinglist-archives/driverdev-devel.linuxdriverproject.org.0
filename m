Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70A4456A58
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 07:38:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1383C405B9;
	Fri, 19 Nov 2021 06:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 71occD-pMhu4; Fri, 19 Nov 2021 06:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14F0540372;
	Fri, 19 Nov 2021 06:38:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 182C41BF580
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 06:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 07DCA40382
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 06:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IiCcQY0-A-7H for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 06:38:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82DEB4037C
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 06:38:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A8B4A61101;
 Fri, 19 Nov 2021 06:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637303915;
 bh=+ETw7Xi0OwIuaRxNGm3Y/jlhPTldMlIj9OAAr37LegU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h4/kVnNmukiRnneGq6Ci2GQ9TDmBrlAo+O5C3Bc75rHwKZZ5lXB8gaHNP9HurxEwe
 RExlCEeg5t5ZibFWYZ3mRQYYakelrL6A3ABI2g/MgGKvs5NjtvOHQ+dSTfqoM37CGL
 FWVkDMUHtS9dSS/kNu2BIJ3NC0b9aQIPitKA/Vlo=
Date: Fri, 19 Nov 2021 07:38:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <YZdGaAVSVM8/4ZB2@kroah.com>
References: <20211118202718.GA152832@t470p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118202718.GA152832@t470p>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 18, 2021 at 09:27:18PM +0100, Alberto Merciai wrote:
> Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
> Indicator) into linux kernel coding style equivalent
> variable "current_rssi".
> 
> Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
> ---
> 
> v2
> - correct mailing list

No, you did not use the correct mailing list.

What is the output of scripts/get_maintainer.pl on your patch?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
