Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F8A17A0A5
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 08:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 564B0860DC;
	Thu,  5 Mar 2020 07:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y4kQt3jiaLY3; Thu,  5 Mar 2020 07:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EC3F82226;
	Thu,  5 Mar 2020 07:46:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54AC81BF9AD
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 07:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5109886995
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 07:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KxGj6eTdmn-r for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 07:46:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 20FAA86462
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 07:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id CAA4D148D;
 Thu,  5 Mar 2020 08:46:31 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-IGOv4z-aAj; Thu,  5 Mar 2020 08:46:30 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id BFC5312B7;
 Thu,  5 Mar 2020 08:46:30 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j9lDB-001Dcl-Bm; Thu, 05 Mar 2020 08:46:29 +0100
Date: Thu, 5 Mar 2020 08:46:29 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Zhenzhong Duan <zhenzhong.duan@gmail.com>
Subject: Re: [PATCH] staging: speakup: Fix a typo error print for softsynthu
 device
Message-ID: <20200305074629.i2ntpvmlpn4nwb7y@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 linux-kernel@vger.kernel.org, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org, William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200305072151.403-1-zhenzhong.duan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305072151.403-1-zhenzhong.duan@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Zhenzhong Duan, le jeu. 05 mars 2020 15:21:51 +0800, a ecrit:
> When softsynthu device fails the register, "/dev/softsynthu" should be
> printed instead of "/dev/softsynth".

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> Signed-off-by: Zhenzhong Duan <zhenzhong.duan@gmail.com>
> Cc: William Hubbs <w.d.hubbs@gmail.com>
> Cc: Chris Brannon <chris@the-brannons.com>
> Cc: Kirk Reiser <kirk@reisers.ca>
> Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/speakup/speakup_soft.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
> index 9d85a3a1af4c..28cedaec6d8a 100644
> --- a/drivers/staging/speakup/speakup_soft.c
> +++ b/drivers/staging/speakup/speakup_soft.c
> @@ -388,7 +388,7 @@ static int softsynth_probe(struct spk_synth *synth)
>  	synthu_device.name = "softsynthu";
>  	synthu_device.fops = &softsynthu_fops;
>  	if (misc_register(&synthu_device)) {
> -		pr_warn("Couldn't initialize miscdevice /dev/softsynth.\n");
> +		pr_warn("Couldn't initialize miscdevice /dev/softsynthu.\n");
>  		return -ENODEV;
>  	}
>  
> -- 
> 2.17.1
> 

-- 
Samuel
N: beep beep Miam miam? 
y: ++
a: kill -MIAM -1
 -+- #runtime < /dev/miam -+-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
