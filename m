Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B622320C6D
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 19:10:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D696283638
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 18:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QXxs435Xoml6 for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 18:10:29 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 88B3A835ED; Sun, 21 Feb 2021 18:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1AD083289;
	Sun, 21 Feb 2021 18:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98CDA1BF3BD
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 18:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92956844D5
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 18:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIAeWmVEMhou for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 18:10:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9242685821
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 18:09:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B2D1764E44;
 Sun, 21 Feb 2021 18:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613930966;
 bh=1yPfCwVhYqpXNklZn8fW7ZXjCmje+8uM72sUYiafzAM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M1+tg246AyNda5RdokK+G+rMEtWBnW32RNfjyowLv3EHD/8lZPK2uDIgSS0vHweGz
 8UaMg/mv8JBi0KBinY7L5qXCIfUR813yHCaTX0CRdPcqAg/9EevAw0ozSGHpVEn4m3
 N2Blf+culgf1HrFSOZw+2rKOhw0hjFEGQcK+mfok=
Date: Sun, 21 Feb 2021 19:09:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amrit Khera <amritkhera98@gmail.com>
Subject: Re: [PATCH v2] staging: wimax: Fix block comment style issue in
 stack.c
Message-ID: <YDKh02dQMhPdLlef@kroah.com>
References: <20210221163758.2996-1-amritkhera98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221163758.2996-1-amritkhera98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 mail@anirudhrb.com, memxor@gmail.com, kuba@kernel.org,
 johannes@sipsolutions.net, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 10:07:59PM +0530, Amrit Khera wrote:
> This change fixes a checkpatch warning for "Block comments
> use * on subsequent lines".

That's not all this patch does, please be descriptive of what you really
do and why you are doing it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
