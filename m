Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EEE464F41
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Dec 2021 14:57:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDDF04051D;
	Wed,  1 Dec 2021 13:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxSGhoVVpHQU; Wed,  1 Dec 2021 13:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B42B140360;
	Wed,  1 Dec 2021 13:57:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E36C1BF349
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 13:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68A1D405E3
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 13:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lTMtHcsu9Zc7 for <devel@linuxdriverproject.org>;
 Wed,  1 Dec 2021 13:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BE91405BC
 for <devel@driverdev.osuosl.org>; Wed,  1 Dec 2021 13:57:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 659B2CE1ECB;
 Wed,  1 Dec 2021 13:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E967EC58324;
 Wed,  1 Dec 2021 13:49:51 +0000 (UTC)
Date: Wed, 1 Dec 2021 14:49:48 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH v2 1/4] binder: fix handling of error during copy
Message-ID: <20211201134948.iq4tcgz6r4e2tus7@wittgenstein>
References: <20211130185152.437403-1-tkjos@google.com>
 <20211130185152.437403-2-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130185152.437403-2-tkjos@google.com>
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
 Dan Carpenter <dan.carpenter@oracle.com>, avakj45@gmail.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 30, 2021 at 10:51:49AM -0800, Todd Kjos wrote:
> If a memory copy function fails to copy the whole buffer,
> a positive integar with the remaining bytes is returned.
> In binder_translate_fd_array() this can result in an fd being
> skipped due to the failed copy, but the loop continues
> processing fds since the early return condition expects a
> negative integer on error.
> 
> Fix by returning "ret > 0 ? -EINVAL : ret" to handle this case.
> 
> Fixes: bb4a2e48d510 ("binder: return errors from buffer copy functions")
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

Looks good.
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
