Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CA731E811
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 10:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B0BA863A1;
	Thu, 18 Feb 2021 09:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4u0F3hg7n_HL; Thu, 18 Feb 2021 09:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0832086101;
	Thu, 18 Feb 2021 09:40:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 050611BF3C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0239E8610E
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xOl9QQyp1OL for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 09:40:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7FD8186101
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:40:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7537464DF0;
 Thu, 18 Feb 2021 09:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613641235;
 bh=FBgOPfIf3FC5lff30PU6rn5fUjdaBUeL1E0K+BMPxKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tL+9kgJaEcLuwkMVwNo0aCdBiv1m/MfJrHr86iQbWTzYp2ed7cdgaed7uJ2SOcl5s
 TckTA6KZ0woMrehJxyI3OtYKUOsIt17vuAdNqKLl2BRgHRIdNPK7VF+IW87ZOClCvg
 V5wJdqXFCcwLvdAJ8EmPQVGc32X+YU96KS2h1f/s=
Date: Thu, 18 Feb 2021 10:40:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH] staging: wimax/i2400m: don't change the endianness of
 one byte variable
Message-ID: <YC42ECUUtX1Ah90v@kroah.com>
References: <20210218092154.GA46388@LEGION>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218092154.GA46388@LEGION>
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
Cc: devel@driverdev.osuosl.org, wanghai38@huawei.com, arnd@arndb.de,
 gustavoars@kernel.org, linux-kernel@vger.kernel.org, kuba@kernel.org,
 johannes@sipsolutions.net, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 02:21:54PM +0500, Muhammad Usama Anjum wrote:
> It is wrong to change the endianness of a variable which has just one
> byte size.
> 
> Sparse warnings fixed:
> drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
> drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
> drivers/staging//wimax/i2400m/op-rfkill.c:159:14: warning: cast to restricted __le32
> drivers/staging//wimax/i2400m/op-rfkill.c:160:14: warning: cast to restricted __le32
> 
> Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> ---
>  drivers/staging/wimax/i2400m/control.c   | 4 ++--
>  drivers/staging/wimax/i2400m/op-rfkill.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/control.c b/drivers/staging/wimax/i2400m/control.c
> index 1e270b2101e8..b6b2788af162 100644
> --- a/drivers/staging/wimax/i2400m/control.c
> +++ b/drivers/staging/wimax/i2400m/control.c
> @@ -452,8 +452,8 @@ void i2400m_report_state_parse_tlv(struct i2400m *i2400m,
>  		d_printf(2, dev, "%s: RF status TLV "
>  			 "found (0x%04x), sw 0x%02x hw 0x%02x\n",
>  			 tag, I2400M_TLV_RF_STATUS,
> -			 le32_to_cpu(rfss->sw_rf_switch),
> -			 le32_to_cpu(rfss->hw_rf_switch));
> +			 rfss->sw_rf_switch,
> +			 rfss->hw_rf_switch);

What do you mean by "one byte"?  This is a le32 sized variable, right?
If not, why isn't the le32_to_cpu() call complaining?

>  		i2400m_report_tlv_rf_switches_status(i2400m, rfss);
>  	}
>  	if (0 == i2400m_tlv_match(tlv, I2400M_TLV_MEDIA_STATUS, sizeof(*ms))) {
> diff --git a/drivers/staging/wimax/i2400m/op-rfkill.c b/drivers/staging/wimax/i2400m/op-rfkill.c
> index fbddf2e18c14..a159808f0ec2 100644
> --- a/drivers/staging/wimax/i2400m/op-rfkill.c
> +++ b/drivers/staging/wimax/i2400m/op-rfkill.c
> @@ -156,8 +156,8 @@ void i2400m_report_tlv_rf_switches_status(
>  	enum i2400m_rf_switch_status hw, sw;
>  	enum wimax_st wimax_state;
>  
> -	sw = le32_to_cpu(rfss->sw_rf_switch);
> -	hw = le32_to_cpu(rfss->hw_rf_switch);
> +	sw = rfss->sw_rf_switch;
> +	hw = rfss->hw_rf_switch;

Same here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
