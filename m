Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C3425B171
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4A9686A90;
	Wed,  2 Sep 2020 16:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 863NnUfSLjgo; Wed,  2 Sep 2020 16:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAE1A86A47;
	Wed,  2 Sep 2020 16:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3F331BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ABDF8228E7
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cTQb7AtEOJ5T for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:21:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id B4CFD228E2
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=g7CwtEKfB8taAJKHOl+B6Vy77KBez7Wj8qfNT2rp9Q8=; b=icEHl0iwQMQYNoukIz5Ou1aSLu
 cIXyBjtpqAND+i1q+6USzF61JoghiwGPI1sXjsx2XZgtc3DqBNrAgZqsWeDiVP4MqZq/tWvtvWkHA
 fRImhcbj1e8OJB5uT3Sb/jppb92jUTTRYmXoXgIY1f/UPMz8h7z/g6+lbUxYsiPc9e7YmjRkHpfK/
 6zpw2RSeST1hgiMoxYxS0GeuWcwGIpqdoguHgeAH23e+Ys8oMJ9/EqpzaX0Dw2Ytl9GYW8DZa9NKL
 eHuH7HEgil7yPzifbQ3D06FxGGVL8fSe1GVuFHcdJ2brhvdoTA3r1Rvu21A4S/h+alq1k2xgKfk5s
 EShTcTEg==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDVVY-0006fb-ST; Wed, 02 Sep 2020 16:21:13 +0000
Subject: Re: [PATCH v2 2/2] staging: gdm724x: gdm_tty: replaced macro with a
 function
To: Antoni Przybylik <antoni.przybylik@wp.pl>, gregkh@linuxfoundation.org
References: <20200902161627.64686-1-antoni.przybylik@wp.pl>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <14c3b5c1-a5d8-3843-6538-5f76c4b8d6df@infradead.org>
Date: Wed, 2 Sep 2020 09:21:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200902161627.64686-1-antoni.przybylik@wp.pl>
Content-Language: en-US
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

On 9/2/20 9:16 AM, Antoni Przybylik wrote:
> Changed return type to bool and removed inline specifier. Also added
>  static specifier.

why remove the inline specifier?
thanks.

> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index 34a13d98c029..179fc9b9400b 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -34,7 +34,7 @@ static DEFINE_MUTEX(gdm_table_lock);
>  static const char *DRIVER_STRING[TTY_MAX_COUNT] = {"GCTATC", "GCTDM"};
>  static char *DEVICE_STRING[TTY_MAX_COUNT] = {"GCT-ATC", "GCT-DM"};
>  
> -inline int gdm_tty_ready(struct gdm *gdm)
> +static bool gdm_tty_ready(struct gdm *gdm)
>  {
>  	return (gdm && gdm->tty_dev && gdm->port.count);
>  }
> 


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
