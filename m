Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3130222424
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 15:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5649488CA4;
	Thu, 16 Jul 2020 13:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-1jjNRbhuyL; Thu, 16 Jul 2020 13:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF62B8522B;
	Thu, 16 Jul 2020 13:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEDEC1BF3EE
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 13:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B60AB27085
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 13:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GuEuynUAa3vh for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 13:42:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by silver.osuosl.org (Postfix) with ESMTPS id 55FFE25CF1
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 13:41:31 +0000 (UTC)
Received: from fsav108.sakura.ne.jp (fsav108.sakura.ne.jp [27.133.134.235])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 06GDfHDn085146;
 Thu, 16 Jul 2020 22:41:17 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav108.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav108.sakura.ne.jp);
 Thu, 16 Jul 2020 22:41:17 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav108.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 06GDfGUv085143
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Thu, 16 Jul 2020 22:41:17 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Subject: Re: [PATCH] binder: Don't use mmput() from shrinker function.
To: Michal Hocko <mhocko@kernel.org>
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
 <20200716083506.GA20915@dhcp22.suse.cz>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
Date: Thu, 16 Jul 2020 22:41:14 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716083506.GA20915@dhcp22.suse.cz>
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
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, jolsa@redhat.com,
 Todd Kjos <tkjos@android.com>, linux-mm <linux-mm@kvack.org>,
 alexander.shishkin@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 peterz@infradead.org, Arve Hjonnevag <arve@android.com>, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, namhyung@kernel.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020/07/16 17:35, Michal Hocko wrote:
> On Thu 16-07-20 08:36:52, Tetsuo Handa wrote:
>> syzbot is reporting that mmput() from shrinker function has a risk of
>> deadlock [1]. Don't start synchronous teardown of mm when called from
>> shrinker function.
> 
> Please add the actual lock dependency to the changelog.
> 
> Anyway is this deadlock real? Mayve I have missed some details but the
> call graph points to these two paths.
> uprobe_mmap					do_shrink_slab	
>   uprobes_mmap_hash #lock
>   install_breakpoint				  binder_shrink_scan
>     set_swbp					    binder_alloc_free_page
>       uprobe_write_opcode			      __mmput
> 	update_ref_ctr				        uprobe_clear_state
>     	  mutex_lock(&delayed_uprobe_lock)	          mutex_lock(&delayed_uprobe_lock);
> 	    allocation -> reclaim
> 

static int update_ref_ctr(struct uprobe *uprobe, struct mm_struct *mm, short d) {
  mutex_lock(&delayed_uprobe_lock);
  ret = delayed_uprobe_add(uprobe, mm1) {
    du = kzalloc(sizeof(*du), GFP_KERNEL) {
      do_shrink_slab() {
        binder_shrink_scan() {
          binder_alloc_free_page() {
            mmget_not_zero(mm2);
            mmput(mm2) {
              __mmput(mm2) {
                uprobe_clear_state(mm2) {
                  mutex_lock(&delayed_uprobe_lock);
                  delayed_uprobe_remove(NULL, mm2);
                  mutex_unlock(&delayed_uprobe_lock);
                }
              }
            }
          }
        }
      }
    }
  }
  mutex_unlock(&delayed_uprobe_lock);
}

> But in order for this to happen the shrinker would have to do the last
> put on the mm. But mm cannot go away from under uprobe_mmap so those two
> paths cannot race with each other.

and mm1 != mm2 is possible, isn't it?

> 
> Unless I am missing something this is a false positive. I do not mind
> using mmput_async from the shrinker as a workaround but the changelog
> should be explicit about the fact.
> 

binder_alloc_free_page() is already using mmput_async() 14 lines later.
It just took 18 months to hit this race for the third time, for it is
quite difficult to let the owner of mm2 to call mmput(mm2) between
binder_alloc_free_page() calls mmget_not_zero(mm2) and mmput(mm2).

The reason I added you is to see whether we can do

 void mmput(struct mm_struct *mm)
 {
 	might_sleep();
+	/* Calling mmput() from shrinker context can deadlock. */
+	WARN_ON(current->flags & PF_MEMALLOC);
 
 	if (atomic_dec_and_test(&mm->mm_users))
 		__mmput(mm);
 }

in order to catch this bug easier.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
