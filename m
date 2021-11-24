Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C51E645B63D
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 09:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDC7660BFE;
	Wed, 24 Nov 2021 08:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knMSrEoU8U3j; Wed, 24 Nov 2021 08:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5151760747;
	Wed, 24 Nov 2021 08:08:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CED911BF59C
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 08:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAFD060747
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 08:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dNQbVgr6cJfP for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 08:08:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57B28606A7
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 08:08:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 791C960F5B;
 Wed, 24 Nov 2021 08:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637741312;
 bh=1NSSGZakyFSkH/5hGZkPw4LSekwBgb1VQXJhO1JRewU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uRIx1CVZS07maXXavDK/97Meex4EaYeyCRXYDdJEh0Yw6LAhfDp6iYFo02Fgrlhor
 82vmxXbqCycZmwlzLkFPuddR9pICsi7x72XLdLdbA3j3/I89gH7ZYAyvkkpZBimW6W
 MFILnRiTjiKfp/PsQCGQGo8xCHApiciSfCXcnOTw=
Date: Wed, 24 Nov 2021 09:08:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 0/3] binder: Prevent untranslated sender data from being
 copied to target
Message-ID: <YZ3y/aYUeC5HSXk0@kroah.com>
References: <20211123191737.1296541-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-1-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, arve@android.com,
 maco@google.com, joel@joelfernandes.org, kernel-team@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 23, 2021 at 11:17:34AM -0800, Todd Kjos wrote:
> Binder copies transactions directly from the sender buffer
> to the target buffer and then fixes up BINDER_TYPE_PTR and
> BINDER_TYPE_FDA objects. This means there is a brief time
> when sender pointers and fds are visible to the target
> process.
> 
> This series reworks the the sender to target copy to
> avoid leaking any untranslated sender data from being
> visible in the target.
> 
> Todd Kjos (3):
>   binder: defer copies of pre-patched txn data
>   binder: read pre-translated fds from sender buffer
>   binder: avoid potential data leakage when copying txn
> 
>  drivers/android/binder.c | 442 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
>  1 file changed, 387 insertions(+), 55 deletions(-)

Are these changes needed now in 5.16-final and also in stable kernels?

Or can they wait until 5.17-rc1?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
