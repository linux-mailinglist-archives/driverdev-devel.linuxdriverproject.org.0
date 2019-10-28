Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B82E7561
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:44:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD2348738B;
	Mon, 28 Oct 2019 15:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qXgQMlxMlXu4; Mon, 28 Oct 2019 15:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80D3A8737E;
	Mon, 28 Oct 2019 15:44:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE2B1BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AA2E8737E
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o5yNmw2H+DXg for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:44:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8A2F88721E
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:44:25 +0000 (UTC)
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7C0421721;
 Mon, 28 Oct 2019 15:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572277465;
 bh=Vw6GOlLIyJWbHl6tEVCiGyfOHiOuVzP1YEeoEouPlrI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lxr5gjwtJws1NFeA95O9WSVj2uSK/rojrJTVK2xhh+mVH/CLQJDiZ5+PA94LPgbgb
 huhy7AyJbIM9Yl7YUmv4dOq+lbNbZpIE/6PI6qQkmM7uxe+/lEkSzxyJIG545ytvh6
 cDoQJiZs3NnreiGaTfBO2YX406o9LXXpAKGicejQ=
Date: Mon, 28 Oct 2019 16:44:22 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [PATCH v4 2/2] staging: rtl8712: Remove lines before a close brace
Message-ID: <20191028154422.GA170402@kroah.com>
References: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
 <359179720fcf90dd7aa35faab5d074bc829fa192.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <359179720fcf90dd7aa35faab5d074bc829fa192.1572276208.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Julia Lawall <julia.lawall@lip6.fr>, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 12:39:08PM -0300, Cristiane Naves wrote:
> Fix Blank lines aren't necessary before a close brace '}'. Issue found
> by checkpatch.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 2 --
>  1 file changed, 2 deletions(-)

This patch did not apply to my tree, it was already present.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
