Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BE4216E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 12:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82B5331393;
	Fri, 17 May 2019 10:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3u-EbDIkv8S; Fri, 17 May 2019 10:26:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5EE1D313CB;
	Fri, 17 May 2019 10:26:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 393061BF958
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 10:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3504586457
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 10:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQhSFvt8iekH for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 10:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 481228491C
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 10:26:38 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id m7so5059474ioa.6
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 03:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=5cx3/L75UziUS+2/JW6U10u1CvG9X9i5jDukDGRhS7Y=;
 b=gVo+5dgTdSOdLTq/0uR57jB+HkBWv/pDBjdeten7yvQu9QRvZYPOgZHXkp9WQTN4MG
 uFBoudc+bOVm3PoWYM94d+koUcNmmSqzjfHQ9BOG4Ph1b7AoID8oVdgqoVkAVjJ75q/f
 AvISJHdi2u8f0S9YJe7Lyd82LDMbTHmss30gA6elqZ0lqIee56kEZinN30pt3yATyVqN
 WZk1iVVTl//cTInI+ofk5dHY1GMo5flCwbW145lUZ3Mw7eVd52o57IiCLF7HEPnfzYD5
 vh5cUhN60TbhpbWA+UObutDq2XVpsKZ3CNl1bLo+mkINZ4iv8frkvqgnEExenLNLlo7R
 41xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=5cx3/L75UziUS+2/JW6U10u1CvG9X9i5jDukDGRhS7Y=;
 b=WeVqiSJ6ys0I2aWj5B/KFpJYCBSVkDZXS+Ki01cw8nSXoNe2BK8r7DQbXxlVV3HDl8
 Ak+D30eIApQdz+ff27F8VajYSCnuysz7mzej57WLrOXk1zsDfJZJBqLkEX5/VBGjsoRg
 Q90KsVyXfR9YfYT68JfVvu1AFLbT43/jKtiFYJVjtN7A6CRVhPas4kh6sg0S+GjRD3YM
 IeAvCxAAxqvy89LIgyhzU9wciQ6k86TqfUtzJBsmQUcSWGn1yQDo3nmn0JIoMGboapNA
 rKuQNZSxGL3nrQ0Dr45rp6AlJS4IDC9FAand1a77Bdz5Cd+ZiFSBrmD/nLfTX+Oh7Ztk
 xNvA==
X-Gm-Message-State: APjAAAXO5wiLqGszGXxKkfiUHxDw8ykaBOCYRfWOvPOpoFxFTS/eBBv1
 IXsLucCcM6kcMRxUEfswky2qNlWYKb2seohwKFqMHw==
X-Google-Smtp-Source: APXvYqxgaC9isHwTVCnmj/QiGKazX7qUMzkzoSd02AnggEW6gnUXlwDGTEQDH9C2ID/emaEwJq8maWUJnzhI2/vfLoU=
X-Received: by 2002:a6b:dc0d:: with SMTP id s13mr3977170ioc.144.1558088797276; 
 Fri, 17 May 2019 03:26:37 -0700 (PDT)
MIME-Version: 1.0
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 17 May 2019 12:26:26 +0200
Message-ID: <CACT4Y+Z9GcY-d19ROSXgAq4-d_hOBVArfgGV1VdYcYD_X1coPQ@mail.gmail.com>
Subject: binder stress testing
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
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
Cc: syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I have 2 questions re drivers/android/binder.c stress testing.

1. Are there any docs on the kernel interface? Or some examples on how
to use it and reference syscall sequences to make it do something
meaningful?
I hopefully figured out struct layouts and offsets of objects thing,
but I still can't figure out handles, pointers, nodes, pointer to
nodes... pointer to data (?), references, cookies and where does one
get valid values for these.

2. In my tests any transaction breaks binder device until the next reboot.
If I open binder device twice, mmap, set context and then the process
dies, then everything it released fine, in particular the context
(context_mgr_node gone). So the device is ready for a next test:

[   40.247970][ T6239] binder: binder_open: 6238:6239
[   40.250819][ T6239] binder: 6238:6239 node 1 u0000000000000000
c0000000000000000 created
[   40.253365][ T6239] binder: binder_mmap: 6238 200a0000-200a2000 (8
K) vma f9 pagep 8000000000000025
[   40.256454][ T6239] binder: binder_open: 6238:6239
[   40.259604][ T6239] binder: binder_mmap: 6238 200c0000-200c2000 (8
K) vma f9 pagep 8000000000000025
[   40.271526][ T6238] binder: 6238 close vm area 200a0000-200a2000 (8
K) vma 180200d9 pagep 8000000000000025
[   40.273113][ T6238] binder: 6238 close vm area 200c0000-200c2000 (8
K) vma 180200d9 pagep 8000000000000025
[   40.275058][   T17] binder: binder_flush: 6238 woke 0 threads
[   40.275997][   T17] binder: binder_flush: 6238 woke 0 threads
[   40.276968][   T17] binder: binder_deferred_release: 6238 threads
0, nodes 0 (ref 0), refs 0, active transactions 0
[   40.278626][   T17] binder: binder_deferred_release: 6238
context_mgr_node gone
[   40.279756][   T17] binder: binder_deferred_release: 6238 threads
1, nodes 1 (ref 0), refs 0, active transactions 0


