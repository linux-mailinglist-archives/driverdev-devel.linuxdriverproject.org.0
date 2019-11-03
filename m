Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E91ED29E
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 09:50:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E38786EB5;
	Sun,  3 Nov 2019 08:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jGvEGYfqpzI8; Sun,  3 Nov 2019 08:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 090E68672E;
	Sun,  3 Nov 2019 08:50:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 933841BF2A7
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 08:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D97E2DE4A
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 08:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRRNOUwVUVLq for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 08:50:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id CD19E2DF3A
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 08:50:02 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,262,1569276000"; d="scan'208";a="410041207"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 09:50:00 +0100
Date: Sun, 3 Nov 2019 09:50:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: [staging:staging-testing 275/291]
 drivers/staging/exfat/exfat_super.c:747:5-11:
 preceding lock on line 707 (fwd)
Message-ID: <alpine.DEB.2.21.1911030949171.2744@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1195803403-1572771000=:2744"
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1195803403-1572771000=:2744
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

The return at line 747 may need an unlock.

julia

---------- Forwarded message ----------
Date: Sun, 3 Nov 2019 09:21:22 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Julia Lawall <julia.lawall@lip6.fr>
Subject: [staging:staging-testing 275/291]
    drivers/staging/exfat/exfat_super.c:747:5-11: preceding lock on line 707

CC: kbuild-all@lists.01.org
CC: devel@driverdev.osuosl.org
TO: Davidlohr Bueso <dave@stgolabs.net>
CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   f6ea634f1c01cb75675481318930985d6073632a
commit: 3ae82f449cea00de5cd894feb8e9154b2da99b4e [275/291] drivers/staging/exfat: Replace binary semaphores for mutexes
:::::: branch date: 15 hours ago
:::::: commit date: 2 days ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>

>> drivers/staging/exfat/exfat_super.c:747:5-11: preceding lock on line 707

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=3ae82f449cea00de5cd894feb8e9154b2da99b4e
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
git remote update staging
git checkout 3ae82f449cea00de5cd894feb8e9154b2da99b4e
vim +747 drivers/staging/exfat/exfat_super.c

c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  684
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  685  static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  686  		       u64 count, u64 *rcount)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  687  {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  688  	s32 offset, sec_offset, clu_offset;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  689  	u32 clu;
076a8e2f769e87 Colin Ian King   2019-08-30  690  	int ret = 0;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  691  	sector_t LogSector;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  692  	u64 oneblkread, read_bytes;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  693  	struct buffer_head *tmp_bh = NULL;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  694  	struct super_block *sb = inode->i_sb;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  695  	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  696  	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  697
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  698  	/* check the validity of the given file id */
3b531807e605bf Valentin Vidic   2019-09-03  699  	if (!fid)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  700  		return FFS_INVALIDFID;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  701
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  702  	/* check the validity of pointer parameters */
3b531807e605bf Valentin Vidic   2019-09-03  703  	if (!buffer)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  704  		return FFS_ERROR;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  705
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  706  	/* acquire the lock for file system critical section */
3ae82f449cea00 Davidlohr Bueso  2019-10-30 @707  	mutex_lock(&p_fs->v_mutex);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  708
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  709  	/* check if the given file ID is opened */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  710  	if (fid->type != TYPE_FILE) {
7ca8049f098070 Valdis Kletnieks 2019-10-24  711  		ret = -EPERM;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  712  		goto out;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  713  	}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  714
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  715  	if (fid->rwoffset > fid->size)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  716  		fid->rwoffset = fid->size;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  717
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  718  	if (count > (fid->size - fid->rwoffset))
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  719  		count = fid->size - fid->rwoffset;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  720
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  721  	if (count == 0) {
3b531807e605bf Valentin Vidic   2019-09-03  722  		if (rcount)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  723  			*rcount = 0;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  724  		ret = FFS_EOF;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  725  		goto out;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  726  	}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  727
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  728  	read_bytes = 0;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  729
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  730  	while (count > 0) {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  731  		clu_offset = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  732  		clu = fid->start_clu;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  733
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  734  		if (fid->flags == 0x03) {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  735  			clu += clu_offset;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  736  		} else {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  737  			/* hint information */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  738  			if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  739  			    (clu_offset >= fid->hint_last_off)) {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  740  				clu_offset -= fid->hint_last_off;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  741  				clu = fid->hint_last_clu;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  742  			}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  743
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  744  			while (clu_offset > 0) {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  745  				/* clu = FAT_read(sb, clu); */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  746  				if (FAT_read(sb, clu, &clu) == -1)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28 @747  					return FFS_MEDIAERR;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  748
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  749  				clu_offset--;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  750  			}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  751  		}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  752
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  753  		/* hint information */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  754  		fid->hint_last_off = (s32)(fid->rwoffset >>
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  755  					   p_fs->cluster_size_bits);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  756  		fid->hint_last_clu = clu;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  757
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  758  		/* byte offset in cluster */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  759  		offset = (s32)(fid->rwoffset & (p_fs->cluster_size - 1));
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  760
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  761  		/* sector offset in cluster */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  762  		sec_offset = offset >> p_bd->sector_size_bits;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  763
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  764  		/* byte offset in sector */
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  765  		offset &= p_bd->sector_size_mask;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  766
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  767  		LogSector = START_SECTOR(clu) + sec_offset;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  768
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  769  		oneblkread = (u64)(p_bd->sector_size - offset);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  770  		if (oneblkread > count)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  771  			oneblkread = count;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  772
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  773  		if ((offset == 0) && (oneblkread == p_bd->sector_size)) {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  774  			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  775  			    FFS_SUCCESS)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  776  				goto err_out;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  777  			memcpy((char *)buffer + read_bytes,
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  778  			       (char *)tmp_bh->b_data, (s32)oneblkread);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  779  		} else {
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  780  			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  781  			    FFS_SUCCESS)
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  782  				goto err_out;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  783  			memcpy((char *)buffer + read_bytes,
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  784  			       (char *)tmp_bh->b_data + offset,
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  785  			       (s32)oneblkread);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  786  		}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  787  		count -= oneblkread;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  788  		read_bytes += oneblkread;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  789  		fid->rwoffset += oneblkread;
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  790  	}
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  791  	brelse(tmp_bh);
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  792

:::::: The code at line 747 was first introduced by commit
:::::: c48c9f7ff32b8b3965a08e40eb6763682d905b5d staging: exfat: add exfat filesystem code to staging

:::::: TO: Valdis Klētnieks <valdis.kletnieks@vt.edu>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
--8323329-1195803403-1572771000=:2744
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--8323329-1195803403-1572771000=:2744--
