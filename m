Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2A014EAD3
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jan 2020 11:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3378588055;
	Fri, 31 Jan 2020 10:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9Ac1oYCE6j0; Fri, 31 Jan 2020 10:39:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88DB087E0A;
	Fri, 31 Jan 2020 10:39:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9453D1BF355
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 90F9887E17
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8bb0y513xiV for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 10:39:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D825987E0A
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 10:39:06 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 886E3AFF6;
 Fri, 31 Jan 2020 10:39:04 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/21] staging: vc04_services: suspend/resume cleanup
Date: Fri, 31 Jan 2020 11:38:16 +0100
Message-Id: <20200131103836.14312-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While in the process of preparing vchiq to support the Raspberry Pi 4, I
stumbled upon a bunch of dead code in it. Which this series deletes.

Ultimately the idea is to clean up vchiq_bcm2835_arm.c up to a point
where it'll be easy to join it with vchiq_arm.c, which IIRC the TODO
file states, should be the sole responsible for platform code.

With this we'll be able to introduce RPi4's functionality in a cleaner
way.

Overall it's a 500 line clean up, I tried to keep the patches as small and
manageable as possible, but I'd be happy to squash them if you prefer it
that way.

This was tested on a RPi3-B using the camera and HDMI audio and
vchiq_test app.

---

Changes since v1:
 - Reordered patches so as to have all of the suspend/resume state
   deletion together
 - Fix bug found by kbuild test robot
 - move "staging: vc04_services: Get rid of vc_suspend_state in struct
   vchiq_arm_state" into "staging: vc04_services: Get rid of unused
   suspend/resume states"

Nicolas Saenz Julienne (21):
  staging: vc04_services: Remove unused variables in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of resume_blocked in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of resume_blocker completion in struct
    vchiq_arm_state
  staging: vc04_services: get rid of blocked_blocker completion in
    struct vchiq_arm_state
  staging: vc04_services: Delete blocked_count in struct vchiq_arm_state
  staging: vc04_services: get rid of vchiq_platform_use_suspend_timer()
  staging: vc04_services: Get rid of vchiq_platform_paused/resumed()
  staging: vc04_services: Get rid of vchiq_platform_suspend/resume()
  staging: vc04_services: Get rid of vchiq_platform_videocore_wanted()
  staging: vc04_services: Get rid of vchiq_platform_handle_timeout()
  staging: vc04_services: Get rid of vchiq_on_remote_use_active()
  staging: vc04_services: Get rid of vchiq_arm_vcsuspend()
  staging: vc04_services: Get rid of vchiq_check_resume()
  staging: vc04_services: Delete vc_suspend_complete completion
  staging: vc04_services: Get rid of unused suspend/resume states
  staging: vc04_services: Get of even more suspend/resume states
  staging: vc04_services: Get rid of the rest of suspend/resume state
    handling
  staging: vc04_services: Get rid of USE_TYPE_SERVICE_NO_RESUME
  staging: vc04_services: Delete vchiq_platform_check_suspend()
  staging: vc04_services: Get rid of vchiq_arm_vcresume()'s signature
  staging: vc04_services: vchiq_arm: Get rid of unused defines

 .../interface/vchiq_arm/vchiq_2835_arm.c      |  43 --
 .../interface/vchiq_arm/vchiq_arm.c           | 495 +-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  76 ---
 .../interface/vchiq_arm/vchiq_core.c          |  16 -
 .../interface/vchiq_arm/vchiq_core.h          |  15 -
 5 files changed, 9 insertions(+), 636 deletions(-)

-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
