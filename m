Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C46A80F5
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 13:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B23038757E;
	Wed,  4 Sep 2019 11:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dSb12-ey6W09; Wed,  4 Sep 2019 11:18:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24BAD877E4;
	Wed,  4 Sep 2019 11:18:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4A11BF40D
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 11:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A32B8610A
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 11:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4gli4GmKpvd for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 11:18:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0DB50874D4
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 11:18:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F1172070C;
 Wed,  4 Sep 2019 11:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567595895;
 bh=yWHSdjU4d8AfL0jzEfSB6FGw86nKw1rLFil3xWXTB8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ljyBKRce4TyB4opLJqu+fdtEWMtEIFm7m8rig7Tp3/dm4FtuiWPE1iccLLQ/57t4z
 OUpwFtU83OHzRA3y3GvY1atc6N+EVMfkUtJ0sSctOLFOfZ1/BnNs+BZeYwf/AVZjnN
 vhNst0tv4rVEAvIhnrjYEZXvklmBinztK/kXVOms=
Date: Wed, 4 Sep 2019 13:18:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [RESEND PATCH v3 0/2] Add default binderfs devices
Message-ID: <20190904111805.GA10949@kroah.com>
References: <20190808222727.132744-1-hridya@google.com>
 <20190904110704.8606-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904110704.8606-1-christian.brauner@ubuntu.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 hridya@google.com, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 01:07:02PM +0200, Christian Brauner wrote:
> Hey,
> 
> This is a resend of Hridya's series to add default binderfs devices. No
> semantical changes were made. Only Joel's Acks were added by me.
> 
> Binderfs was created to help provide private binder devices to
> containers in their own IPC namespace. Currently, every time a new binderfs
> instance is mounted, its private binder devices need to be created via
> IOCTL calls. This patch series eliminates the effort for creating
> the default binder devices for each binderfs instance by creating them
> automatically.

All now applied, thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
