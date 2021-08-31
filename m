Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EF03FC36B
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Aug 2021 09:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42F7D4046A;
	Tue, 31 Aug 2021 07:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zdBim444AP2E; Tue, 31 Aug 2021 07:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57AB0403C3;
	Tue, 31 Aug 2021 07:24:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B52D1BF348
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 07:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE88E607CB
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 07:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wuvn999keK_E for <devel@linuxdriverproject.org>;
 Tue, 31 Aug 2021 07:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AD1760645
 for <devel@driverdev.osuosl.org>; Tue, 31 Aug 2021 07:24:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 764D76023E;
 Tue, 31 Aug 2021 07:24:18 +0000 (UTC)
Date: Tue, 31 Aug 2021 09:24:16 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: make sure fd closes complete
Message-ID: <20210831072416.y4fvshvjeo7eh2dr@wittgenstein>
References: <20210830195146.587206-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210830195146.587206-1-tkjos@google.com>
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
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 30, 2021 at 12:51:46PM -0700, Todd Kjos wrote:
> During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
> cleanup may close 1 or more fds. The close operations are
> completed using the task work mechanism -- which means the thread
> needs to return to userspace or the file object may never be
> dereferenced -- which can lead to hung processes.
> 
> Force the binder thread back to userspace if an fd is closed during
> BC_FREE_BUFFER handling.
> 
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

Looks good. Thanks!
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
