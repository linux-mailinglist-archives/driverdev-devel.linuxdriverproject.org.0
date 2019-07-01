Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA0B5C13D
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 18:38:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65CCB85C52;
	Mon,  1 Jul 2019 16:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kcgXMn0TvStz; Mon,  1 Jul 2019 16:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91E9F85BDF;
	Mon,  1 Jul 2019 16:38:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C64B51BF2C9
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 16:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCD8E85BDF
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 16:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MSKktlzpIKvd for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 16:38:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp65.ord1d.emailsrvr.com (smtp65.ord1d.emailsrvr.com
 [184.106.54.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 21EE28487A
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 16:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561999114;
 bh=DbBAdi1gvnUU6WCT5uTZYgSwgvBy1QMEIQLyzGB92Hk=;
 h=Subject:To:From:Date:From;
 b=Q8XlIkGMYApKk8fAZSCB33q0j9uqbVVyUv8jWbuw3n56EqONOC4q8Q/Ey55g8x2zm
 T0rpz7dtVLqSeJJrsEqBULy3/64onu4Tmbb9DjbX1kWqw2oTpa2HaxMFI3B/Tc5TQ2
 5WBUI7yMFbPm9E6KgQ5vsFCnj6VH3JptbONHyiu0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561999114;
 bh=DbBAdi1gvnUU6WCT5uTZYgSwgvBy1QMEIQLyzGB92Hk=;
 h=Subject:To:From:Date:From;
 b=ganFMx153/wrDh0+ZjeMdl9S+zBUgEmMe2e3jEdLkSJrZwEBjONn09JjKN7dzKZeW
 2EgREGvm7RGvoBrngX5qgcaHMIvXm5LMK4XFaf6TifTDiS/M8FjOzuUpOBuoa+sq2c
 fwvGHmCtAbV8R6O+AEXVrQIqw/EkjVRbKmV/s4Pc=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id BA20E2030D; 
 Mon,  1 Jul 2019 12:38:33 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 01 Jul 2019 12:38:34 -0400
Subject: Re: [PATCH v2 3/3] staging: comedi: mite: Replace function
 mite_request_channel_in_range()
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, hsweeten@visionengravers.com
References: <20190701070025.3838-1-nishkadg.linux@gmail.com>
 <20190701070025.3838-3-nishkadg.linux@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <9560fd3b-c7cf-e636-c7ba-21862b1a6c87@mev.co.uk>
Date: Mon, 1 Jul 2019 17:38:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701070025.3838-3-nishkadg.linux@gmail.com>
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
> Remove function mite_request_channel_in_range as all it does is call
> __mite_request_channel.
> Rename __mite_request_channel to mite_request_channel_in_range and
> change its type from static to non-static to maintain compatibility with
> call sites.
> Change only remaining call site of __mite_request_channel to call
> mite_request_channel_in_range_instead.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
> Changes in v2:
> - Edit subject line to include driver name.
> 
>   drivers/staging/comedi/drivers/mite.c | 27 ++++++++++-----------------
>   1 file changed, 10 insertions(+), 17 deletions(-)

And this one looks good too, thanks!

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
