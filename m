Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3561A6696
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE4C120481;
	Mon, 13 Apr 2020 12:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJV0e8TxKYfv; Mon, 13 Apr 2020 12:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 133BA2040A;
	Mon, 13 Apr 2020 12:58:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA3531BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E6ED120404
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JJpK9V+suFX2 for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:58:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 66293203FF
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:58:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9BBF2073E;
 Mon, 13 Apr 2020 12:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782690;
 bh=IuesiDdKuTFLdMkQnFkzjJmikYEfulB5uV/jLl08rjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xZtaYU17UeaAIkLF9UXgHgSF2mMm8QOYQDtu2x4MeTJew13bk69BH3xeXewew6SM8
 fufkJS3Q4Xq7SAH0D3nmNN+aa6hGmKq/72syMNVpUA5MpryegVI4nxe22dB67PZ8Fh
 ll20MIUHL+YLHf7zMNYgtxyQcyS7aV+IZ/JcMMgM=
Date: Mon, 13 Apr 2020 14:58:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT() macro instead of bit shift
 operator
Message-ID: <20200413125808.GA3140872@kroah.com>
References: <20200412093311.5279-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412093311.5279-1-oscar.carter@gmx.com>
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
 Colin Ian King <colin.king@canonical.com>,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 12, 2020 at 11:33:11AM +0200, Oscar Carter wrote:
> Use the BIT() macro instead of the bit left shift operator. So the code
> is more clear.
> 
> It's safe to remove the casting to u16 type because the value obtained
> never exceeds 16 bits. So the casting is unnecessary.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/card.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This too did not apply :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
