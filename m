Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A81A18B91D
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 15:14:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 924FA869BC;
	Thu, 19 Mar 2020 14:14:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z09_u7wVggp0; Thu, 19 Mar 2020 14:14:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8E54868E5;
	Thu, 19 Mar 2020 14:14:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EECB1BF3EE
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05650204E3
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqTNbsksavUK for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:14:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F2FF20386
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 14:14:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6CAE20CC7;
 Thu, 19 Mar 2020 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584627249;
 bh=EK3oqHnfW407s1LGO+NIAAIkdgKa4ahtcL59O1jVjEo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=El71rJqCB3hX4oOYmlM2JqGy1pynzaDWorKEgZsRfUb5ds3eN3NOj6WMX8KtdFlPE
 chQ7BZEHSWYdLaqV8FA7QzZzMU4iyY/AfJkjVLkHLhD/Oqz7tq1ZFAHKDAAKXHR6mp
 QH2kF0Ac3asb+4bjQrJUpt2pQK9Psd/dHNCBfR4E=
Date: Thu, 19 Mar 2020 15:14:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8192u: Corrects 'Avoid CamelCase' for
 variables
Message-ID: <20200319141406.GA41281@kroah.com>
References: <20200318211205.188-1-c.cantanheide@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318211205.188-1-c.cantanheide@gmail.com>
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
Cc: devel@driverdev.osuosl.org, lkcamp@lists.libreplanetbr.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 18, 2020 at 09:12:05PM +0000, Camylla Goncalves Cantanheide wrote:
> The variables of function setKey triggered a 'Avoid CamelCase'
> warning from checkpatch.pl. This patch renames these
> variables to correct this warning.
> 
> Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 52 +++++++++++++-------------
>  1 file changed, 26 insertions(+), 26 deletions(-)

This does not apply to my tree at all :(


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
