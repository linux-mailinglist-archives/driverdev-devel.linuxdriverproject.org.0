Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 029B2804B1
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 08:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16DD986978;
	Sat,  3 Aug 2019 06:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDQ6gJeUrEN2; Sat,  3 Aug 2019 06:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E863864CD;
	Sat,  3 Aug 2019 06:35:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E524F1BF401
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E105B876E3
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HbyMDgrZGi34 for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 06:35:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A39E86E41
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 06:35:31 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B03732087C;
 Sat,  3 Aug 2019 06:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564814131;
 bh=ddEY9ZKdQQxW0ag1cV6aQ593D5nTUSXJmEET1SOsoA0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pNJwB+sesJxLY3pD/SHmcazF+dgZR4OvcTAH7/JIF2fz1F0V8UPi/l6vc/SqaqRqc
 LjW72JgoDXmE6XxM+6KTiBEHbd276x2t/6Z34Rm3HHjiTZSI5r3nz4LzigAJ+QW/9W
 vPbhjLTvNiK3jGcbJzfqQgQKcOKRnH4dBr0EJlgs=
Date: Sat, 3 Aug 2019 08:35:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Fernando Eckhardt Valle <phervalle@gmail.com>
Subject: Re: [PATCH] drivers:staging:isdn:hysdn brace same line if
Message-ID: <20190803063528.GC10186@kroah.com>
References: <20190802195105.27788-1-phervalle@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802195105.27788-1-phervalle@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 02, 2019 at 07:51:05PM +0000, Fernando Eckhardt Valle wrote:
> Fix checkpatch error "ERROR: that open brace { should be on the previous
> line" in drivers/staging/isdn/hysdn/hycapi.c:51.
> 
> Signed-off-by: Fernando Eckhardt Valle <phervalle@gmail.com>
> ---
>  drivers/staging/isdn/hysdn/hycapi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Your subject line does not make sense :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
