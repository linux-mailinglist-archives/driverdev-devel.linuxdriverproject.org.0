Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B14DA339E5F
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 14:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76DEB4EC4F;
	Sat, 13 Mar 2021 13:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4dyxFpK8ZVwM; Sat, 13 Mar 2021 13:58:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 109254EBAB;
	Sat, 13 Mar 2021 13:58:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0348C1BF2C4
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 13:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE73F400B5
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 13:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIgzfejfgh6l for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 13:58:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC4FE400BD
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 13:58:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4FB0964ECC;
 Sat, 13 Mar 2021 13:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615643885;
 bh=Wv6CERx5fPbidi64thYA1g1O6PBYe1Szo2LGjqOCAuk=;
 h=Date:From:To:Cc:Subject:From;
 b=zFZJgaJmnUntqTg5qfpFOX5iixgPF3f6lxRHED7hN4u1wUDfssT97rGBYwiyMkdCn
 0OI0Cz+VhWFCIoDhNyHw/WNpNA9Lus6Qo1cIiq7UOXDxUqpR1z78v66b0gk+5RHLyn
 PUZtXhyGMJ/xi89OjZ8SCDIBt8ev8tbdyy3up2ng=
Date: Sat, 13 Mar 2021 14:58:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: move some real subsystems off of the staging
 mailing list
Message-ID: <YEzE6u6U1jkBatmr@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: Todd Kjos <tkjos@android.com>, Manohar Vanga <manohar.vanga@gmail.com>,
 Suren Baghdasaryan <surenb@google.com>, Martyn Welch <martyn@welchs.me.uk>,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The VME and Android drivers still have their MAINTAINERS entries
pointing to the "driverdevel" mailing list, due to them having their
codebase move out of the drivers/staging/ directory, but no one
remembered to change the mailing list entries.

Move them both to linux-kernel for lack of a more specific place at the
moment.  These are both low-volume areas of the kernel, so this
shouldn't be an issue.

Cc: Martyn Welch <martyn@welchs.me.uk>
Cc: Manohar Vanga <manohar.vanga@gmail.com>
Cc: Arve Hj=F8nnev=E5g <arve@android.com>
Cc: Todd Kjos <tkjos@android.com>
Cc: Martijn Coenen <maco@android.com>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Christian Brauner <christian@brauner.io>
Cc: Hridya Valsaraju <hridya@google.com>
Cc: Suren Baghdasaryan <surenb@google.com>
Reported-by: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

diff --git a/MAINTAINERS b/MAINTAINERS
index 72e5b9db5050..b02eec28ae2c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1181,7 +1181,7 @@ M:	Joel Fernandes <joel@joelfernandes.org>
 M:	Christian Brauner <christian@brauner.io>
 M:	Hridya Valsaraju <hridya@google.com>
 M:	Suren Baghdasaryan <surenb@google.com>
-L:	devel@driverdev.osuosl.org
+L:	linux-kernel@vger.kernel.org
 S:	Supported
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
 F:	drivers/android/
@@ -19135,7 +19135,7 @@ VME SUBSYSTEM
 M:	Martyn Welch <martyn@welchs.me.uk>
 M:	Manohar Vanga <manohar.vanga@gmail.com>
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
-L:	devel@driverdev.osuosl.org
+L:	linux-kernel@vger.kernel.org
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git
 F:	Documentation/driver-api/vme.rst
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
