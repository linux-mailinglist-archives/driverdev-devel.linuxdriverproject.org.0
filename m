Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3356612F6D0
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 11:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F10486852;
	Fri,  3 Jan 2020 10:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ENdtZ8zmbTz; Fri,  3 Jan 2020 10:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30CD9867C5;
	Fri,  3 Jan 2020 10:41:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D51371BF3A7
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CFC3587CE1
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 10:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJtxfsNXkD8g for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 10:41:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81F5987CDB
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 10:41:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB6C6217F4;
 Fri,  3 Jan 2020 10:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578048077;
 bh=t4j6u6+QnamvQmpNUF7kOmnVf+xgyN47NLHlYA6onK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZsGCNdd2mwjJ3Vx/uveOc/5bxqHkRbgK0LDHYdDvo7sOQEGNJnm8VmT0pTx+CHPzP
 uZ0MRx9cTlt26Kl/5h/3hVFwXtiIWGk8DxtPwPFnlakyFhXKatGCpLAsGPut8N4vHr
 TW8Mtki4w1JtycEGWJ/op954f8FqAnE+QbmlY+ns=
Date: Fri, 3 Jan 2020 11:41:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amir Goldstein <amir73il@gmail.com>
Subject: Re: [PATCH] staging: exfat: add STAGING prefix to config names
Message-ID: <20200103104115.GA914416@kroah.com>
References: <CGME20200103011708epcas1p3be094a9c7cf7b633f7b5d9c404d16ea5@epcas1p3.samsung.com>
 <20200103011345.25245-1-namjae.jeon@samsung.com>
 <CAOQ4uxgJjq2i7Qvbg2X3UVz5yEHeXwwF8+ZghZ=KrrcaZGjJPA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ4uxgJjq2i7Qvbg2X3UVz5yEHeXwwF8+ZghZ=KrrcaZGjJPA@mail.gmail.com>
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
Cc: Namjae Jeon <namjae.jeon@samsung.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 03, 2020 at 12:08:10PM +0200, Amir Goldstein wrote:
> On Fri, Jan 3, 2020 at 3:17 AM Namjae Jeon <namjae.jeon@samsung.com> wrote:
> >
> > Add STAGING prefix to config names to avoid collsion with fs/exfat config.
> >
> > Signed-off-by: Namjae Jeon <namjae.jeon@samsung.com>
> > ---
> >  drivers/staging/Makefile             |  2 +-
> >  drivers/staging/exfat/Kconfig        | 26 +++++++--------
> >  drivers/staging/exfat/Makefile       |  2 +-
> >  drivers/staging/exfat/exfat.h        | 14 ++++----
> >  drivers/staging/exfat/exfat_blkdev.c | 12 +++----
> >  drivers/staging/exfat/exfat_core.c   |  8 ++---
> >  drivers/staging/exfat/exfat_super.c  | 50 ++++++++++++++--------------
> >  7 files changed, 57 insertions(+), 57 deletions(-)
> >
> > diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
> > index 463aef6a18ef..fdd03fd6e704 100644
> > --- a/drivers/staging/Makefile
> > +++ b/drivers/staging/Makefile
> > @@ -48,7 +48,7 @@ obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
> >  obj-$(CONFIG_KPC2000)          += kpc2000/
> >  obj-$(CONFIG_UWB)              += uwb/
> >  obj-$(CONFIG_USB_WUSB)         += wusbcore/
> > -obj-$(CONFIG_EXFAT_FS)         += exfat/
> > +obj-$(CONFIG_STAGING_EXFAT_FS) += exfat/
> >  obj-$(CONFIG_QLGE)             += qlge/
> >  obj-$(CONFIG_NET_VENDOR_HP)    += hp/
> >  obj-$(CONFIG_WFX)              += wfx/
> > diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
> > index 0130019cbec2..292a19dfcaf5 100644
> > --- a/drivers/staging/exfat/Kconfig
> > +++ b/drivers/staging/exfat/Kconfig
> > @@ -1,41 +1,41 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > -config EXFAT_FS
> > +config STAGING_EXFAT_FS
> >         tristate "exFAT fs support"
> >         depends on BLOCK
> >         select NLS
> >         help
> >           This adds support for the exFAT file system.
> >
> > -config EXFAT_DISCARD
> > +config STAGING_EXFAT_DISCARD
> >         bool "enable discard support"
> > -       depends on EXFAT_FS
> > +       depends on STAGING_EXFAT_FS
> >         default y
> >
> > -config EXFAT_DELAYED_SYNC
> > +config STAGING_EXFAT_DELAYED_SYNC
> >         bool "enable delayed sync"
> > -       depends on EXFAT_FS
> > +       depends on STAGING_EXFAT_FS
> >         default n
> >
> > -config EXFAT_KERNEL_DEBUG
> > +config STAGING_EXFAT_KERNEL_DEBUG
> >         bool "enable kernel debug features via ioctl"
> > -       depends on EXFAT_FS
> > +       depends on STAGING_EXFAT_FS
> >         default n
> >
> > -config EXFAT_DEBUG_MSG
> > +config STAGING_EXFAT_DEBUG_MSG
> >         bool "print debug messages"
> > -       depends on EXFAT_FS
> > +       depends on STAGING_EXFAT_FS
> >         default n
> >
> > -config EXFAT_DEFAULT_CODEPAGE
> > +config STAGING_EXFAT_DEFAULT_CODEPAGE
> >         int "Default codepage for exFAT"
> >         default 437
> > -       depends on EXFAT_FS
> > +       depends on STAGING_EXFAT_FS
> >         help
> >           This option should be set to the codepage of your exFAT filesystems.
> >
> > -config EXFAT_DEFAULT_IOCHARSET
> > +config STAGING_EXFAT_DEFAULT_IOCHARSET
> >         string "Default iocharset for exFAT"
> >         default "utf8"
> > -       depends on EXFAT_FS
> > +       depends on STAGING_EXFAT_FS
> >         help
> >           Set this to the default input/output character set you'd like exFAT to use.
> > diff --git a/drivers/staging/exfat/Makefile b/drivers/staging/exfat/Makefile
> > index 6c90aec83feb..057556eeca0c 100644
> > --- a/drivers/staging/exfat/Makefile
> > +++ b/drivers/staging/exfat/Makefile
> > @@ -1,6 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0-or-later
> >
> > -obj-$(CONFIG_EXFAT_FS) += exfat.o
> > +obj-$(CONFIG_STAGING_EXFAT_FS) += exfat.o
> >
> >  exfat-y :=     exfat_core.o    \
> >                 exfat_super.o   \
> > diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> > index 51c665a924b7..3865c17027ce 100644
> > --- a/drivers/staging/exfat/exfat.h
> > +++ b/drivers/staging/exfat/exfat.h
> > @@ -9,7 +9,7 @@
> >  #include <linux/types.h>
> >  #include <linux/buffer_head.h>
> >
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >    /* For Debugging Purpose */
> >         /* IOCTL code 'f' used by
> >          *   - file systems typically #0~0x1F
> > @@ -22,9 +22,9 @@
> >
> >  #define EXFAT_DEBUGFLAGS_INVALID_UMOUNT        0x01
> >  #define EXFAT_DEBUGFLAGS_ERROR_RW      0x02
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >
> > -#ifdef CONFIG_EXFAT_DEBUG_MSG
> > +#ifdef CONFIG_STAGING_EXFAT_DEBUG_MSG
> >  #define DEBUG  1
> >  #else
> >  #undef DEBUG
> > @@ -661,10 +661,10 @@ struct exfat_mount_options {
> >
> >         /* on error: continue, panic, remount-ro */
> >         unsigned char errors;
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         /* flag on if -o dicard specified and device support discard() */
> >         unsigned char discard;
> > -#endif /* CONFIG_EXFAT_DISCARD */
> > +#endif /* CONFIG_STAGING_EXFAT_DISCARD */
> >  };
> >
> >  #define EXFAT_HASH_BITS                8
> > @@ -700,9 +700,9 @@ struct exfat_sb_info {
> >
> >         spinlock_t inode_hash_lock;
> >         struct hlist_head inode_hashtable[EXFAT_HASH_SIZE];
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >         long debug_flags;
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >  };
> >
> >  /*
> > diff --git a/drivers/staging/exfat/exfat_blkdev.c b/drivers/staging/exfat/exfat_blkdev.c
> > index 7bcd98b13109..8791a5f2bb08 100644
> > --- a/drivers/staging/exfat/exfat_blkdev.c
> > +++ b/drivers/staging/exfat/exfat_blkdev.c
> > @@ -35,13 +35,13 @@ int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head *
> >  {
> >         struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
> >         struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >         struct exfat_sb_info *sbi = EXFAT_SB(sb);
> >         long flags = sbi->debug_flags;
> >
> >         if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
> >                 return -EIO;
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >
> >         if (!p_bd->opened)
> >                 return -ENODEV;
> > @@ -72,13 +72,13 @@ int exfat_bdev_write(struct super_block *sb, sector_t secno, struct buffer_head
> >         struct buffer_head *bh2;
> >         struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
> >         struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >         struct exfat_sb_info *sbi = EXFAT_SB(sb);
> >         long flags = sbi->debug_flags;
> >
> >         if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
> >                 return -EIO;
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >
> >         if (!p_bd->opened)
> >                 return -ENODEV;
> > @@ -121,13 +121,13 @@ int exfat_bdev_write(struct super_block *sb, sector_t secno, struct buffer_head
> >  int exfat_bdev_sync(struct super_block *sb)
> >  {
> >         struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >         struct exfat_sb_info *sbi = EXFAT_SB(sb);
> >         long flags = sbi->debug_flags;
> >
> >         if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
> >                 return -EIO;
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >
> >         if (!p_bd->opened)
> >                 return -ENODEV;
> > diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> > index 794000e7bc6f..5e7645fe8c45 100644
> > --- a/drivers/staging/exfat/exfat_core.c
> > +++ b/drivers/staging/exfat/exfat_core.c
> > @@ -177,11 +177,11 @@ static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
> >  {
> >         int i, b;
> >         sector_t sector;
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         struct exfat_sb_info *sbi = EXFAT_SB(sb);
> >         struct exfat_mount_options *opts = &sbi->options;
> >         int ret;
> > -#endif /* CONFIG_EXFAT_DISCARD */
> > +#endif /* CONFIG_STAGING_EXFAT_DISCARD */
> >         struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
> >         struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
> >
> > @@ -192,7 +192,7 @@ static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
> >
> >         exfat_bitmap_clear((u8 *)p_fs->vol_amap[i]->b_data, b);
> >
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         if (opts->discard) {
> >                 ret = sb_issue_discard(sb, START_SECTOR(clu),
> >                                        (1 << p_fs->sectors_per_clu_bits),
> > @@ -204,7 +204,7 @@ static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
> >                         return ret;
> >                 }
> >         }
> > -#endif /* CONFIG_EXFAT_DISCARD */
> > +#endif /* CONFIG_STAGING_EXFAT_DISCARD */
> >
> >         return sector_write(sb, sector, p_fs->vol_amap[i], 0);
> >  }
> > diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> > index 744344a2521c..9fa2ad3627c5 100644
> > --- a/drivers/staging/exfat/exfat_super.c
> > +++ b/drivers/staging/exfat/exfat_super.c
> > @@ -38,8 +38,8 @@
> >
> >  static struct kmem_cache *exfat_inode_cachep;
> >
> > -static int exfat_default_codepage = CONFIG_EXFAT_DEFAULT_CODEPAGE;
> > -static char exfat_default_iocharset[] = CONFIG_EXFAT_DEFAULT_IOCHARSET;
> > +static int exfat_default_codepage = CONFIG_STAGING_EXFAT_DEFAULT_CODEPAGE;
> > +static char exfat_default_iocharset[] = CONFIG_STAGING_EXFAT_DEFAULT_IOCHARSET;
> >
> >  #define INC_IVERSION(x) (inode_inc_iversion(x))
> >  #define GET_IVERSION(x) (inode_peek_iversion_raw(x))
> > @@ -647,7 +647,7 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
> >         /* create a new file */
> >         ret = create_file(inode, &dir, &uni_name, mode, fid);
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -1008,7 +1008,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
> >         update_dir_checksum_with_entry_set(sb, es);
> >         release_entry_set(es);
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -1134,7 +1134,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
> >         if (fid->rwoffset > fid->size)
> >                 fid->rwoffset = fid->size;
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -1282,7 +1282,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
> >                                                 num_entries + 1);
> >         }
> >  out:
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -1344,7 +1344,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
> >         fid->start_clu = CLUSTER_32(~0);
> >         fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -1420,7 +1420,7 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
> >         update_dir_checksum_with_entry_set(sb, es);
> >         release_entry_set(es);
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -1804,7 +1804,7 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
> >
> >         ret = create_dir(inode, &dir, &uni_name, fid);
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -2053,7 +2053,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
> >         fid->start_clu = CLUSTER_32(~0);
> >         fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
> >
> > -#ifndef CONFIG_EXFAT_DELAYED_SYNC
> > +#ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
> >         fs_sync(sb, true);
> >         fs_set_vol_flags(sb, VOL_CLEAN);
> >  #endif
> > @@ -2176,14 +2176,14 @@ static long exfat_generic_ioctl(struct file *filp, unsigned int cmd,
> >                                 unsigned long arg)
> >  {
> >         struct inode *inode = filp->f_path.dentry->d_inode;
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >         unsigned int flags;
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >
> >         switch (cmd) {
> >         case EXFAT_IOCTL_GET_VOLUME_ID:
> >                 return exfat_ioctl_volume_id(inode);
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >         case EXFAT_IOC_GET_DEBUGFLAGS: {
> >                 struct super_block *sb = inode->i_sb;
> >                 struct exfat_sb_info *sbi = EXFAT_SB(sb);
> > @@ -2207,7 +2207,7 @@ static long exfat_generic_ioctl(struct file *filp, unsigned int cmd,
> >
> >                 return 0;
> >         }
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >         default:
> >                 return -ENOTTY; /* Inappropriate ioctl for device */
> >         }
> > @@ -3400,7 +3400,7 @@ static int exfat_show_options(struct seq_file *m, struct dentry *root)
> >                 seq_puts(m, ",errors=panic");
> >         else
> >                 seq_puts(m, ",errors=remount-ro");
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         if (opts->discard)
> >                 seq_puts(m, ",discard");
> >  #endif
> > @@ -3481,7 +3481,7 @@ enum {
> >         Opt_err_ro,
> >         Opt_utf8_hack,
> >         Opt_err,
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         Opt_discard,
> >  #endif /* EXFAT_CONFIG_DISCARD */
> >  };
> > @@ -3501,9 +3501,9 @@ static const match_table_t exfat_tokens = {
> >         {Opt_err_panic, "errors=panic"},
> >         {Opt_err_ro, "errors=remount-ro"},
> >         {Opt_utf8_hack, "utf8"},
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         {Opt_discard, "discard"},
> > -#endif /* CONFIG_EXFAT_DISCARD */
> > +#endif /* CONFIG_STAGING_EXFAT_DISCARD */
> >         {Opt_err, NULL}
> >  };
> >
> > @@ -3524,7 +3524,7 @@ static int parse_options(char *options, int silent, int *debug,
> >         opts->iocharset = exfat_default_iocharset;
> >         opts->casesensitive = 0;
> >         opts->errors = EXFAT_ERRORS_RO;
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >         opts->discard = 0;
> >  #endif
> >         *debug = 0;
> > @@ -3595,11 +3595,11 @@ static int parse_options(char *options, int silent, int *debug,
> >                 case Opt_debug:
> >                         *debug = 1;
> >                         break;
> > -#ifdef CONFIG_EXFAT_DISCARD
> > +#ifdef CONFIG_STAGING_EXFAT_DISCARD
> >                 case Opt_discard:
> >                         opts->discard = 1;
> >                         break;
> > -#endif /* CONFIG_EXFAT_DISCARD */
> > +#endif /* CONFIG_STAGING_EXFAT_DISCARD */
> >                 case Opt_utf8_hack:
> >                         break;
> >                 default:
> > @@ -3803,7 +3803,7 @@ static void __exit exfat_destroy_inodecache(void)
> >         kmem_cache_destroy(exfat_inode_cachep);
> >  }
> >
> > -#ifdef CONFIG_EXFAT_KERNEL_DEBUG
> > +#ifdef CONFIG_STAGING_EXFAT_KERNEL_DEBUG
> >  static void exfat_debug_kill_sb(struct super_block *sb)
> >  {
> >         struct exfat_sb_info *sbi = EXFAT_SB(sb);
> > @@ -3831,17 +3831,17 @@ static void exfat_debug_kill_sb(struct super_block *sb)
> >
> >         kill_block_super(sb);
> >  }
> > -#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
> > +#endif /* CONFIG_STAGING_EXFAT_KERNEL_DEBUG */
> >
> >  static struct file_system_type exfat_fs_type = {
> >         .owner       = THIS_MODULE,
> >         .name        = "exfat",
> 
> And what about the module name collision?

Rename the staging module :)

> What is mount -t exfat expected to do?

Pick one!

> One way to tackle this is to have CONFIG_EXFAT_FS and
> CONFIG_STAGING_EXFAT be mutually exclusive.

I agree.

> But that is just messy.
> If you ask me, the first patch of the fs/exfat series should remove
> the staging exfat driver.
> It is going to be removed anyway, so why bother with this extra complexity
> and letting them live together for a brief moment in history.

Normally we handle this by waiting for the "real" code to be merged into
the kernel in some development tree that will end up getting to Linus
for a -rc1 merge, then I will remove the staging code.

We do this all the time, nothing new here, just let me know when things
are working good enough for me to drop the staging code.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
