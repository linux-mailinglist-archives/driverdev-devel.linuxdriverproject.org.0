Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2619531948C
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 769E886E51;
	Thu, 11 Feb 2021 20:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0awhVFU41Ctr; Thu, 11 Feb 2021 20:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AAAB86A90;
	Thu, 11 Feb 2021 20:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 552861BF41A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51B24875DB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HwPaR4kFyM9L for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:35:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1DD28758E
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 20:35:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89D7C64D73;
 Thu, 11 Feb 2021 20:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613075731;
 bh=09XWYIqyUCLDxvi5gQzO/ldzLZFs0vKFvLJwHYRvx2k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RqZTSeWhnVoY7SOKERAfHik04eTojWSyJI9La+60zSsB7NNWbmyB1AoTcvmYNseX9
 f75SCZMW7seTcfe4RvtQzTHv6Si7prB6NF9tUOcCTJ7NegQKmh1Y7b+Kzm9TgZ7GtG
 plby2Tgd/muiO8noNzKyyxDM85HmLjNs6Al4hlYc=
Date: Thu, 11 Feb 2021 21:35:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Anirudh Rayabharam <mail@anirudhrb.com>
Subject: Re: [PATCH] staging: wimax/i2400m: fix some byte order issues found
 by sparse
Message-ID: <YCWVD34rU5Lu71/S@kroah.com>
References: <20210211202908.4604-1-mail@anirudhrb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211202908.4604-1-mail@anirudhrb.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 colin.king@canonical.com, kuba@kernel.org, johannes@sipsolutions.net,
 lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 01:59:08AM +0530, Anirudh Rayabharam wrote:
> Fix sparse byte-order warnings in the i2400m_bm_cmd_prepare()
> function:
> 
> wimax/i2400m/fw.c:194:36: warning: restricted __le32 degrades to integer
> wimax/i2400m/fw.c:195:34: warning: invalid assignment: +=
> wimax/i2400m/fw.c:195:34:    left side has type unsigned int
> wimax/i2400m/fw.c:195:34:    right side has type restricted __le32
> wimax/i2400m/fw.c:196:32: warning: restricted __le32 degrades to integer
> wimax/i2400m/fw.c:196:47: warning: restricted __le32 degrades to integer
> wimax/i2400m/fw.c:196:66: warning: restricted __le32 degrades to integer
> 
> Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
> ---
>  drivers/staging/wimax/i2400m/fw.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
> index b2fd4bd2c5f9..bce651a6b543 100644
> --- a/drivers/staging/wimax/i2400m/fw.c
> +++ b/drivers/staging/wimax/i2400m/fw.c
> @@ -189,12 +189,16 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
>  {
>  	if (i2400m_brh_get_use_checksum(cmd)) {
>  		int i;
> -		u32 checksum = 0;
> +		__le32 checksum = 0;

__le32 is only for when the data crosses the kernel/user boundry, just
use le32 in the kernel for stuff like this.

>  		const u32 *checksum_ptr = (void *) cmd->payload;

Add a blank line here, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
