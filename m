Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3630E5C137
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 18:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7106E85D35;
	Mon,  1 Jul 2019 16:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qoLunf1yNqLw; Mon,  1 Jul 2019 16:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92DE58487A;
	Mon,  1 Jul 2019 16:37:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D14CD1BF2C9
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 16:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA95C20408
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 16:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrOioWl0019O for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 16:37:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp89.iad3b.emailsrvr.com (smtp89.iad3b.emailsrvr.com
 [146.20.161.89])
 by silver.osuosl.org (Postfix) with ESMTPS id 0CA3D203A8
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 16:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561999067;
 bh=RhioK7+koTl/3BQJ0KPgEJbdG/7cll6zYPHVxttvC08=;
 h=Subject:To:From:Date:From;
 b=wrhqyFBoihiyIeandLzC/ra516q9KKxON8Aw87rd5zfmzEw394o793RxmzySXd6/j
 6rgegH2wwoXZ32Ef4QICUJkavPOhKyzTk/NchVDHVScCVV5c9itxnbQMwZnrj3JlzE
 GiKnpo4/C8SKIEvHoUTKjQQduDJKX2qFy/lCFT8I=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561999067;
 bh=RhioK7+koTl/3BQJ0KPgEJbdG/7cll6zYPHVxttvC08=;
 h=Subject:To:From:Date:From;
 b=exBiI0kZmnzLG9N/cqacaLfbCmwHGlJxbaglriK2p5HshzDPJhi77tJsDquMnAHO/
 wDWUKe2wr9Q3t3OgapLWQEjLrQ1nGV0psB2hWTYdziVkt05aNDMnWrRxOza5Hdlg1J
 ZR8eMaIWbOErsafAmcp5B+zx0TCn91mZgg73PTKc=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp4.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 9DBBF201D9; 
 Mon,  1 Jul 2019 12:37:46 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 01 Jul 2019 12:37:47 -0400
Subject: Re: [PATCH v2 2/3] staging: comedi: amplc_dio200: Remove function
 gat_sce()
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, hsweeten@visionengravers.com
References: <20190701070025.3838-1-nishkadg.linux@gmail.com>
 <20190701070025.3838-2-nishkadg.linux@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <8b4ba6a1-72fc-56c9-3b21-195c3e4aa14a@mev.co.uk>
Date: Mon, 1 Jul 2019 17:37:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701070025.3838-2-nishkadg.linux@gmail.com>
Content-Language: en-GB
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01/07/2019 08:00, Nishka Dasgupta wrote:
> Remove function gat_sce as all it does is call clk_gat_sce.
> Modify call sites of the former to call the latter directly.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
> Changes in v2:
> - Edit subject line to include driver name.
> 
>   drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
>   1 file changed, 1 insertion(+), 7 deletions(-)

This one looks good too, thanks!

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
