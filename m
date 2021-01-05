Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 889092EA51F
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 07:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD41586826;
	Tue,  5 Jan 2021 06:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmp2AG6Pj8Jf; Tue,  5 Jan 2021 06:02:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AC82864FB;
	Tue,  5 Jan 2021 06:02:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E29201BF2A9
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 06:02:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB682864FB
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 06:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aKPntwyvD2sD for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 06:02:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 625FC860FF
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 06:02:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1FCD2229C4;
 Tue,  5 Jan 2021 06:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609826570;
 bh=MwFJp67565S4WcESb+k1N1SF5psKpjSDfGOeokQMdX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YEIOrjNFBP0UyE4fRLM6Td1P96BdJewfj2mlkdyugu0LMyC7qB9bk/gp11KpU52q2
 R1TlV63ok4bMwZt0d7flO3OSr1c35bt4ZEkdYvtM0dfk8lchYa8+YYY2PnWQt3ftyD
 L4K0Gdp6XQfq9beovv1NfSyuQy62W9ECsBcXzmOM=
Date: Tue, 5 Jan 2021 07:02:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH v3 -next] staging: vc04_services: use DEFINE_MUTEX() for
 mutex lock
Message-ID: <X/QBBTBwz12mrQrM@kroah.com>
References: <20210105020547.19042-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210105020547.19042-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 05, 2021 at 10:05:47AM +0800, Zheng Yongjun wrote:
> mutex lock can be initialized automatically with DEFINE_MUTEX()
> rather than explicitly calling mutex_init().
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_connected.c     | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> index 79b75efa6868..938307f39b9c 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> @@ -12,15 +12,13 @@ static   int                        g_connected;
>  static   int                        g_num_deferred_callbacks;
>  static   VCHIQ_CONNECTED_CALLBACK_T g_deferred_callback[MAX_CALLBACKS];
>  static   int                        g_once_init;
> -static   struct mutex               g_connected_mutex;
> +static   DEFINE_MUTEX(g_connected_mutex);
>  
>  /* Function to initialize our lock */
>  static void connected_init(void)
>  {
> -	if (!g_once_init) {
> -		mutex_init(&g_connected_mutex);
> +	if (!g_once_init)
>  		g_once_init = 1;
> -	}

Why do you still need g_once_init now?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
