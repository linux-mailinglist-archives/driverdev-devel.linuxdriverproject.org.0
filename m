Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A773452E21
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Nov 2021 10:37:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5781D607E6;
	Tue, 16 Nov 2021 09:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJn8MDbsP6OB; Tue, 16 Nov 2021 09:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5FB3606C0;
	Tue, 16 Nov 2021 09:37:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E28701BF315
 for <devel@linuxdriverproject.org>; Tue, 16 Nov 2021 09:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1B5880E1D
 for <devel@linuxdriverproject.org>; Tue, 16 Nov 2021 09:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n59Dd8755HVA for <devel@linuxdriverproject.org>;
 Tue, 16 Nov 2021 09:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3EA1080E12
 for <devel@driverdev.osuosl.org>; Tue, 16 Nov 2021 09:37:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BC9E61BFB;
 Tue, 16 Nov 2021 09:37:26 +0000 (UTC)
Date: Tue, 16 Nov 2021 10:37:23 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: fix test regression due to sender_euid change
Message-ID: <20211116093723.ttwv4e77v43lgb45@wittgenstein>
References: <20211112180720.2858135-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211112180720.2858135-1-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, paul@paul-moore.com,
 keescook@chromium.org, jannh@google.com, selinux@vger.kernel.org,
 gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, arve@android.com,
 stable@vger.kernel.org, jeffv@google.com, joel@joelfernandes.org,
 eparis@parisplace.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 12, 2021 at 10:07:20AM -0800, Todd Kjos wrote:
> This is a partial revert of commit
> 29bc22ac5e5b ("binder: use euid from cred instead of using task").
> Setting sender_euid using proc->cred caused some Android system test
> regressions that need further investigation. It is a partial
> reversion because subsequent patches rely on proc->cred.
> 
> Cc: stable@vger.kernel.org # 4.4+
> Fixes: 29bc22ac5e5b ("binder: use euid from cred instead of using task")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Change-Id: I9b1769a3510fed250bb21859ef8beebabe034c66
> ---

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
