Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 209AB81FDB
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 17:11:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C07720554;
	Mon,  5 Aug 2019 15:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Y1KcsxJJpPX; Mon,  5 Aug 2019 15:11:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEF0A20763;
	Mon,  5 Aug 2019 15:11:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 406B21BF2FC
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 15:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A40D86631
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 15:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J5mWFkRv12cp for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 15:11:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C1555865A1
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 15:11:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F24221734;
 Mon,  5 Aug 2019 15:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565017890;
 bh=h6ddiNuKrnZ94s6swCUNGAiEpj4t8uRpUWPS6gppxxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n1ebBBgQjjxEoAQUMgojCEmWiEU4KWKz+dXhXQnfUzsxgr2r6TkJUEXecJKaOEPwG
 8LlAesDvobAOZZBITQbda3PMLgrxyrj6/UdVDy72GfjdyzLmrZA99oHrTO1F5X+vC4
 K05Bankr4LlTLBtUIU3c9I1cRa4Ienm2hdi5uSf4=
Date: Mon, 5 Aug 2019 17:11:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Add NULL check post kzalloc
Message-ID: <20190805151128.GA16140@kroah.com>
References: <20190804034904.GA16513@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804034904.GA16513@hari-Inspiron-1545>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Colin Ian King <colin.king@canonical.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 John Whitmore <johnfwhitmore@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 04, 2019 at 09:19:05AM +0530, Hariprasad Kelam wrote:
> Collect returns status of kzalloc.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)

Does not apply to my tree :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
