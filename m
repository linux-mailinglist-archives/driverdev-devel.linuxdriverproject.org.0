Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EDF178AEE
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 07:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D05168679A;
	Wed,  4 Mar 2020 06:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpISm4gGrJVp; Wed,  4 Mar 2020 06:51:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D599484DFD;
	Wed,  4 Mar 2020 06:51:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF4801BF85D
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A827D84E0C
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C7Y8Oufmp+UL for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 06:51:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1222C84DFD
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 06:51:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71BF72146E;
 Wed,  4 Mar 2020 06:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583304664;
 bh=rpXCbKBh+vkhu4LbxUhgsvfrgYX9A2Td2iWADRYckww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ad49lQTddtod21WVnwNAtbRcaubnjHb7ywOUcCLGELj0/J9F/cHoMl5pgpF7Cjfq8
 rKs5a1jIPJ0hLQ/OcSYBfmIY8wegBOSoFsDQK2LW1ff4OXd0aIh+bX+R4nU3q4gYbY
 0yJ9bMlmikVXidhO09oWCIA3omblTrGuwF5G7OkA=
Date: Wed, 4 Mar 2020 07:51:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
Subject: Re: [PATCH] staging: wilc1000: spi: Use new structure for SPI
 transfer delays
Message-ID: <20200304065102.GA1232845@kroah.com>
References: <20200227145054.24567-1-sergiu.cuciurean@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227145054.24567-1-sergiu.cuciurean@analog.com>
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
Cc: devel@driverdev.osuosl.org, ajay.kathat@microchip.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 adham.abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 27, 2020 at 04:50:54PM +0200, Sergiu Cuciurean wrote:
> In a recent change to the SPI subsystem [1], a new `delay` struct was added
> to replace the `delay_usecs`. This change replaces the current
> `delay_usecs` with `delay` for this driver.

Please also fix this one up based on the comments Dan provided for your
other "Use new structure..." patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
