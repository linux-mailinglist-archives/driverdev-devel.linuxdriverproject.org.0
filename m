Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC95C21E772
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 07:32:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 608CF2C9FD;
	Tue, 14 Jul 2020 05:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5VMIyP8wsGD; Tue, 14 Jul 2020 05:32:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 838E92151F;
	Tue, 14 Jul 2020 05:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1702D1BF2CA
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 05:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12EBA8A8A4
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 05:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZoSARJmbxy3 for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 05:32:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from r3-21.sinamail.sina.com.cn (r3-21.sinamail.sina.com.cn
 [202.108.3.21])
 by hemlock.osuosl.org (Postfix) with SMTP id 8FF048A8C5
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 05:32:25 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([123.123.24.222])
 by sina.com with ESMTP
 id 5F0D4360000359F9; Tue, 14 Jul 2020 13:32:18 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 700190629108
From: Hillf Danton <hdanton@sina.com>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: possible deadlock in shmem_fallocate (4)
Date: Tue, 14 Jul 2020 13:32:05 +0800
Message-Id: <20200714053205.15240-1-hdanton@sina.com>
In-Reply-To: <20200714034111.GD1696@sol.localdomain>
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
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
Cc: devel@driverdev.osuosl.org, Hillf Danton <hdanton@sina.com>,
 tkjos@android.com, gregkh@linuxfoundation.org, hughd@google.com,
 linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-mm@kvack.org, arve@android.com, Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 joel@joelfernandes.org, akpm@linux-foundation.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On Mon, 13 Jul 2020 20:41:11 -0700 Eric Biggers wrote:
> On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> > 
> > Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> > new flag. And the overall upside is to keep the current gfp either in
> > the khugepaged context or not.
> > 
> > --- a/include/uapi/linux/falloc.h
> > +++ b/include/uapi/linux/falloc.h
> > @@ -77,4 +77,6 @@
> >   */
> >  #define FALLOC_FL_UNSHARE_RANGE		0x40
> >  
> > +#define FALLOC_FL_NOBLOCK		0x80
> > +
> 
> You can't add a new UAPI flag to fix a kernel-internal problem like this.

Sounds fair, see below.

What the report indicates is a missing PF_MEMALLOC_NOFS and it's
checked on the ashmem side and added as an exception before going
to filesystem. On shmem side, no more than a best effort is paid
on the inteded exception.

--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -437,6 +437,7 @@ static unsigned long
 ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
 {
 	unsigned long freed = 0;
+	bool nofs;
 
 	/* We might recurse into filesystem code, so bail out if necessary */
 	if (!(sc->gfp_mask & __GFP_FS))
@@ -445,6 +446,11 @@ ashmem_shrink_scan(struct shrinker *shri
 	if (!mutex_trylock(&ashmem_mutex))
 		return -1;
 
+	/* enter filesystem with caution: nonblock on locking */
+	nofs = current->flags & PF_MEMALLOC_NOFS;
+	if (!nofs)
+		current->flags |= PF_MEMALLOC_NOFS;
+
 	while (!list_empty(&ashmem_lru_list)) {
 		struct ashmem_range *range =
 			list_first_entry(&ashmem_lru_list, typeof(*range), lru);
@@ -472,6 +478,8 @@ ashmem_shrink_scan(struct shrinker *shri
 	}
 	mutex_unlock(&ashmem_mutex);
 out:
+	if (!nofs)
+		current->flags &= ~PF_MEMALLOC_NOFS;
 	return freed;
 }
 
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -2728,7 +2728,12 @@ static long shmem_fallocate(struct file
 	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE))
 		return -EOPNOTSUPP;
 
-	inode_lock(inode);
+	if (current->flags & PF_MEMALLOC_NOFS) {
+		/* this exception needs a best effort and no more */
+		if (!inode_trylock(inode))
+			return -EBUSY;
+	} else
+		inode_lock(inode);
 
 	if (mode & FALLOC_FL_PUNCH_HOLE) {
 		struct address_space *mapping = file->f_mapping;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
