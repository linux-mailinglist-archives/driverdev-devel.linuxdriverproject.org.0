Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8315326248
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 13:07:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FA196F95F;
	Fri, 26 Feb 2021 12:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2q66xfBuYd9; Fri, 26 Feb 2021 12:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68CB66F912;
	Fri, 26 Feb 2021 12:07:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1FF1BF8C7
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 12:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39FFD84055
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 12:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ojThiNeobVj for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 12:06:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D4AA8402E
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 12:06:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 31B4864E85;
 Fri, 26 Feb 2021 12:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614341209;
 bh=qRTRg+Ld1JvWeMc0olIaD6Tm+zb/5qtWSSfoEhnQEC0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OvGNyIN4O2RQfLtsNLJNBpTtgzJmKKoCEooXcKepz4kiyHOoLUziEn22HCgGiN0nP
 i3pTPTXpw2lVDZcOIebficIYrr1MUCf9QBzfiAcNj2IK7Qj5KSXs4nLCvngCPbsox4
 RdpxlHQh7K/n0uAjto/Or+M7Y5PUw5pcgBeqZA/s=
Date: Fri, 26 Feb 2021 13:06:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Gibson <leegib@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <YDjkVqPzcU6Z5zbK@kroah.com>
References: <20210226114829.316980-1-leegib@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226114829.316980-1-leegib@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 26, 2021 at 11:48:29AM +0000, Lee Gibson wrote:
> Function _rtl92e_wx_set_scan calls memcpy without checking the length.
> A user could control that length and trigger a buffer overflow.
> Fix by checking the length is within the maximum allowed size.
> 
> Signed-off-by: Lee Gibson <leegib@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> index 16bcee13f64b..2acc4f314732 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> @@ -406,6 +406,9 @@ static int _rtl92e_wx_set_scan(struct net_device *dev,
>  		struct iw_scan_req *req = (struct iw_scan_req *)b;
>  
>  		if (req->essid_len) {
> +			if (req->essid_len > IW_ESSID_MAX_SIZE)
> +				req->essid_len = IW_ESSID_MAX_SIZE;
> +

How about using the "pattern" the other wireless drivers use of:

		int len = min((int)req->essid_len, IW_ESSID_MAX_SIZE);

instead?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
