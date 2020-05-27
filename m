Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0801E3BB8
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 10:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8167385516;
	Wed, 27 May 2020 08:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8zxBCFkualqA; Wed, 27 May 2020 08:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8DA1484789;
	Wed, 27 May 2020 08:15:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA0501BF844
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A6A93877D3
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Qpw0Rn4ALQ0 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 08:15:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 32F1E8768A
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 08:15:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78FF5208B8;
 Wed, 27 May 2020 08:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590567335;
 bh=FgEJNJxnkD29tnmwm4kxlLiPKgLjVh209CcrJrd9R8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=akFgrBu9QyImdWbTpRA2alV+Jkys5EaIaOQ2RQwKzd9d6GerSO6fjyd4atnru3GTe
 lAHkkotroGtwywU2/tUw6sWYsjRjuXtZR+w/gHoXpeXWxTCHwh9s99rVJsYZ7QszTF
 S717mT3Y2Q8DgmBGKZ02yCRMN/P4Xdo8HJGWk+0M=
Date: Wed, 27 May 2020 10:15:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH] staging: rtl8723bs: Use shared header constants
Message-ID: <20200527081532.GA122680@kroah.com>
References: <20200523212919.33181-1-pterjan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523212919.33181-1-pterjan@google.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 23, 2020 at 10:29:19PM +0100, Pascal Terjan wrote:
> This is one of the 9 drivers redefining rfc1042_header.

I do not understand what this changelog is trying to say.  Can you fix
this up to be more explicit and detained and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
