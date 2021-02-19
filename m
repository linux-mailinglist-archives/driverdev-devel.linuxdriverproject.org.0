Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AEE31F918
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 13:12:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06A3A8749D;
	Fri, 19 Feb 2021 12:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kcfZzRWHIGBy; Fri, 19 Feb 2021 12:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A24E873DB;
	Fri, 19 Feb 2021 12:12:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97DEE1BF364
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9371D6068A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:12:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14fP6hyDwXqj for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 12:12:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id EF4BA606A0; Fri, 19 Feb 2021 12:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D16EC6068A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 12:12:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A737E64EB4;
 Fri, 19 Feb 2021 12:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613736772;
 bh=27G0mHrkiKn+ATMAMSd0f3I4UspBzL+n7VxlYry3kvc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H8UHaXPmNDmP5agVP8Pxg2g4m3sNrh0Yo8Xie4eBlDCkmIU1is8yb/xaeS4wpk4CS
 0irBoIgccAVvLo1wzZT645BAQDXfF4uZCt4Zkz9cDyb0X4mZgzSwAXgHfZFE3Q3Vdo
 uM9ju6uKVQwaWDAefC53Qd6qmP1mMEE1eglrCtaU=
Date: Fri, 19 Feb 2021 13:12:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amrit Khera <amritkhera98@gmail.com>
Subject: Re: [PATCH v2] staging: android: Fix const keyword style issue in
 ashmem.c
Message-ID: <YC+rQZoFaT+mPxVL@kroah.com>
References: <20210219114237.5720-1-amritkhera98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219114237.5720-1-amritkhera98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, surenb@google.com,
 linux-kernel@vger.kernel.org, hridya@google.com, arve@android.com,
 joel@joelfernandes.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 05:12:38PM +0530, Amrit Khera wrote:
> This change fixes a checkpatch warning for "struct file_operations
> should normally be const".
> 
> Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
> ---
> Changes in v2:
>  - Wrapped the commit description
>  - Build tested

If you tested it, what changed in the diff itself?  Looks the same to
me...

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
