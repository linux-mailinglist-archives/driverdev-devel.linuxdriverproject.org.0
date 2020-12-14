Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B72D96DB
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:02:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8F887204F8;
	Mon, 14 Dec 2020 11:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BC4iNnFZD0hm; Mon, 14 Dec 2020 11:02:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A6A0204E7;
	Mon, 14 Dec 2020 11:02:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EB0E1BF45A
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B5798626E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6mF7bMW5Z23 for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:02:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8FF178623B
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:02:20 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [IPv6:2001:638:a000:4130:131:188:30:90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 78D9F240B57;
 Mon, 14 Dec 2020 12:02:17 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 71B223280146; Mon, 14 Dec 2020 12:02:17 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/12] media: atomisp: Codingstyle
Date: Mon, 14 Dec 2020 12:01:44 +0100
Message-Id: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, ij72uhux@stud.informatik.uni-erlangen.de,
 Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello!

This series fix some codingstyle errors in the files
rmgr_vbuf.c, ia_css_rmgr.h, timer.c, spctrl.c and queue.c
in the drivers/staging/media area.

V2:
[Patch 1/12] Also remove NULL, 0 and false members to make it
	     C99 standard comform.

[Patch 6/12] Checkpatch throws COMPLEX_MACRO Error. Handle that
	     error by deleting these defines.

The other patches are the same. 

Best regards
Philipp

----------------------------------------------------------------------
  media: atomisp: Convert comments to C99 initializers
  media: atomisp: Fix Block Comments
  media: atomisp: Fix EMBEDDED_FUNCTION_NAME warning
  media: atomisp: Fix OPEN_ENDED_LINE
  media: atomisp: Fix overlong line
  media: atomisp: Remove defines
  media: atomisp: Fix funciton decleration
  media: atomisp: Delete braces
  media: atomisp: Fix PARENTHESIS_ALIGNMENT
  media: atomisp: Fix BLOCK_COMMENT_STYLE
  media: atomisp: Write function decleration in one line
  media: atomisp: Fix LOGICAL_CONTINUATIONS

 .../atomisp/pci/runtime/queue/src/queue.c     | 48 +++++--------------
 .../pci/runtime/rmgr/interface/ia_css_rmgr.h  |  5 +-
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  | 41 ++++++----------
 .../atomisp/pci/runtime/spctrl/src/spctrl.c   |  7 ++-
 .../atomisp/pci/runtime/timer/src/timer.c     |  7 +--
 5 files changed, 33 insertions(+), 75 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
