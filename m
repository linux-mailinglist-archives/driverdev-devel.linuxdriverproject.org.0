Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6E9C13C6
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 09:27:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68764204EC;
	Sun, 29 Sep 2019 07:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85xdeK82VAOi; Sun, 29 Sep 2019 07:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5E0BC20472;
	Sun, 29 Sep 2019 07:27:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B633B1BF302
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 07:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE6A886256
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 07:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8o2LlsnRUndk for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 07:27:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 39F49861D5
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 07:27:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 571AC2086A;
 Sun, 29 Sep 2019 07:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569742020;
 bh=T5Lor7/oHgnBdsjmK0EWQYJljVBiz2JECMy9Sp8pAyg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FiEwX4LeSQarvTfvjBP4aXOh2ZIkg+NnHnMbD+nvo6S3lKjZrLN7m12TAMlFqHk38
 mGEiTJseDCBgATlf/35aROU3niJVJZr+RHJNi//prrBN/UmJsnTD8tXNfL3jimRH1Q
 adPIRJKoYCJLnPH7Q9ZIJAs70CYQeofeNGxn2WEM=
Date: Sun, 29 Sep 2019 09:26:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH 2/3] Staging: exfat: exfat_super.c: fixed multiple coding
 style issues with camelcase and parentheses
Message-ID: <20190929072657.GB1879787@kroah.com>
References: <20190929002233.21998-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929002233.21998-1-jessebarton95@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 28, 2019 at 07:22:33PM -0500, Jesse Barton wrote:
> Fixed coding style issues with camelcase on functions and various parentheses that were not needed

Please wrap your changelog text properly.

Only do one "type" of thing per patch, this should be two different
ones.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
