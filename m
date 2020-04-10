Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 352FE1A484C
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 18:15:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 651C888216;
	Fri, 10 Apr 2020 16:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vfAWtaU2xA8I; Fri, 10 Apr 2020 16:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 764D48805A;
	Fri, 10 Apr 2020 16:15:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F0F61BF2EA
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 16:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C2B78805A
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 16:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8a8xeqVmLKzY for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 16:15:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64E1187FAF
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 16:15:43 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id AB7E9307;
 Fri, 10 Apr 2020 16:15:42 +0000 (UTC)
Date: Fri, 10 Apr 2020 10:15:41 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] Documentation: android: binderfs: add 'stats' mount option
Message-ID: <20200410101541.73768714@lwn.net>
In-Reply-To: <20200408190809.eb4znnjjhdaycmep@wittgenstein>
References: <baa0aa81-007d-af46-16a5-91fead0bd1b9@infradead.org>
 <20200408190809.eb4znnjjhdaycmep@wittgenstein>
Organization: LWN.net
MIME-Version: 1.0
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 8 Apr 2020 21:08:09 +0200
Christian Brauner <christian.brauner@ubuntu.com> wrote:

> On Wed, Apr 08, 2020 at 10:29:50AM -0700, Randy Dunlap wrote:
> > From: Randy Dunlap <rdunlap@infradead.org>
> > 
> > Add documentation of the binderfs 'stats' mount option.
> > 
> > Description taken from the commit message.
> > 
> > Fixes: f00834518ed3 ("binder: add a mount option to show global stats")
> > Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> > Cc: Hridya Valsaraju <hridya@google.com>
> > Cc: Christian Brauner <christian.brauner@ubuntu.com>
> > Cc: Christian Brauner <christian@brauner.io>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: devel@driverdev.osuosl.org  
> 
> Thanks!
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Applied, thanks.

jon
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
