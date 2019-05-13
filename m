Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B80B91B208
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 10:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 967EC8638F;
	Mon, 13 May 2019 08:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSxSPYnaH5nI; Mon, 13 May 2019 08:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B96B88632F;
	Mon, 13 May 2019 08:44:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0BE1BF360
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 08:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5990886272
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 08:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9xvFL2S1Kgks for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 08:44:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CBA9E86223
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 08:44:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20DD62084A;
 Mon, 13 May 2019 08:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557737041;
 bh=ugMALw/O3cXPViqg+8RfbM4wNDJ1LAMUNwNjIhWmq3k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oeReko0CXz8ySA+Ei2LgTAdAe8Wk/ng0mpVKNPA+6RSldcAGioXQhSeUFhBWJmADV
 orKwl8F7ZL+OLqBZ6MLq7jOisf1eAXWm2uk/jZSejuh1FZFqYLTZV6wnGlGC7595+N
 uVdEz78Hn6PTL2wN73zBvo7PeT1mOYiZdWB9AZ+Q=
Date: Mon, 13 May 2019 10:43:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core fix warning  Comparison to bool
Message-ID: <20190513084358.GB17959@kroah.com>
References: <20190512122449.GA28268@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512122449.GA28268@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>, viswanath.barenkala@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 12, 2019 at 05:54:49PM +0530, Hariprasad Kelam wrote:
> fix below issue reported by coccicheck
> 
> drivers/staging/rtl8723bs/core/rtw_mlme.c:1675:6-10: WARNING: Comparison
> to bool
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You sent 3 patches that do different things, yet have the same subject
line :(

Please fix up and send as a numbered patch series, or better yet, fix
the same thing in the whole file all at ince.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
