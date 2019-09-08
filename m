Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DCDACECE
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 15:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1628C85721;
	Sun,  8 Sep 2019 13:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R5ZF+NPIcStC; Sun,  8 Sep 2019 13:05:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2D1285497;
	Sun,  8 Sep 2019 13:05:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5E5D1BF40F
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3758203F7
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uo5sHXV1f9OC for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 13:05:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CAB420358
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 13:05:42 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7829218AC;
 Sun,  8 Sep 2019 13:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567947942;
 bh=BpW4G5OlFYRFsnxzK33LDdwhTu34uQdmEC2uXFJp6yM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2b8pD7oAMf/WbISUFj4dZEZY7/kzIq8ILCK6Xa7aUj20hiIn9J+jvAB+hBe+Ztmpp
 145C/IiE4qk3vVQuCEwDjpgbHYmgDrsHz4rodwYUG6YlSo0L17VoZYVtLqrYQqHcef
 3/WClAIQyJmuWh9q0f9nsx9pWI1sOyD2jOJg51xk=
Date: Sun, 8 Sep 2019 14:05:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: hariprasad@osuosl.org, Kelam@osuosl.org, hariprasad.kelam@gmail.com
Subject: Re: [PATCH] staging: exfat: make use of kmemdup
Message-ID: <20190908130540.GA9394@kroah.com>
References: <1567934921-6475-1-git-send-email-hariprasad.kelam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567934921-6475-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 02:58:41PM +0530, hariprasad@osuosl.org wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> 
> fix below issue reported by coccicheck
> drivers/staging//exfat/exfat_super.c:2709:26-33: WARNING opportunity for
> kmemdup
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

This doesn't apply to my tree at all, what did you make it against?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
