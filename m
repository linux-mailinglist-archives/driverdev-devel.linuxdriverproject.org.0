Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE37D9541
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 17:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 218F120448;
	Wed, 16 Oct 2019 15:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sxBCvoBDWsgQ; Wed, 16 Oct 2019 15:16:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9EDC720369;
	Wed, 16 Oct 2019 15:16:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 257DF1BF38B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2239486958
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0x5yRLEb99Yf for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 15:16:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1912A8693F
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 15:16:18 +0000 (UTC)
Received: from [213.220.153.21] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iKl25-0003hT-IE; Wed, 16 Oct 2019 15:16:13 +0000
In-Reply-To: <20191016150119.154756-2-jannh@google.com>
Date: Wed, 16 Oct 2019 17:16:12 +0200
To: "Jann Horn" <jannh@google.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, =?utf-8?q?Arve_Hj=C3=B8nnev=C3=A5g?=
 <arve@android.com>, "Todd Kjos" <tkjos@android.com>, "Martijn Coenen"
 <maco@android.com>, "Joel Fernandes" <joel@joelfernandes.org>, "Christian
 Brauner" <christian@brauner.io>, <jannh@google.com>
From: "Christian Brauner" <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 2/2] binder: Use common definition of SZ_1K
Message-Id: <BXR1QBD488K5.2PSZLBF2IUDKJ@wittgenstein>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed Oct 16, 2019 at 5:01 PM Jann Horn wrote:
> SZ_1K has been defined in include/linux/sizes.h since v3.6. Get rid of the
> duplicate definition.
> 
> Signed-off-by: Jann Horn <jannh@google.com>

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
