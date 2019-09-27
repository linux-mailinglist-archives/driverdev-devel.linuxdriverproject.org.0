Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C45C0632
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 15:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E82CB87590;
	Fri, 27 Sep 2019 13:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SnGr-e3weOd; Fri, 27 Sep 2019 13:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5162485BB9;
	Fri, 27 Sep 2019 13:19:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D25B21BF30F
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 13:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF139838F6
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 13:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id suoVCmn8xUBU for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 13:19:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA53583885
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 13:19:16 +0000 (UTC)
Received: from [65.39.69.237] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iDq9R-0000R4-Fn; Fri, 27 Sep 2019 13:19:13 +0000
Date: Fri, 27 Sep 2019 15:19:12 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH v3 0/4] Add binder state and statistics to binderfs
Message-ID: <20190927131912.pg7xtyfforiettgx@wittgenstein>
References: <20190903161655.107408-1-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903161655.107408-1-hridya@google.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
> Currently, the only way to access binder state and
> statistics is through debugfs. We need a way to
> access the same even when debugfs is not mounted.
> These patches add a mount option to make this
> information available in binderfs without affecting
> its presence in debugfs. The following debugfs nodes
> will be made available in a binderfs instance when
> mounted with the mount option 'stats=global' or 'stats=local'.
> 
>  /sys/kernel/debug/binder/failed_transaction_log
>  /sys/kernel/debug/binder/proc
>  /sys/kernel/debug/binder/state
>  /sys/kernel/debug/binder/stats
>  /sys/kernel/debug/binder/transaction_log
>  /sys/kernel/debug/binder/transactions

I'm sitting in a talk from Jonathan about kernel documentation and what
I realized is that we forgot to update the documentation I wrote for
binderfs in Documentation/admin-guide/binderfs.rst to reflect the new
stats=global mount option. Would be great if we could add that after rc1
is out. Would you have time to do that, Hridya?

Should just be a new entry under:

Options
-------
max
  binderfs instances can be mounted with a limit on the number of binder
  devices that can be allocated. The ``max=<count>`` mount option serves as
  a per-instance limit. If ``max=<count>`` is set then only ``<count>`` number
  of binder devices can be allocated in this binderfs instance.
stats
  <description>

Thanks!
Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
