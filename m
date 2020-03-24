Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96891916BA
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 17:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E65C788C62;
	Tue, 24 Mar 2020 16:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EaJp4FREnvJW; Tue, 24 Mar 2020 16:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B17688933;
	Tue, 24 Mar 2020 16:44:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A70A11BF2A3
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 16:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 959362153B
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 16:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ruZmniSVOiSe for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 16:44:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 011F920530
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 16:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585068241;
 bh=uDoUJhkJb4hl+iIZ1m2XaAjLxBbKQqeDdd8yxFyi3Lw=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=F5i6vnOXk4KGVO9jJrZMf2E0ahKx9oCRr5pwlnRhp/89kyS+k7FuDf4VkOKT2GB26
 WiQL/GfTIidtZ8QdvhV+ZxrDh4AuBOeZEtpsIWm/f9YHIq4OM1bru7ywhEI87t9uVO
 iA/gVa6UdXurJn8FG+Ky/qP70TAnoU3HpwrDcG1Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MxDkw-1jRxkW3PdQ-00xdpA; Tue, 24
 Mar 2020 17:44:00 +0100
Date: Tue, 24 Mar 2020 17:43:45 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: Use DIV_ROUND_UP macro instead of
 specific code
Message-ID: <20200324164345.GA3288@ubuntu>
References: <20200322112342.9040-1-oscar.carter@gmx.com>
 <20200323104200.GA501377@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323104200.GA501377@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:52Pz4aGzyfh4T83UpBCKGpJwia/di0Cgm2N8bT4Qi2nskYuj65m
 ROFRFsPh+NT/E9sm98QNva4ILouiGnGF1XouJRF3SPSKaLBsOxs/OBOksTsYXZdidEjVWgn
 nahL8N+ShzLXoB0IMC/K7cfUiqBDAD1A4GEzulcSthLUhb/+nGnOoQ6RkvRETfrPos+bv6i
 46tV4FCSrJ+xcRe+4ylRQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:M3qT6mZ0I4o=:Yz/q0MgsTiX+deJiv5SVgP
 OcOtsYY3cZWP+gjL8c7Q3tU9NHtbMjFkyV/5l4NbCvWjn0LlJVyD9QSlOtimNaHvIuw4Usx2+
 i3EkCJ167XETU8eL8voOkTuSGeK3V1nd5NXrlUBfZZ3cHI2Af4wPtjMbOp4Gjw7w3yZvZ/EZF
 ykAJuPI8Xx3yqJUfZPRM0i+QqSIRFOy3GG+8wb7geHsK0q3HDv6N96qIG+rXBzznBZPaS9J0m
 qjXPvIYySJML3w18sME7nzerBq3oXVWYhjaF1RFcBCc8FlpXd8/h2KCDzkKaTOTmo+yeC2LeW
 caNleMzZU5TLe4pS9CxFAtBk2tLPf+9NVEuFeE5s8NkAJkLese20JVNekNv74woIgxoQ+QPtx
 w/3B+1bWW3vI9JE0nbP8E1pjeHzLLWgZhR49Jzpn71l8KX2wfydGen8TBcUz6MGuIfrNelIMz
 608Bd+t7tUyl1MM+K+WAH6RfKZC5W/toAzwR6xU6YUL5+aMnuSdW221OB/MhNkPU5N3R9fdwE
 35rZkUz8dBfnGjxs5w+DMxBr/E5FISCUQcFbYWZYSmQte49bVoE8C5CgV84acj0EQZy5bHeQk
 prdjEDSK+les30X9Y6uMFZxoOQPmCsx0Ol16eF3Cr3gaMeEd6y2OnviLl/K4jli9IUokc6uWj
 GhqdNWZMwxCm5oWr9/U9IeOaXdBB+1gCORftxNRBk/2jh9E/UVL3ZYnyCv9oG9vybNLtweIat
 YRC7Qje9/61ZerQw9/Qz9k3FpsoclGcKhduyG0HG5blcZgOUJrP8lFxdUQCQqFAFOw1ymCj55
 fNnqOIZhdwp7XZjjIOB7EqqnGe9KumNHkj22Mvys8I6i2ON0VRzGhGz8QyrMxHaaOU4IhxeMC
 fqS7sbRrPWJSqge71LhL7phgxZ1ODMOociWlF4l86fmXscCFEyc85+/vckKX4CV8vFVx564Vc
 pZcxPOMFtsIUl3Ixgze2PcbJtgzUdJEwAiQ8t2Y/tcgg9vrSayqBVrzz8CH0z3sZNSiKoUjiA
 hRCGq/RVX12mtnOgHhgpKpE8TGqpRasf7s7yc1caj8opgS/8RptrNLgHSTyHQYgKrJB1LRBTg
 50Ow/X2WIpWlt9wgRnSDMq9gapTDOQU6OoBP88mAYAe2av0X+jwxTcq1SHtXPvy3/s9joVe4L
 ACqR39go4zfUOh7PGs6rYz6JlvVYLjJWRVNtOUHtviK1sHNAG91wquHMGWzzVpxyNooNxyIvt
 Vr9ybXD4slatf/k+e
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 23, 2020 at 11:42:00AM +0100, Greg Kroah-Hartman wrote:
> On Sun, Mar 22, 2020 at 12:23:42PM +0100, Oscar Carter wrote:
> > Use DIV_ROUND_UP macro instead of specific code with the same purpose.
> > Also, remove the unused variables.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/vt6656/baseband.c | 21 ++++-----------------
> >  1 file changed, 4 insertions(+), 17 deletions(-)
>
> Please rebase this against my staging-next branch of my staging.git tree
> and resend it as it does not apply to it at the moment at all.
>
Ok, I rebase against your staging-next branch and I resend the patch as a new
version.

> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
