Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6182D19A1
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:34:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B0F086E2E;
	Mon,  7 Dec 2020 19:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkJnEZNszZUJ; Mon,  7 Dec 2020 19:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAF1386F9B;
	Mon,  7 Dec 2020 19:34:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE06A1BF976
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B74C386A2F
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZCcEm_x1E2Ry for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:34:52 +0000 (UTC)
X-Greylist: delayed 00:07:39 by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C266869F7
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:34:52 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 5232B240D59;
 Mon,  7 Dec 2020 20:27:01 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 450E73280304; Mon,  7 Dec 2020 20:27:01 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 00/12] media: atomisp: Codingstyle
Date: Mon,  7 Dec 2020 20:26:26 +0100
Message-Id: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
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
Reply-To: Philipp.Gerlesberger@fau.de, ij72uhux@stud.informatik.uni-erlangen.de
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

Best regards
Philipp

----------------------------------------------------------------------
  media: atomsip: Convert comments to C99 initializers
  media: atomisp: Fix Block Comments
  media: atomisp: Fix EMBEDDED_FUNCTION_NAME warning
  media: atomisp: Fix OPEN_ENDED_LINE
  media: atomisp: Fix overlong line
  media: atomisp: Add parentheses
  media: atomisp: Fix funciton decleration
  media: atomisp: Delete braces
  media: atomisp: Fix PARENTHESIS_ALIGNMENT
  media: atomisp: Fix BLOCK_COMMENT_STYLE
  media: atomisp: Write function decleration in one line
  media: atomisp: Fix LOGICAL_CONTINUATIONS

 .../atomisp/pci/runtime/queue/src/queue.c     | 48 +++++-------------
 .../pci/runtime/rmgr/interface/ia_css_rmgr.h  |  4 +-
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  | 49 +++++++++----------
 .../atomisp/pci/runtime/spctrl/src/spctrl.c   |  7 ++-
 .../atomisp/pci/runtime/timer/src/timer.c     |  7 +--
 5 files changed, 44 insertions(+), 71 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
