Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E43259D9D
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 19:50:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40B6986A36;
	Tue,  1 Sep 2020 17:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SRPDTAVqR-CK; Tue,  1 Sep 2020 17:50:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A03886A19;
	Tue,  1 Sep 2020 17:49:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A092C1BF384
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 17:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DA4A861F2
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 17:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKNezvKhzyDw for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 17:49:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E32E485BD3
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 17:49:56 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 308B7207D3;
 Tue,  1 Sep 2020 17:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598982596;
 bh=e7h+oZFFyLcbR6/8OfDuGn4bDyd8dwXNm8Vvh+oVvls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oyM4rKR9JWi/zFbeC2kbK6rApHD6EBiMupoOzPyI+LP1Xao6kNMM4PP0d/nVX68HK
 nCVg43w11DOGTq0lZ8oqtZsQQmhHVFbbf0W219Ce5KFDZlOQ9GUIJjn09epL8FJ4eS
 /qgiAs8SXUQJ36C8gGYE+J7TJ9e680bJAir4noVo=
Date: Tue, 1 Sep 2020 19:50:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Antoni Przybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH] staging: gdm724x: gdm_tty: replaced macro with a function
Message-ID: <20200901175024.GA1509755@kroah.com>
References: <20200901161846.111486-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901161846.111486-1-antoni.przybylik@wp.pl>
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

On Tue, Sep 01, 2020 at 06:18:46PM +0200, Antoni Przybylik wrote:
> This approach is more elegant and prevents some problems related to
> macros such as operator precedence in expanded expression.
> 
> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index 6e813693a766..a7db0672e81d 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -27,8 +27,6 @@
>  
>  #define MUX_TX_MAX_SIZE 2048
>  
> -#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
> -
>  static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
>  static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
>  static DEFINE_MUTEX(gdm_table_lock);
> @@ -36,6 +34,11 @@ static DEFINE_MUTEX(gdm_table_lock);
>  static const char *DRIVER_STRING[TTY_MAX_COUNT] = {"GCTATC", "GCTDM"};
>  static char *DEVICE_STRING[TTY_MAX_COUNT] = {"GCT-ATC", "GCT-DM"};
>  
> +static int gdm_tty_ready(gdm *gdm)
> +{
> +	return (gdm && gdm->tty_dev && gdm->port.count);
> +}

You obviously did not even build this patch, which is a bit rude, don't
you think?

:(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
