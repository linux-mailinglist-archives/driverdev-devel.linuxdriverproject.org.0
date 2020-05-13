Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D39E61D11E9
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 13:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A4A722098;
	Wed, 13 May 2020 11:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGbMZXbzA0IF; Wed, 13 May 2020 11:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7921121F65;
	Wed, 13 May 2020 11:56:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DEDC1BF4DB
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7645F86D16
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYpdhRaRQ5gl for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 11:56:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E9DD86D22
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 11:56:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5C18206CC;
 Wed, 13 May 2020 11:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589370963;
 bh=JBhLl7MfUCS5IJ2eW+T1ci2N1MDfEAyW0mk4rekhbUU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fusTrhbqb2rs17wl1cCQHfTGLDTWjurXiZ1Y7GEjb8b1DT8LoWjlilieWU+14lzTY
 E95XDdkRx7fKAgSAnSYViVqqpUuNaxykiLdn4cj7jCksJUZybY1Trl39qQok52aydx
 skfqgeMIr2i+Yx8CdOrfdIac5IOn4RKQfCJ3Ew4M=
Date: Wed, 13 May 2020 13:56:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matej Dujava <mdujava@kocurkovo.cz>
Subject: Re: [PATCH v2 2/2] staging: vt6655: vt6656: change order of makefile
 variable definitions
Message-ID: <20200513115600.GB953616@kroah.com>
References: <1589105615-22271-1-git-send-email-mdujava@kocurkovo.cz>
 <1589105615-22271-3-git-send-email-mdujava@kocurkovo.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589105615-22271-3-git-send-email-mdujava@kocurkovo.cz>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 10, 2020 at 12:13:35PM +0200, Matej Dujava wrote:
> This patch will add indentation to multiline variable and put obj-$(CONFIG_X)
> at the begining of the file.

Why change the order?  What does that fix?  Why do this?  You say what
you do here, but not why.  And without that, I can't see the reason to
accept this patch :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
