Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF5611877E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 13:01:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB80785F72;
	Tue, 10 Dec 2019 12:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l8D9Wv0w_-zX; Tue, 10 Dec 2019 12:01:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F11D985F49;
	Tue, 10 Dec 2019 12:01:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 830C81BF981
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 12:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C99785F50
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 12:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id If_JOlaACxQp for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 12:01:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0ADA785F49
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 12:01:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3008920726;
 Tue, 10 Dec 2019 12:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575979282;
 bh=rjM38HyV7X4Jc0xazOMgdtH5goM5XesQuqArDXIboDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AXDFjJefm9aQ3sxtR1LKPNgzfZluVJFkzzSwO8ik6SniAiDJNQnRPKVZx9SItAVpp
 3WA9ypIGTiEkvIx/sEW0i4hd0MkC8DsAzpiyUCRI2JgA5HUctbDj6/0XxPsRAu1cR5
 2bE/oLO+8h3LKlD2oxD23hIFPxCMS3maLun0JeWI=
Date: Tue, 10 Dec 2019 13:01:20 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20191210120120.GA3779155@kroah.com>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
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
Cc: devel@driverdev.osuosl.org, Branden Bonaby <brandonbonaby94@gmail.com>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>, Paul Burton <paulburton@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Florian Westphal <fw@strlen.de>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 David Daney <ddaney@caviumnetworks.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Valery Ivanov <ivalery111@gmail.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 12:40:54PM +0100, Sandro Volery wrote:
> Doesn't octeon have drivers out of staging already?
> What is this module for?

I have no idea :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
