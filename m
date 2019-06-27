Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1015258A66
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0F2688056;
	Thu, 27 Jun 2019 18:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mz6KUPFvkl3f; Thu, 27 Jun 2019 18:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD64F88007;
	Thu, 27 Jun 2019 18:57:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4EE01BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A216087FB5
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJLyzxyVuG5T for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E82FE88031
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661808;
 bh=DXyEL84Fhwic9IwOQd4ecx8Bzy/Ux/PAo++faZcFMWg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Nr8i+5iIX0Ss7odRtqbnO3Z582pC9O5maYlaVwiPk9aRQ5fe4oRccCmtLNheW+pc5
 FpEm+t3IM0NaSoFpBSBqVKDp2yAqh1GUq/aabo1nwbTe3I60g514EQcbduxmkhCtLN
 upHN8PEl74Irl4ZKh70kkXcTBaLNyiJTU4awV/jk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MN0jA-1heMeG1kE4-006bb9; Thu, 27 Jun 2019 20:56:48 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 00/31] staging: bcm2835-camera: Improvements
Date: Thu, 27 Jun 2019 20:55:57 +0200
Message-Id: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:8Eqgko+EnTeRwglBG9QqHkcenf6ctqYS1XJThx9/cgBmPM0yjgc
 bJSV21uSZaYRtlnkLtLj70aZ89Xz39nyheGu26ma0Wn+TVzR+Zjbx6RDSNth3ySyIRhxVUn
 ho8Nd87tVSLtZZTc04JZUzTJSiJHbHgn/nINCoLDWBQoqSZ3wdzutUemH61423vFDPOL6at
 Ouw8rkfdKqrNqnWwlSGkg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:aYEhy3KH+30=:5ImWLnoveFbbB3DwxG2Otx
 FYq7BDwVzhhJfaOy82+YzNNFYdIRA4Z3hmt9On9UK0UXtRz58UdtEmkDVpUwxkQ23NDi/8kJX
 f4osxGlARFIwXFzCSWXnTisyYKbMFseZsFTUC7R9XKIEZXenM4y3WFG3P3LpOGlehZoVpJ1qK
 ZiabUM+8C9ZzKDsPOwPuSCiGbChPstvbxlCOdu1mEX3rL5hv7X07ii+D9l96inhYqllRcmSFh
 WzmYTbc/bn2Ly2D0RVQMFfbhf8MqrX5cJNpm08iu5ome4drsIDVz3Jyow0GC+GYyeAZaOU0fG
 NK6bXmJIirKbHpz36QSC3y2K0gGDiu0o4bDCGM5Q5ahlm/Vjl+p8fZJ05VvEl113AK3LhTIxS
 zuuAuB6sWirgkYZVoRvB3aC/31y0wmWZ02XRX3eFDz0isPT3Stk2Rf3giN4G3LmboZ51XS2Df
 GsZtVqOylJNVgDktOR+eOrllrZWBPN2zwbX1JImkeJR9n9+bXArLvcVsKvAIfe+/OgM0X9Ixs
 z0exYBANnqgF5oIEL8EvFwICi+Z944+4Lxg1OAscbNQR02s0hLbsIWQOACuD4g6q0gcAfw/ZB
 eAwLrtM7efjD4JFcjwbIWuhQXMnmkuI+yjAV1pyfSHJ8xVefEaDBGD118EC3wOQB3RQMcH1ho
 b4PDd79nLIyFlxJkSdGGl7NJzDkCtT78LMCfx6jv1xtq50YXE0mK5BTR/GWiPaJBMcHT9CDQj
 0NK5Fk8zGp2u8l5CYAu05MTXpVn7tvKosXrD/1xvTyoWjzf2TkonHdlKFi3nEeq+XTl22pwE0
 37+5me83vvdLtOoIDarC3hVgHb2G3VNVNIDeGvlYNhOdhrwNkaCHWN68+FH/Zzb1UvxFyOfhx
 j1vHI0spt7DOp/PtjfUPQBsmF/nIRWLMweggxB9P/bY3yuak4gGtgWUQl7ZzzWnR8rgvIvT5k
 dABQmyDgwyepl/UulX3zv7+upI+vN7N7D+Fed4r/8Re/66TAudvb0L2PxPLDD7i+5eFAlYsZD
 DXkn7bh+bcDYHnVq5xGvnTH3hjFyw9FF3j5pyIxHQ5d/7zDsAC+EQ+deB8FTfcj8RqPiIwo6s
 s/RRnNOQ6UhMcA=
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is an attempt to help Dave Stevenson to get all the fixes and
improvements of the bcm2835-camera driver into mainline.

Mostly i only polished the commit logs for upstream.

The series based on the latest bugfix V2 of staging: bcm2835-camera: Restore
return behavior of ctrl_set_bitrate().

Dave Stevenson (31):
  staging: bcm2835-camera: Ensure H264 header bytes get a sensible
    timestamp
  staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
  staging: bcm2835-camera: Replace spinlock protecting context_map with
    mutex
  staging: bcm2835-camera: Do not bulk receive from service thread
  staging: bcm2835-camera: Correctly denote key frames in encoded data
  staging: bcm2835-camera: Return early on errors
  staging: bcm2835-camera: Remove dead email addresses
  staging: bcm2835-camera: Fix comment style violations.
  staging: bcm2835-camera: Fix spacing around operators
  staging: bcm2835-camera: Reduce length of enum names
  staging: bcm2835-camera: Fix multiple line dereference errors
  staging: bcm2835-camera: Fix brace style issues.
  staging: bcm2835-camera: Fix missing lines between items
  staging: bcm2835-camera: Fix open parenthesis alignment
  staging: bcm2835-camera: Ensure all buffers are returned on disable
  staging: bcm2835-camera: Remove check of the number of buffers
    supplied
  staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
  staging: bcm2835-camera: Set sequence number correctly
  staging: bcm2835-camera: Ensure timestamps never go backwards.
  staging: bcm2835-camera: Add multiple inclusion protection to headers
  staging: bcm2835-camera: Unify header inclusion defines
  staging: bcm2835-camera: Fix multiple assignments should be avoided
  staging: bcm2835-camera: Fix up mmal-parameters.h
  staging: bcm2835-camera: Use enums for max value in controls
  staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
  staging: bcm2835-camera: Remove/amend some obsolete comments
  staging: mmal-vchiq: Avoid use of bool in structures
  staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
  staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
  staging: bcm2835-camera: Set the field value within ach buffer
  staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 378 ++++++++++++---------
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  34 +-
 .../vc04_services/bcm2835-camera/controls.c        | 184 +++++-----
 .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
 .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
 .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 ++++----
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
 12 files changed, 826 insertions(+), 654 deletions(-)

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
