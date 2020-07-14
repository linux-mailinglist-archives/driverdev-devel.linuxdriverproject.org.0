Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F5321F415
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 16:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A67288F8E;
	Tue, 14 Jul 2020 14:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBLS9vg99dPk; Tue, 14 Jul 2020 14:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8A3787D5B;
	Tue, 14 Jul 2020 14:29:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2831BF869
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 14:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1713B87D5B
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 14:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPsR2lkLgbiz for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 14:29:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-164.sinamail.sina.com.cn (mail3-164.sinamail.sina.com.cn
 [202.108.3.164])
 by fraxinus.osuosl.org (Postfix) with SMTP id 249318866A
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 14:29:15 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([123.123.24.222])
 by sina.com with ESMTP
 id 5F0DBC8400014757; Tue, 14 Jul 2020 22:09:12 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 12830715073490
From: Hillf Danton <hdanton@sina.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: possible deadlock in shmem_fallocate (4)
Date: Tue, 14 Jul 2020 22:08:59 +0800
Message-Id: <20200714140859.15156-1-hdanton@sina.com>
In-Reply-To: <20200714082629.GF24642@dhcp22.suse.cz>
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
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
 tkjos@android.com, syzkaller-bugs@googlegroups.com, gregkh@linuxfoundation.org,
 hughd@google.com, linux-kernel@vger.kernel.org,
 Eric Biggers <ebiggers@kernel.org>, linux-mm@kvack.org, arve@android.com,
 Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 joel@joelfernandes.org, akpm@linux-foundation.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On Tue, 14 Jul 2020 10:26:29 +0200 Michal Hocko wrote:
> On Tue 14-07-20 13:32:05, Hillf Danton wrote:
> > 
> > On Mon, 13 Jul 2020 20:41:11 -0700 Eric Biggers wrote:
> > > On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> > > > 
> > > > Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> > > > new flag. And the overall upside is to keep the current gfp either in
> > > > the khugepaged context or not.
> > > > 
> > > > --- a/include/uapi/linux/falloc.h
> > > > +++ b/include/uapi/linux/falloc.h
> > > > @@ -77,4 +77,6 @@
> > > >   */
> > > >  #define FALLOC_FL_UNSHARE_RANGE		0x40
> > > >  
> > > > +#define FALLOC_FL_NOBLOCK		0x80
> > > > +
> > > 
> > > You can't add a new UAPI flag to fix a kernel-internal problem like this.
> > 
> > Sounds fair, see below.
> > 
> > What the report indicates is a missing PF_MEMALLOC_NOFS and it's
> > checked on the ashmem side and added as an exception before going
> > to filesystem. On shmem side, no more than a best effort is paid
> > on the inteded exception.
> > 
> > --- a/drivers/staging/android/ashmem.c
> > +++ b/drivers/staging/android/ashmem.c
> > @@ -437,6 +437,7 @@ static unsigned long
> >  ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
> >  {
> >  	unsigned long freed = 0;
> > +	bool nofs;
> >  
> >  	/* We might recurse into filesystem code, so bail out if necessary */
> >  	if (!(sc->gfp_mask & __GFP_FS))
> > @@ -445,6 +446,11 @@ ashmem_shrink_scan(struct shrinker *shri
> >  	if (!mutex_trylock(&ashmem_mutex))
> >  		return -1;
> >  
> > +	/* enter filesystem with caution: nonblock on locking */
> > +	nofs = current->flags & PF_MEMALLOC_NOFS;
> > +	if (!nofs)
> > +		current->flags |= PF_MEMALLOC_NOFS;
> > +
> >  	while (!list_empty(&ashmem_lru_list)) {
> >  		struct ashmem_range *range =
> >  			list_first_entry(&ashmem_lru_list, typeof(*range), lru);
> 
> I do not think this is an appropriate fix. First of all is this a real
> deadlock or a lockdep false positive? Is it possible that ashmem just

The warning matters and we can do something to quiesce it.

> needs to properly annotate its shmem inodes? Or is it possible that
> the internal backing shmem file is visible to the userspace so the write
> path would be possible?
> 
> If this a real problem then the proper fix would be to set internal
> shmem mapping's gfp_mask to drop __GFP_FS.

Thanks for the tip, see below.

Can you expand a bit on how it helps direct reclaimers like khugepaged
in the syzbot report wrt deadlock? TBH I have difficult time following
up after staring at the chart below for quite a while.

Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(fs_reclaim);
                               lock(&sb->s_type->i_mutex_key#15);
                               lock(fs_reclaim);

  lock(&sb->s_type->i_mutex_key#15);


--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -381,6 +381,7 @@ static int ashmem_mmap(struct file *file
 	if (!asma->file) {
 		char *name = ASHMEM_NAME_DEF;
 		struct file *vmfile;
+		gfp_t gfp;
 
 		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
 			name = asma->name;
@@ -392,6 +393,10 @@ static int ashmem_mmap(struct file *file
 			goto out;
 		}
 		vmfile->f_mode |= FMODE_LSEEK;
+		gfp = mapping_gfp_mask(vmfile->f_mapping);
+		if (gfp & __GFP_FS)
+			mapping_set_gfp_mask(vmfile->f_mapping,
+						gfp & ~__GFP_FS);
 		asma->file = vmfile;
 	}
 	get_file(asma->file);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
