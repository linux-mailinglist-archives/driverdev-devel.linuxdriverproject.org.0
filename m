Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5075F9D2E
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 23:36:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B7B7B20419;
	Tue, 12 Nov 2019 22:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3mel0-3TmSm; Tue, 12 Nov 2019 22:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6815203D5;
	Tue, 12 Nov 2019 22:36:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7DE81BF3C6
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 22:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A47C784E77
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 22:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKPgmjOouvVa for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 22:36:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BFBF584D62
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 22:36:33 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACMaWta030540
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 17:36:32 -0500
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACMaRG7002962
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 17:36:32 -0500
Received: by mail-qt1-f198.google.com with SMTP id x50so21453154qth.4
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 14:36:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=b3SMezw3KJOVVm/niCddVCl0DjKIk3OgqaEONN074B8=;
 b=aQ0jhdlEoe8PiZ/UVEUlAZajQ96GEPmPxJsaeQ3vNWH5QGrwTDJ+q4alpRA2CIb1zY
 kPSERW6xKJSLikqCM+M7+Yp7bgTA73nI2EErPqPDmTr27rjhAKL6kvuJmM4qJ3h53h4W
 jZ9QapLUWwL8/QFSxA2XCqoPAEiiQycP7S6KrV/ADXnJ7gUQ2FUv0nwYRQmxSlfZETcl
 9e1ySZ/M6IIxQpoyQn1zmJwiwbISKDlSyPCmwI3QPb6GQDZZxeNdbhIL3CREgi5vtZ80
 pY8GvNFzGDAu9ZyBjw+OWCU/2zYZP6po90AbdPTIzabJhNmynluV9Y+p1YMF3qasmSgi
 t68w==
X-Gm-Message-State: APjAAAUH/YbCfZG6NV7en3gdvXYZ2cAoviGXSx+2J0phTw4PtrjwJ0Zq
 og3m/Btwa+WtyXfzwSH+dwAXU8tPc/qVHUtOsYvq0ed/zLCkItvowGEhDy9EzUKW5yGczt9+xCO
 RW7uA3b0MZw+go1enCEmDqepyxaRuq2gC
X-Received: by 2002:aed:2821:: with SMTP id r30mr34335462qtd.367.1573598186912; 
 Tue, 12 Nov 2019 14:36:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVvq+wLMcWArLPgLTwIJ6gQIvDSAdqsKAyHrdpnSw7IXvoWUvqwWchRSSn79IkIOrXxMCf9Q==
X-Received: by 2002:aed:2821:: with SMTP id r30mr34335437qtd.367.1573598186582; 
 Tue, 12 Nov 2019 14:36:26 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id l132sm41647qke.38.2019.11.12.14.36.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 14:36:25 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: exfat: Update the TODO file
Date: Tue, 12 Nov 2019 17:36:08 -0500
Message-Id: <20191112223609.163501-1-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Updating with the current laundry list of things that need attention.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/TODO | 70 ++++++++++++++++++++++++++++++++------
 1 file changed, 59 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/TODO b/drivers/staging/exfat/TODO
index b60e50b9cf4e..a283ce534cf4 100644
--- a/drivers/staging/exfat/TODO
+++ b/drivers/staging/exfat/TODO
@@ -1,17 +1,22 @@
+A laundry list of things that need looking at, most of which will
+require more work than the average checkpatch cleanup...
+
+Note that some of these entries may not be bugs - they're things
+that need to be looked at, and *possibly* fixed.
+
+Clean up the ffsCamelCase function names.
+
+Fix (thing)->flags to not use magic numbers - multiple offenders
+
+Sort out all the s32/u32/u8 nonsense - most of these should be plain int.
+
 exfat_core.c - ffsReadFile - the goto err_out seem to leak a brelse().
 same for ffsWriteFile.
 
-exfat_core.c - fs_sync(sb,0) all over the place looks fishy as hell.
-There's only one place that calls it with a non-zero argument.
-Randomly removing fs_sync() calls is *not* the right answer, especially
-if the removal then leaves a call to fs_set_vol_flags(VOL_CLEAN), as that
-says the file system is clean and synced when we *know* it isn't.
-The proper fix here is to go through and actually analyze how DELAYED_SYNC
-should work, and any time we're setting VOL_CLEAN, ensure the file system
-has in fact been synced to disk.  In other words, changing the 'false' to
-'true' is probably more correct. Also, it's likely that the one current
-place where it actually does an bdev_sync isn't sufficient in the DELAYED_SYNC
-case.
+All the calls to fs_sync() need to be looked at, particularly in the
+context of EXFAT_DELAYED_SYNC. Currently, if that's defined, we only
+flush to disk when sync() gets called.  We should be doing at least
+metadata flushes at appropriate times.
 
 ffsTruncateFile -  if (old_size <= new_size) {
 That doesn't look right. How did it ever work? Are they relying on lazy
@@ -19,3 +24,46 @@ block allocation when actual writes happen? If nothing else, it never
 does the 'fid->size = new_size' and do the inode update....
 
 ffsSetAttr() is just dangling in the breeze, not wired up at all...
+
+Convert global mutexes to a per-superblock mutex.
+
+Right now, we load exactly one UTF-8 table. Check to see
+if that plays nice with different codepage and iocharset values
+for simultanous mounts of different devices
+
+exfat_rmdir() checks for -EBUSY but ffsRemoveDir() doesn't return it.
+In fact, there's a complete lack of -EBUSY testing anywhere.
+
+There's probably a few missing checks for -EEXIST
+
+check return codes of sync_dirty_buffer()
+
+Why is remove_file doing a num_entries++??
+
+Double check a lot of can't-happen parameter checks (for null pointers for
+things that have only one call site and can't pass a null, etc).
+
+All the DEBUG stuff can probably be tossed, including the ioctl(). Either
+that, or convert to a proper fault-injection system.
+
+exfat_remount does exactly one thing.  Fix to actually deal with remount
+options, particularly handling R/O correctly.  For that matter, allow
+R/O mounts in the first place.
+
+Figure out why the VFAT code used multi_sector_(read|write) but the
+exfat code doesn't use it. The difference matters on SSDs with wear leveling.
+
+exfat_fat_sync(), exfat_buf_sync(), and sync_alloc_bitmap()
+aren't called anyplace....
+
+Create helper function for exfat_set_entry_time() and exfat_set_entry_type()
+because it's sort of ugly to be calling the same functionn directly and
+other code calling through the fs_func struc ponters...
+
+clean up the remaining vol_type checks, which are of two types:
+some are ?: operators with magic numbers, and the rest are places
+where we're doing stuff with '.' and '..'.
+
+Patches to:
+	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
+	Valdis Kletnieks <valdis.kletnieks@vt.edu>
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
