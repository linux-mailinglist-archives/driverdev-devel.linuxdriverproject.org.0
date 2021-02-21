Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7EF3209EC
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 12:26:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92FBC6F511
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 11:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CtBihOIkqhT for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 11:26:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 1A1A86F506; Sun, 21 Feb 2021 11:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 631D6606D7;
	Sun, 21 Feb 2021 11:26:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9AA1BF57C
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 11:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CC2E834DB
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 11:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6yACiIdj_IfX for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 11:26:23 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 8D1F2835D3; Sun, 21 Feb 2021 11:26:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 552D9834DB
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 11:26:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5397164EE6;
 Sun, 21 Feb 2021 11:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613906781;
 bh=kkFnXUKm0Rf2iX3RQtP2a5rmUIvBNUgXozmpS/vKma8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nQjYtThi8Z6ofSATMneeTrITirVNKfdpTg78V0XP4ydEoy+MtQJ2NqkQeUVpneT8M
 zVNZRAr5CPLFQdXTbcfBEyyp/XhN/UTEwfsLc11OJHwKGS34uOh94Hsn+jfXmYU5yS
 p6pwjzM8lCvkOx9NLXE9NYs/dtKmFVo1LbAKBOcQ=
Date: Sun, 21 Feb 2021 12:26:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: wimax/i2400m: fix byte-order type issue
Message-ID: <YDJDW97X7k+mb/gE@kroah.com>
References: <YDEGD7pFyTi+CTXy@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDEGD7pFyTi+CTXy@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, Johannes Berg <johannes@sipsolutions.net>,
 Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 06:22:31PM +0530, karthik alapati wrote:
> fix sparse type warning by converting le32 types to
> host byte-order types before comparison
> 
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  drivers/staging/wimax/i2400m/fw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
> index 92ea5c101..f09de1810 100644
> --- a/drivers/staging/wimax/i2400m/fw.c
> +++ b/drivers/staging/wimax/i2400m/fw.c
> @@ -511,7 +511,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
>  			opcode, i2400m_brh_get_response(ack));
>  		goto error_ack_failed;
>  	}
> -	if (ack_size < ack->data_size + sizeof(*ack)) {
> +	if (ack_size < le32_to_cpu(ack->data_size) + sizeof(*ack)) {
>  		dev_err(dev, "boot-mode cmd %d: SW BUG "
>  			"driver provided only %zu bytes for %zu bytes "
>  			"of data\n", opcode, ack_size,

You sent 3 patches that seem to do the same thing, yet are a bit
different?

Please make your patches a patch series and provide proper subject lines
to make them unique.  I have now dropped all of your submitted patches
from my review queue.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
