Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F02AF3328D3
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 15:43:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABA3E46BE3;
	Tue,  9 Mar 2021 14:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mf1L0mHyFUQI; Tue,  9 Mar 2021 14:43:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB87744A94;
	Tue,  9 Mar 2021 14:43:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9771BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A9BB42FBE
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RPXycRJRcnOx for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 14:43:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F4F440192
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 14:43:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3221865239;
 Tue,  9 Mar 2021 14:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615301002;
 bh=5VR1ZEi5nxO1w9B3Wf+HqcUWf+DfqKqdpstKfB2Cp7s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hh9t7o3VAC6JORBYSif55Cl1c456tnG76bnYiAv7Jr0SDGPNxT8bCk/MDTKBNq9NF
 TrMrMz/vpp5rqK+x4h3h50g9SiFVve/zOx7tmjyCOgDeIlI5AE5KRJ0+z9bWIfETU+
 MU/gqHhDMBik4zwYu+SaNmeOIAodoEKxqKKUqed0=
Date: Tue, 9 Mar 2021 15:43:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Selvakumar Elangovan <selvakumar16197@gmail.com>
Subject: Re: [PATCH v2] rtl8712: fixed whitespace coding style issue
Message-ID: <YEeJh8xNXlv5yL+J@kroah.com>
References: <20210309141721.16772-1-selvakumar16197@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309141721.16772-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 09, 2021 at 07:47:21PM +0530, Selvakumar Elangovan wrote:
> Removed additional whitespaces in the rtl8712_xmit.h file.
> 
> Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_xmit.h | 3 ---
>  1 file changed, 3 deletions(-)

What changed from v1?  Always put that below the --- line.

v3?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
