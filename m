Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB9A2888F9
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 14:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 70C18203F1;
	Fri,  9 Oct 2020 12:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKVpmHp4uUA7; Fri,  9 Oct 2020 12:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 852D82E285;
	Fri,  9 Oct 2020 12:39:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 002521BF3AE
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 12:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0DFD876F2
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 12:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqSM9MhFrN8y for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 12:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05910876EE
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 12:39:42 +0000 (UTC)
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1kQrgN-00089z-1h; Fri, 09 Oct 2020 12:39:35 +0000
Date: Fri, 9 Oct 2020 14:39:34 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v2 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic32
Message-ID: <20201009123934.4524t6rj6pa4wd7z@wittgenstein>
References: <cover.1602011710.git.skhan@linuxfoundation.org>
 <63482420f221c3483f6526bfc12fc99fe30a567d.1602011710.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63482420f221c3483f6526bfc12fc99fe30a567d.1602011710.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, keescook@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, surenb@google.com,
 hridya@google.com, arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 06, 2020 at 02:44:38PM -0600, Shuah Khan wrote:
> counter_atomic* is introduced to be used when a variable is used as
> a simple counter and doesn't guard object lifetimes. This clearly
> differentiates atomic_t usages that guard object lifetimes.
> 
> counter_atomic* variables will wrap around to 0 when it overflows and
> should not be used to guard resource lifetimes, device usage and
> open counts that control state changes, and pm states.
> 
> stats tracks per-process binder statistics. Unsure if there is a chance
> of this overflowing, other than stats getting reset to 0. Convert it to
> use counter_atomic.
> 
> binder_transaction_log:cur is used to keep track of the current log entry
> location. Overflow is handled in the code. Since it is used as a
> counter, convert it to use counter_atomic32.
> 
> This conversion doesn't change the overflow wrap around behavior.
> 
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---

Thanks!
Reviewed-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
