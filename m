Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FBC17210
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 May 2019 09:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6026862BE;
	Wed,  8 May 2019 07:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rLKNGYSdDsCL; Wed,  8 May 2019 07:02:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 105F08626B;
	Wed,  8 May 2019 07:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 162631BF2C4
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 07:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12D4920791
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 07:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OrH9m8SbL99w for <devel@linuxdriverproject.org>;
 Wed,  8 May 2019 07:02:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by silver.osuosl.org (Postfix) with ESMTPS id CCC382076F
 for <devel@driverdev.osuosl.org>; Wed,  8 May 2019 07:02:50 +0000 (UTC)
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4872GTC055220
 for <devel@driverdev.osuosl.org>; Wed, 8 May 2019 03:02:49 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sbr09xbp2-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <devel@driverdev.osuosl.org>; Wed, 08 May 2019 03:02:49 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <devel@driverdev.osuosl.org> from <alastair@au1.ibm.com>;
 Wed, 8 May 2019 08:02:47 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 8 May 2019 08:02:39 +0100
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4872cSV59900032
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 May 2019 07:02:38 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 17E1442045;
 Wed,  8 May 2019 07:02:38 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 646DD4203F;
 Wed,  8 May 2019 07:02:37 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  8 May 2019 07:02:37 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 04A30A01A2;
 Wed,  8 May 2019 17:02:35 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Subject: [PATCH v2 0/7] Hexdump Enhancements
Date: Wed,  8 May 2019 17:01:40 +1000
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19050807-4275-0000-0000-00000332844B
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050807-4276-0000-0000-00003841F1F3
Message-Id: <20190508070148.23130-1-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080046
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Alastair D'Silva <alastair@d-silva.org>

Apologies for the large CC list, it's a heads up for those responsible
for subsystems where a prototype change in generic code causes a change
in those subsystems.

This series enhances hexdump.

These improve the readability of the dumped data in certain situations
(eg. wide terminals are available, many lines of empty bytes exist, etc).

The default behaviour of hexdump is unchanged, however, the prototype
for hex_dump_to_buffer() has changed, and print_hex_dump() has been
renamed to print_hex_dump_ext(), with a wrapper replacing it for
compatibility with existing code, which would have been too invasive to
change.

Hexdump selftests have be run & confirmed passed.

Changelog:
 - Fix failing selftests
 - Fix precedence bug in 'Replace ascii bool in hex_dump_to_buffer...'
 - Remove hardcoded new lengths & instead relax the checks in
   hex_dump_to_buffer, allocating the buffer from the heap instead of the
   stack.
 - Replace the skipping of lines of 0x00/0xff with skipping lines of
   repeated characters, announcing what has been skipped.
 - Add spaces as an optional N-group separator
 - Allow byte ordering to be maintained when HEXDUMP_RETAIN_BYTE_ORDERING
   is set.
 - Updated selftests to cover 'Relax rowsize checks' &
   'Optionally retain byte ordering'

Alastair D'Silva (7):
  lib/hexdump.c: Fix selftests
  lib/hexdump.c: Relax rowsize checks in hex_dump_to_buffer
  lib/hexdump.c: Optionally suppress lines of repeated bytes
  lib/hexdump.c: Replace ascii bool in hex_dump_to_buffer with flags
  lib/hexdump.c: Allow multiple groups to be separated by lines '|'
  lib/hexdump.c: Allow multiple groups to be separated by spaces
  lib/hexdump.c: Optionally retain byte ordering

 drivers/gpu/drm/i915/intel_engine_cs.c        |   2 +-
 drivers/isdn/hardware/mISDN/mISDNisar.c       |   6 +-
 drivers/mailbox/mailbox-test.c                |   2 +-
 drivers/net/ethernet/amd/xgbe/xgbe-drv.c      |   2 +-
 .../net/ethernet/synopsys/dwc-xlgmac-common.c |   2 +-
 drivers/net/wireless/ath/ath10k/debug.c       |   3 +-
 .../net/wireless/intel/iwlegacy/3945-mac.c    |   2 +-
 drivers/platform/chrome/wilco_ec/debugfs.c    |   2 +-
 drivers/scsi/scsi_logging.c                   |   8 +-
 drivers/staging/fbtft/fbtft-core.c            |   2 +-
 fs/seq_file.c                                 |   3 +-
 include/linux/printk.h                        |  34 ++-
 lib/hexdump.c                                 | 260 +++++++++++++++---
 lib/test_hexdump.c                            | 146 +++++++---
 14 files changed, 372 insertions(+), 102 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
