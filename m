Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE5160F96
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 11:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 623A686DCA;
	Sat,  6 Jul 2019 09:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VWBld3fhZOI; Sat,  6 Jul 2019 09:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97B0E86DD3;
	Sat,  6 Jul 2019 09:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D59F51BF2B5
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 09:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFAEB2049E
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 09:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gna6ShPOlX4c for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 09:00:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by silver.osuosl.org (Postfix) with ESMTPS id 3AABD203A6
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 09:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 2ED7F6069;
 Sat,  6 Jul 2019 11:00:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_8_IRcTvWRm; Sat,  6 Jul 2019 11:00:20 +0200 (CEST)
Received: from function (dhcp-64-231.ens-lyon.fr [140.77.64.231])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 73E6A6063;
 Sat,  6 Jul 2019 11:00:20 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hjgYN-0004Wq-Jw; Sat, 06 Jul 2019 11:00:19 +0200
Date: Sat, 6 Jul 2019 11:00:19 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] staging: speakup: One function call less in
 speakup_win_enable()
Message-ID: <20190706090019.rivposzrqesodhso@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Markus Elfring <Markus.Elfring@web.de>, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kirk Reiser <kirk@reisers.ca>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 kernel-janitors@vger.kernel.org
References: <11f79333-25c3-1ad9-4975-58c64821f3fe@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11f79333-25c3-1ad9-4975-58c64821f3fe@web.de>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 kernel-janitors@vger.kernel.org,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 LKML <linux-kernel@vger.kernel.org>, Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Markus Elfring, le sam. 06 juil. 2019 10:15:30 +0200, a ecrit:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sat, 6 Jul 2019 10:03:56 +0200
> 
> Avoid an extra function call by using a ternary operator instead of
> a conditional statement.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/main.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..03bbc9a4dbb3 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -1917,10 +1917,9 @@ static void speakup_win_enable(struct vc_data *vc)
>  		return;
>  	}
>  	win_enabled ^= 1;
> -	if (win_enabled)
> -		synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCED));
> -	else
> -		synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCE_DISABLED));
> +	synth_printf("%s\n", spk_msg_get(win_enabled
> +					 ? MSG_WINDOW_SILENCED
> +					 : MSG_WINDOW_SILENCE_DISABLED));
>  }
> 
>  static void speakup_bits(struct vc_data *vc)
> --
> 2.22.0
> 

-- 
Samuel
--- christ gives channel operator status to Dieu
 -+- #ens-mim and hell -+-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