However, if I also send a transaction between these fd's, then
context_mgr_node is not released:

[  783.851403][ T6167] binder: binder_open: 6166:6167
[  783.858801][ T6167] binder: 6166:6167 node 1 u0000000000000000
c0000000000000000 created
[  783.862458][ T6167] binder: binder_mmap: 6166 200a0000-200a2000 (8
K) vma f9 pagep 8000000000000025
[  783.865777][ T6167] binder: binder_open: 6166:6167
[  783.867892][ T6167] binder: binder_mmap: 6166 200c0000-200c2000 (8
K) vma f9 pagep 8000000000000025
[  783.870810][ T6167] binder: 6166:6167 write 76 at 0000000020000180,
read 0 at 0000000020000300
[  783.872211][ T6167] binder: 6166:6167 BC_TRANSACTION 2 -> 6166 -
node 1, data 0000000020000200-00000000200002c0 size 88-24-16
[  783.873819][ T6167] binder: 6166:6167 node 3 u0000000000000000
c0000000000000000 created
[  783.875032][ T6167] binder: 6166 new ref 4 desc 1 for node 3
[  783.875860][ T6167] binder:         node 3 u0000000000000000 -> ref 4 desc 1
[  783.876868][ T6167] binder: 6166:6167 wrote 76 of 76, read return 0 of 0
[  783.886714][ T6167] binder: 6166 close vm area 200a0000-200a2000 (8
K) vma 180200d9 pagep 8000000000000025
[  783.888161][ T6167] binder: 6166 close vm area 200c0000-200c2000 (8
K) vma 180200d9 pagep 8000000000000025
[  783.890134][   T27] binder: binder_flush: 6166 woke 0 threads
[  783.891036][   T27] binder: binder_flush: 6166 woke 0 threads
[  783.892027][ T2903] binder: release 6166:6167 transaction 2 out, still active
[  783.893097][ T2903] binder: unexpected work type, 4, not freed
[  783.893947][ T2903] binder: undelivered TRANSACTION_COMPLETE
[  783.894849][ T2903] binder: node 3 now dead, refs 1, death 0
[  783.895717][ T2903] binder: binder_deferred_release: 6166 threads
1, nodes 1 (ref 1), refs 0, active transactions 1


And all subsequent tests will fail because "BINDER_SET_CONTEXT_MGR
already set" presumably to the now unrecoverably dead process:

[  831.085174][ T6191] binder: binder_open: 6190:6191
[  831.087450][ T6191] binder: BINDER_SET_CONTEXT_MGR already set
[  831.088910][ T6191] binder: 6190:6191 ioctl 4018620d 200000c0 returned -16
[  831.090626][ T6191] binder: binder_mmap: 6190 200a0000-200a2000 (8
K) vma f9 pagep 8000000000000025
[  831.092783][ T6191] binder: binder_open: 6190:6191
[  831.094076][ T6191] binder: binder_mmap: 6190 200c0000-200c2000 (8
K) vma f9 pagep 8000000000000025
[  831.096218][ T6191] binder: 6190:6191 write 76 at 0000000020000180,
read 0 at 0000000020000300
[  831.097606][ T6191] binder: 6190:6191 BC_TRANSACTION 5 -> 6166 -
node 1, data 0000000020000200-00000000200002c0 size 88-24-16
[  831.099251][ T6191] binder_alloc: 6166: binder_alloc_buf, no vma
[  831.100433][ T6191] binder: 6190:6191 transaction failed 29189/-3,
size 88-24 line 3157
[  831.101559][ T6191] binder: 6190:6191 wrote 76 of 76, read return 0 of 0
[  831.110317][ T6191] binder: 6190 close vm area 200a0000-200a2000 (8
K) vma 180200d9 pagep 8000000000000025
[  831.111752][ T6191] binder: 6190 close vm area 200c0000-200c2000 (8
K) vma 180200d9 pagep 8000000000000025
[  831.113266][ T3344] binder: binder_flush: 6190 woke 0 threads
[  831.114147][ T3344] binder: binder_flush: 6190 woke 0 threads
[  831.115087][ T3344] binder: undelivered TRANSACTION_ERROR: 29189
[  831.115991][ T3344] binder: binder_deferred_release: 6190 threads
1, nodes 0 (ref 0), refs 0, active transactions 0
[  831.117525][ T3344] binder: binder_deferred_release: 6190 threads
1, nodes 0 (ref 0), refs 0, active transactions 0


The question is: if processes that opened the device and ever mapped
it are now completely gone, should it reset the original state when
context can be bound again? Is it a bug in binder that it does not? If
so, is there some kind of temp work-around for this?

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
