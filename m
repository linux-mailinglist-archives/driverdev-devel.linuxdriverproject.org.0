Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E42D464F39
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Dec 2021 14:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AD1540522;
	Wed,  1 Dec 2021 13:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VML-6bUDrNE5; Wed,  1 Dec 2021 13:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BB1340360;
	Wed,  1 Dec 2021 13:55:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2852C1BF349
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 13:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2534F81B0A
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 13:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MiqIh-5T-1JM for <devel@linuxdriverproject.org>;
 Wed,  1 Dec 2021 13:54:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5923D81B01
 for <devel@driverdev.osuosl.org>; Wed,  1 Dec 2021 13:54:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5887BB81F42;
 Wed,  1 Dec 2021 13:54:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E0FFC53FCC;
 Wed,  1 Dec 2021 13:54:46 +0000 (UTC)
Date: Wed, 1 Dec 2021 14:54:42 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH v2 2/4] binder: avoid potential data leakage when copying
 txn
Message-ID: <20211201135442.d4r3va2q75rressv@wittgenstein>
References: <20211130185152.437403-1-tkjos@google.com>
 <20211130185152.437403-3-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130185152.437403-3-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 Martijn Coenen <maco@android.com>, avakj45@gmail.com, joel@joelfernandes.org,
 kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 30, 2021 at 10:51:50AM -0800, Todd Kjos wrote:
> Transactions are copied from the sender to the target
> first and objects like BINDER_TYPE_PTR and BINDER_TYPE_FDA
> are then fixed up. This means there is a short period where
> the sender's version of these objects are visible to the
> target prior to the fixups.
> 
> Instead of copying all of the data first, copy data only
> after any needed fixups have been applied.
> 
> Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> Reviewed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

Looks good.
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
