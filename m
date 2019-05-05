Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B3F13E30
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 09:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09AB18665D;
	Sun,  5 May 2019 07:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yuLxtDk-J5Ox; Sun,  5 May 2019 07:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4421186569;
	Sun,  5 May 2019 07:33:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CF611BF3A9
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 07:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 507EA22889
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 07:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mn8bI3ouTdVd for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 07:33:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by silver.osuosl.org (Postfix) with ESMTPS id D6497227E1
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 07:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3C2E075F0;
 Sun,  5 May 2019 09:32:59 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19Q5PwfWms_x; Sun,  5 May 2019 09:32:58 +0200 (CEST)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 999B57529;
 Sun,  5 May 2019 09:32:58 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hNBdo-0007f3-Qp; Sun, 05 May 2019 09:32:56 +0200
Date: Sun, 5 May 2019 09:32:56 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: Re: [PATCH] Staging: speakup: Replace return type
Message-ID: <20190505073256.wtcmx2egkhtxyqmv@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
 gregkh@linuxfoundation.org, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190505072645.3940-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505072645.3940-1-madhumithabiw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, kirk@reisers.ca, gregkh@linuxfoundation.org,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 chris@the-brannons.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

Madhumitha Prabakaran, le dim. 05 mai 2019 02:26:45 -0500, a ecrit:
> Replace return type and remove the respective assignment.

I prefer to keep it the way it was, it looks more straightforward for
the reader.

Samuel

> Issue found by Coccinelle.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d36f947..a748eb8052d1 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);
>  }
>  
>  /*
> -- 
> 2.17.1
> 

-- 
Samuel
Progress (n.): The process through which the Internet has evolved from
smart people in front of dumb terminals to dumb people in front of smart
terminals.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
