Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B26C36B15C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 23:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C98222049;
	Tue, 16 Jul 2019 21:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHvyOpIxq87A; Tue, 16 Jul 2019 21:50:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB7352052C;
	Tue, 16 Jul 2019 21:50:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 394221BF29A
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 21:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35D7F85C77
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 21:50:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlsCMZxJAbvE for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 21:50:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C383F85C0B
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 21:50:28 +0000 (UTC)
Received: from localhost (unknown [113.157.217.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21C7B206C2;
 Tue, 16 Jul 2019 21:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563313828;
 bh=G0Z3+W5+zm4O3AXRhymJcQTu/MjNvBgYP41CWsNye3U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HoHXWOHW/zh+IdYaM/4vfsRzwoOyMKXQA/J8h3OxGqc5zOSkZMuiJ63LAla243XMY
 0jV3VaWbvH0XJ+wrc6Ass0SbW4OQqfzVjlQ2FDRm/1FwQEPxq9uB4C+1AH/BV6hobB
 FqkaBtOopPsgsMlNCtplJXiOqb4GHvNAQsw83YY8=
Date: Wed, 17 Jul 2019 06:50:26 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Karen Palacio <karen.palacio.1994@gmail.com>
Subject: Re: [PATCH] v2: staging: erofs: fix typo
Message-ID: <20190716215026.GA18144@kroah.com>
References: <1563311783-12754-1-git-send-email-karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563311783-12754-1-git-send-email-karen.palacio.1994@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org, yucha0@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 16, 2019 at 06:16:23PM -0300, Karen Palacio wrote:
> Fix typo in Kconfig
> Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>

I need a blank line before the signed-off-by line :(

3rd try?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
