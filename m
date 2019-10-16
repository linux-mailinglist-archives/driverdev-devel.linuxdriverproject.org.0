Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11771D95E7
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 17:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 43A5023449;
	Wed, 16 Oct 2019 15:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voSCAzm5zd4b; Wed, 16 Oct 2019 15:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0B346203B8;
	Wed, 16 Oct 2019 15:46:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0B871BF38B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD77E869D9
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtbxY_oAohLx for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 15:46:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7378E86958
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 15:46:35 +0000 (UTC)
Received: from [213.220.153.21] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iKlVQ-0005gA-Bo; Wed, 16 Oct 2019 15:46:32 +0000
In-Reply-To: <20191016150119.154756-1-jannh@google.com>
Date: Wed, 16 Oct 2019 17:46:31 +0200
From: "Christian Brauner" <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 1/2] binder: Don't modify VMA bounds in ->mmap handler
To: "Jann Horn" <jannh@google.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, =?utf-8?q?Arve_Hj=C3=B8nnev=C3=A5g?=
 <arve@android.com>, "Todd Kjos" <tkjos@android.com>, "Martijn Coenen"
 <maco@android.com>, "Joel Fernandes" <joel@joelfernandes.org>, "Christian
 Brauner" <christian@brauner.io>, <jannh@google.com>
Message-Id: <BXR2DIW8IZSX.16Y0Y9PLOTGTS@wittgenstein>
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
> binder_mmap() tries to prevent the creation of overly big binder mappings
> by silently truncating the size of the VMA to 4MiB. However, this violates
> the API contract of mmap(). If userspace attempts to create a large binder
> VMA, and later attempts to unmap that VMA, it will call munmap() on a range
> beyond the end of the VMA, which may have been allocated to another VMA in
> the meantime. This can lead to userspace memory corruption.
> 
> The following sequence of calls leads to a segfault without this commit:
> 
> int main(void) {
>   int binder_fd = open("/dev/binder", O_RDWR);
>   if (binder_fd == -1) err(1, "open binder");
>   void *binder_mapping = mmap(NULL, 0x800000UL, PROT_READ, MAP_SHARED,
>                               binder_fd, 0);
>   if (binder_mapping == MAP_FAILED) err(1, "mmap binder");
>   void *data_mapping = mmap(NULL, 0x400000UL, PROT_READ|PROT_WRITE,
>                             MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
>   if (data_mapping == MAP_FAILED) err(1, "mmap data");
>   munmap(binder_mapping, 0x800000UL);
>   *(char*)data_mapping = 1;
>   return 0;
> }
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Jann Horn <jannh@google.com>

Hm, aerc kept crashing for me so I'm not sure whether or not prior
messages made it so sorry if this arrives multiple times.

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
