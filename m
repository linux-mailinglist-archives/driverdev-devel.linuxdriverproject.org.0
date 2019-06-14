Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A75846746
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 20:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCDCF87D60;
	Fri, 14 Jun 2019 18:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlsmVcu3Uyo1; Fri, 14 Jun 2019 18:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3216987D6D;
	Fri, 14 Jun 2019 18:17:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD95F1BF83A
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 18:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB0C5884FA
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 18:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQR4MDdCRFhc for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 18:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD514884EE
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 18:17:17 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 575A9499F4040C8D4004;
 Sat, 15 Jun 2019 02:17:13 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 15 Jun
 2019 02:17:02 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: <chao@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [RFC PATCH 0/8] staging: erofs: decompression inplace approach
Date: Sat, 15 Jun 2019 02:16:11 +0800
Message-ID: <20190614181619.64905-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
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
Cc: linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

After working on for more than half a year, the detail of erofs decompression
inplace is almost determined and ready for linux-next.

Currently, inplace IO is used if the whole compressed data is used
in order to reduce compressed pages extra memory overhead and an extra
memcpy (the only one memcpy) will be used for each inplace IO since
temporary buffer is needed to keep decompressing safe for inplace IO.

However, most of lz-based decompression algorithms support decompression
inplace by their algorithm designs, such as LZ4, LZO, etc.

If iend - oend margin is large enough, decompression inplace can be done
in the same buffer safely, as illustrated below:

         start of compressed logical extent
           |                          end of this logical extent
           |                           |
     ______v___________________________v________
... |  page 6  |  page 7  |  page 8  |  page 9  | ...
    |__________|__________|__________|__________|
           .                         ^ .        ^
           .                         |compressed|
           .                         |   data   |
           .                           .        .
           |<          dstsize        >|<margin>|
                                       oend     iend
           op                        ip

Fixed-size output compression can make the full use of this feature
to reduce memory overhead and avoid extra memcpy compared with fixed-size
input compression since iend is strictly not less than oend for fixed-size
output compression with inplace IO to last pages.

In addition, erofs compression indexes have been improved as well by
introducing compacted compression indexes.

These two techniques all benefit sequential read (on x86_64, 710.8MiB/s
-> 755.4MiB/s; on Kirin980, 725MiB/s -> 812MiB/s) therefore erofs
could have similar sequential read performance against ext4 in a larger
CR range on high-spend SSD / NVMe devices as well.

However, note that it is _cpu vs storage device_ balance, there is no
absolute performance conclusion for all on-market combinations.

At last, this is RFC patch v1, which means it is not suitable for
merging soon... I'm still working on it, testing its stability
these days and hope these patches get merged for 5.3 LTS
(if 5.3 is a LTS version).

The series is based on staging-next with the following patches, which
can be merged in advance:
 [PATCH v3 1/2] staging: erofs: add requirements field in superblock
 [PATCH v2 2/2] staging: erofs: rename data_mapping_mode to datamode



Test images:
 name                       size                 CR
 enwik9                     1000000000           1.00
 enwik9_4k.squashfs.img      621211648           1.61
 enwik9_4k.erofs.img         558133248           1.79
 enwik9_8k.squashfs.img      556191744           1.80
 enwik9_16k.squashfs.img     502661120           1.99
 enwik9_128k.squashfs.img    398204928           2.51

Test Environment:
CPU: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz (4 cores, 8 threads)
DDR: 8G
SSD: INTEL SSDPEKKF360G7H
Kernel: Linux 5.2-rc3+ (with lz4-1.8.3 algorithm)

Test configuration:
squashfs:
CONFIG_SQUASHFS=y
CONFIG_SQUASHFS_FILE_DIRECT=y
CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU=y
CONFIG_SQUASHFS_LZ4=y
CONFIG_SQUASHFS_4K_DEVBLK_SIZE=y
erofs:
CONFIG_EROFS_FS_USE_VM_MAP_RAM=y
CONFIG_EROFS_FS_ZIP=y
CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT=1
CONFIG_EROFS_FS_ZIP_CACHE_BIPOLAR=y

with intel_pstate=disable,
     8 cpus on at 1801000 scaling_{min,max}_freq,
     userspace scaling_governor

Sequential read results (MiB/s):
                           1      2      3      4      5      avg
 enwik9_4k.ext4.img        767    770    738    726    724    745
 enwik9_4k.erofs.img       756    745    770    746    760    755.4
 enwik9_4k.squashfs.img    90.3   83.0   94.3   90.7   92.6   90.18
 enwik9_8k.squashfs.img    111    108    110    108    110    109.4
 enwik9_16k.squashfs.img   158    163    146    165    174    161.2
 enwik9_128k.squashfs.img  324    314    262    262    296    291.6


Thanks,
Gao Xiang

Gao Xiang (8):
  staging: erofs: add compacted ondisk compression indexes
  staging: erofs: add compacted compression indexes support
  staging: erofs: move per-CPU buffers implementation to utils.c
  staging: erofs: move stagingpage operations to compress.h
  staging: erofs: introduce generic decompression backend
  staging: erofs: introduce LZ4 decompression inplace
  staging: erofs: switch to new decompression backend
  staging: erofs: integrate decompression inplace

 drivers/staging/erofs/Makefile        |   2 +-
 drivers/staging/erofs/compress.h      |  62 ++++
 drivers/staging/erofs/data.c          |   4 +-
 drivers/staging/erofs/decompressor.c  | 321 ++++++++++++++++++
 drivers/staging/erofs/erofs_fs.h      |  60 +++-
 drivers/staging/erofs/inode.c         |  12 +-
 drivers/staging/erofs/internal.h      |  58 +++-
 drivers/staging/erofs/unzip_vle.c     | 368 ++------------------
 drivers/staging/erofs/unzip_vle.h     |  38 +--
 drivers/staging/erofs/unzip_vle_lz4.c | 229 -------------
 drivers/staging/erofs/utils.c         |  12 +
 drivers/staging/erofs/zmap.c          | 462 ++++++++++++++++++++++++++
 12 files changed, 996 insertions(+), 632 deletions(-)
 create mode 100644 drivers/staging/erofs/compress.h
 create mode 100644 drivers/staging/erofs/decompressor.c
 delete mode 100644 drivers/staging/erofs/unzip_vle_lz4.c
 create mode 100644 drivers/staging/erofs/zmap.c

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
