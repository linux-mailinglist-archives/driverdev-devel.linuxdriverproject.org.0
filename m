Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C8E464F4D
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Dec 2021 14:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A93980D6C;
	Wed,  1 Dec 2021 13:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SueWXPITJmYS; Wed,  1 Dec 2021 13:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54DAE80DF9;
	Wed,  1 Dec 2021 13:59:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 406C41BF23C
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 13:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3010740350
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 13:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ynrWyH0uzGBx for <devel@linuxdriverproject.org>;
 Wed,  1 Dec 2021 13:59:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10F354034D
 for <devel@driverdev.osuosl.org>; Wed,  1 Dec 2021 13:59:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5805DB81DCC;
 Wed,  1 Dec 2021 13:58:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B04DC53FAD;
 Wed,  1 Dec 2021 13:58:54 +0000 (UTC)
Date: Wed, 1 Dec 2021 14:58:51 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH v2 3/4] binder: read pre-translated fds from sender buffer
Message-ID: <20211201135851.tv3li4xi5s4hzeeg@wittgenstein>
References: <20211130185152.437403-1-tkjos@google.com>
 <20211130185152.437403-4-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130185152.437403-4-tkjos@google.com>
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

On Tue, Nov 30, 2021 at 10:51:51AM -0800, Todd Kjos wrote:
> This patch is to prepare for an up coming patch where we read
> pre-translated fds from the sender buffer and translate them before
> copying them to the target.  It does not change run time.
> 
> The patch adds two new parameters to binder_translate_fd_array() to
> hold the sender buffer and sender buffer parent.  These parameters let
> us call copy_from_user() directly from the sender instead of using
> binder_alloc_copy_from_buffer() to copy from the target.  Also the patch
> adds some new alignment checks.  Previously the alignment checks would
> have been done in a different place, but this lets us print more
> useful error messages.
> 
> Reviewed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

Looks good.
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
