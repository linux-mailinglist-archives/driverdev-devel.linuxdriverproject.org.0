Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6682E22269E
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 17:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADD418B2FB;
	Thu, 16 Jul 2020 15:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jIzQJ+JXHXOp; Thu, 16 Jul 2020 15:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9C218B2D0;
	Thu, 16 Jul 2020 15:12:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 038A61BF38D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F10D38B2C3
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tg2uBXA3Gt+d for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 15:12:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 780DB88B0F
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 15:12:34 +0000 (UTC)
Received: from fsav401.sakura.ne.jp (fsav401.sakura.ne.jp [133.242.250.100])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 06GFCKfs068296;
 Fri, 17 Jul 2020 00:12:20 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav401.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav401.sakura.ne.jp);
 Fri, 17 Jul 2020 00:12:20 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav401.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 06GFCJbd068287
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Fri, 17 Jul 2020 00:12:19 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Subject: [PATCH v2] binder: Don't use mmput() from shrinker function.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arve Hjonnevag <arve@android.com>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
 <20200716083506.GA20915@dhcp22.suse.cz>
 <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
 <20200716135445.GN31089@dhcp22.suse.cz>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <4ba9adb2-43f5-2de0-22de-f6075c1fab50@i-love.sakura.ne.jp>
Date: Fri, 17 Jul 2020 00:12:15 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716135445.GN31089@dhcp22.suse.cz>
Content-Language: en-US
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
Cc: mark.rutland@arm.com,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 linux-mm <linux-mm@kvack.org>, alexander.shishkin@linux.intel.com,
 syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 Michal Hocko <mhocko@kernel.org>, peterz@infradead.org, mingo@redhat.com,
 namhyung@kernel.org, jolsa@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

syzbot is reporting that mmput() from shrinker function has a risk of
deadlock [1], for delayed_uprobe_add() from update_ref_ctr() calls
kzalloc(GFP_KERNEL) with delayed_uprobe_lock held, and
uprobe_clear_state() from __mmput() also holds delayed_uprobe_lock.

Commit a1b2289cef92ef0e ("android: binder: drop lru lock in isolate
callback") replaced mmput() with mmput_async() in order to avoid sleeping
with spinlock held. But this patch replaces mmput() with mmput_async() in
order not to start __mmput() from shrinker context.

[1] https://syzkaller.appspot.com/bug?id=bc9e7303f537c41b2b0cc2dfcea3fc42964c2d45

Reported-by: syzbot <syzbot+1068f09c44d151250c33@syzkaller.appspotmail.com>
Reported-by: syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
---
 drivers/android/binder_alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 42c672f1584e..cbe6aa77d50d 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -947,7 +947,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
 		trace_binder_unmap_user_end(alloc, index);
 	}
 	mmap_read_unlock(mm);
-	mmput(mm);
+	mmput_async(mm);
 
 	trace_binder_unmap_kernel_start(alloc, index);
 
-- 
2.18.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
