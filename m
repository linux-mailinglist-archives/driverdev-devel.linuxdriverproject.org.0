Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1802127758D
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 17:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9949786A94;
	Thu, 24 Sep 2020 15:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T16mxZqKymDO; Thu, 24 Sep 2020 15:37:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8172586A24;
	Thu, 24 Sep 2020 15:37:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9E271BF59B
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 15:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F11320453
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 15:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rntUtd98NzX5 for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 15:37:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C4E6A1FF11
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 15:37:00 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C221622208;
 Thu, 24 Sep 2020 15:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600961820;
 bh=/cGqNUHp0D6orsIJY1ALWDj9FM1YLGdTBkqKwjo4014=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yYeD9mddBetQ/EVaHClCOdTJDgj2r57fhsPcJbBKWlwoLYWn0iwsYROhtfFBOBhrw
 +Om5sZMPJkm3mKC7+Sivo3gxvaOLNKc3uZmXlmvK6Zhu7552brXh0VrBk+3jPUCbyo
 eWXEbOg8wFjfZel6YWESiHwP0vuzt/ZQCn3jjZn4=
Date: Thu, 24 Sep 2020 17:37:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Srinivasan Raju <srini.raju@purelifi.com>
Subject: Re: [PATCH] staging: Initial driver submission for pureLiFi devices
Message-ID: <20200924153716.GB1171035@kroah.com>
References: <20200924151910.21693-1-srini.raju@purelifi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924151910.21693-1-srini.raju@purelifi.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, pureLiFi Ltd <info@purelifi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, mostafa.afgani@purelifi.com,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 08:48:51PM +0530, Srinivasan Raju wrote:
> +++ b/drivers/staging/purelifi/chip.c
> @@ -0,0 +1,184 @@
> +// SPDX-License-Identifier: GNU General Public License v2.0 or later

That's not a valid SPDX identifier :)



> +/* Copyright (c) 2015-2020 pureLiFi Ltd
> + * All rights reserved.
> + *
> + * Copyright (C) 2015-2020 pureLiFi <info@purelifi.com>
> + * Copyright (C) 2006-2007 Daniel Drake <dsd@gentoo.org>
> + * Copyright (C) 2005-2007 Ulrich Kunitz <kune@deine-taler.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.

These paragraphs are not needed with a SPDX line above.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
