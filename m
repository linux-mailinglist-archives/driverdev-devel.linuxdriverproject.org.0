Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D470D31F164
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 21:52:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD6DC86ACB;
	Thu, 18 Feb 2021 20:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJhILydbvBv5; Thu, 18 Feb 2021 20:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 803AF864B3;
	Thu, 18 Feb 2021 20:52:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63E6F1BF381
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 20:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60AC186C7C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 20:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVMvsydC0RvW for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 20:52:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D913586C5A
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 20:52:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C74E764EBA;
 Thu, 18 Feb 2021 20:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613681548;
 bh=YlPhddCJ8zuydjvINlkwW2QONdBm3qQQoPopDdieDwA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sbLyk+0VYVANhqKokUrhD7ABbEfCU8XsI1lrFZ0yWL/u11rdouEFqjISQRbs+RsKp
 lveCsH/2AM2s52Dai+QZe0kQevGbwh6VyMIgNOTrwIvdgFtTaSt413iRZvHsKM6jUf
 Fyz2dUJ4DuAICPcnLbb+wM+tD43igC2rXTJTTB+o=
Date: Thu, 18 Feb 2021 21:52:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH] staging: kpc2000: code style: fix alignment issues
Message-ID: <YC7TiCzbB+4ppzdk@kroah.com>
References: <20210218202814.14204-1-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218202814.14204-1-knv418@gmail.com>
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
Cc: sergiu.cuciurean@analog.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 11:28:14PM +0300, Nikolay Kyx wrote:
> kpc2000_i2c.c:
> fix WARNING: line length of 124 exceeds 100 columns
> fix CHECK: Alignment should match open parenthesis
> 
> kpc2000_spi.c:
> fix CHECK: Alignment should match open parenthesis

This changelog is a bit odd.

Please read the section entitled "The canonical patch format" in the
kernel file, Documentation/SubmittingPatches for what is needed in order
to properly describe the change.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
