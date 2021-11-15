Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63885450176
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 10:32:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0655540464;
	Mon, 15 Nov 2021 09:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4PJsg1DNdMGH; Mon, 15 Nov 2021 09:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F91240455;
	Mon, 15 Nov 2021 09:32:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F37541BF336
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 09:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF91D40457
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 09:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YK4kVpEtP_YD for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 09:31:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1AE340455
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 09:31:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC04D61C14;
 Mon, 15 Nov 2021 09:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636968712;
 bh=gvaNIOA2WSbXAoHLUuyg7yyCEmgRbV0AnZ3stqcMUzk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fFN+idGCtjA0hmFeDeOWaqq6J/o3efYm0Tzi1/Y/iWfALB2Lw2ZP4RNQj7bzbGQHq
 0u3rs+zYtUbpXD/KfPslNYTUJtrPYtAtRah3uY5WKIYz2aROzQr7pHFaKJckbh3QA6
 /cq0DDok2uDgNNnEdOed+59HHepSgOwo/QkTXmPw=
Date: Mon, 15 Nov 2021 10:31:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <YZIpBUF1Kv455nIC@kroah.com>
References: <20211114164048.GA134727@t470p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211114164048.GA134727@t470p>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 14, 2021 at 05:40:48PM +0100, Alberto Merciai wrote:
> Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
> Indicator) into linux kernel coding style equivalent 

Odd line break :(

And trailing whitespace :(

> variable "current_rssi".
> 
> References:
> https://www.kernel.org/doc/html/latest/process/coding-style.html
> https://www.cse.iitk.ac.in/users/dsrkg/cs245/html/Guide.htm

Same comments on these links as before.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
