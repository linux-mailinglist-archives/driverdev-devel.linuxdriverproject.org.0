Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07BD1C5B09
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 17:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0937E894A2;
	Tue,  5 May 2020 15:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XR3hJoxkpyNz; Tue,  5 May 2020 15:26:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6956C88E10;
	Tue,  5 May 2020 15:26:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 869A61BF2A0
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 15:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 82560204E2
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 15:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5cJhF07N2PX1 for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 15:26:12 +0000 (UTC)
X-Greylist: delayed 00:05:55 by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id 18F8A1FC94
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 15:26:12 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49Gk1Q0mlJz8r;
 Tue,  5 May 2020 17:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588692011; bh=lKiBtlC2rF4WszJJ1J86rqn0pACHMTtp0FdEI1MvRMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ry80H3sPtv1CAGFJdpNJGsCWtrEZWnVjzZdlshBPbJO0L/G7MhL3lunZRtSRQ+v+3
 luXpLU9UIaOj9kcrpbFE2y3PeExxaMP/qCigN2FR1OK9nt6pl7RAQlJfzL6uBfdL1w
 wDEP6CFs8dSWTnbplUCNCWWfubJP9/csGSsknYzgA0FojmokKbrhgr7LO94gn2/J1T
 6S+wF31BXoKyM7yZMOkvcvHtB7kSQVoxBVpk8qQiGJttFKtVjnXlPdBtL8nEBifidN
 S5McqqciBCncRy3Ms3xvVQwcqYywilt/uV7rGhxpSvIDKxNQGvSLPwfoGvNpnB63l3
 r3BOfS4aUhyjw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Tue, 5 May 2020 17:20:08 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 03/15] staging: wfx: fix double free
Message-ID: <20200505152008.GA8277@qmqm.qmqm.pl>
References: <20200505123757.39506-1-Jerome.Pouiller@silabs.com>
 <20200505123757.39506-4-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505123757.39506-4-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 05, 2020 at 02:37:45PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> In case of error in wfx_probe(), wdev->hw is freed. Since an error
> occurred, wfx_free_common() is called, then wdev->hw is freed again.
> =

> Cc: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/main.c | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> index ba2e3a6b3549..5d0754b55429 100644
> --- a/drivers/staging/wfx/main.c
> +++ b/drivers/staging/wfx/main.c
> @@ -469,7 +469,6 @@ int wfx_probe(struct wfx_dev *wdev)
>  =

>  err2:
>  	ieee80211_unregister_hw(wdev->hw);
> -	ieee80211_free_hw(wdev->hw);
>  err1:
>  	wfx_bh_unregister(wdev);
>  	return err;

Reviewed-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
Fixes: 4033714d6cbe ("staging: wfx: fix init/remove vs IRQ race")
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
