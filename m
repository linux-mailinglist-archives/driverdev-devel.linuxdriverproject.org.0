Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2F520CF6C
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC1C32288F;
	Mon, 29 Jun 2020 15:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NLVb+pz+hE9u; Mon, 29 Jun 2020 15:10:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33D79228A0;
	Mon, 29 Jun 2020 15:10:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAD501BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB5ED20774
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oxz9F3EbbLzF for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:09:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 1AF40204F2
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:09:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id A0D01AED7;
 Mon, 29 Jun 2020 15:09:52 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 00/47] staging: vchiq: Getting rid of the vchi/vchiq split
Date: Mon, 29 Jun 2020 17:08:58 +0200
Message-Id: <20200629150945.10720-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vchi acts as a mid layer between vchiq and its kernel services, while
arguably providing little to no benefit: half of the functions exposed
are a 1:1 copy of vchiq's, and the rest provide some functionality which
can be easly integrated into vchiq without all the churn. Moreover it
has been found in the past as a blockage to further fixes in vchiq as
every change needed its vchi counterpart, if even possible.

Hence this series, which merges all vchi functionality into vchiq and
provies a simpler and more concise API to services.

I'm aware that kernel's vchi API tries to mimic its userspace
counterpart (or vice versa). Obviously this breaks the parity, but I
don't think it's a sane goal to have. There is little sense or gain from
it, and adds impossible constraints to upstreaming the driver.

Overall this fall short of removing 1100 lines of code, which is pretty
neat on itself.

So far it has been tested trough bcm2835-camera, audio and vchiq-test. I
can't do much about vc-sm-cma for now as it's only available downstream,
but I made sure not to break anything and will provide some patches for
the RPi devs to pick-up, so as to make their life easier.

Note that in order to keep the divergence between the downstream and
upstream versions of this as small as possible I picked up some
mmal-vchiq patches that might not be absolutely necessary to the goal of
the series.

Regards,
Nicolas

Previous versions:
 v1: https://www.spinics.net/lists/arm-kernel/msg816310.html
 RFC: https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2174964.html

Changes since v1:
 - Remove "staging: mmal-vchiq: Avoid use of bool in structures"
 - Fix issue pointed out by Dan Carpenter
 - Fix unwarranted include in "staging: vchiq: Move vchiq.h into include directory"

---

Dave Stevenson (6):
  staging: mmal-vchiq: Make timeout a defined parameter
  staging: mmal-vchiq: Make a mmal_buf struct for passing parameters
  staging: mmal-vchiq: Fixup vchiq-mmal include ordering
  staging: mmal-vchiq: Fix client_component for 64 bit kernel
  staging: mmal-vchiq: Always return the param size from param_get
  staging: mmal-vchiq: If the VPU returns an error, don't negate it

Naushir Patuck (1):
  staging: mmal-vchiq: Fix formatting errors in mmal_parameters.h

Nicolas Saenz Julienne (39):
  staging: vchi: Get rid of all useless callback reasons
  staging: vchi: Get rid of vchi_msg_peek()
  staging: vchi: Get rid of struct vchi_instance_handle
  staging: vchi: Unify struct shim_service and struct
    vchi_service_handle
  staging: vc04_services: bcm2835-audio: Use vchi_msg_hold()
  staging: vchi: Get rid of vchi_msg_dequeue()
  staging: vchi_common: Get rid of all unused definitions
  staging: vchi: Get rid of unnecessary defines
  staging: vc04_services: Get rid of vchi_cfg.h
  staging: vchi: Get rid of flags argument in vchi_msg_hold()
  staging: vchi: Use enum vchiq_bulk_mode instead of vchi's transmission
    flags
  staging: vchi: Use vchiq's enum vchiq_reason
  staging: vchi: Get rid of effect less expression
  staging: vchiq: Introduce vchiq_validate_params()
  staging: vchiq: Move message queue into struct vchiq_service
  staging: vchiq: Get rid of vchiq_util.h
  staging: vchi: Expose struct vchi_service
  staging: vchiq: Export vchiq_get_service_userdata()
  staging: vchiq: Export vchiq_msg_queue_push
  staging: vchi: Get rid of vchiq_shim's message callback
  staging: vchiq: Don't use a typedef for vchiq_callback
  staging: vchi: Use struct vchiq_service_params
  staging: vchi: Get rid of struct vchi_service
  staging: vchiq: Pass vchiq's message when holding a message
  staging: vchi: Rework vchi_msg_hold() to match vchiq_msg_hold()
  staging: vchiq: Unify fourcc definition mechanisms
  staging: vchi: Get rid of struct vchiq_instance forward declaration
  staging: vchi: Don't include vchiq_core.h
  staging: vchiq: Get rid of unnecessary definitions in vchiq_if.h
  staging: vchiq: Make vchiq_add_service() local
  staging: vchiq: Move definitions only used by core into core header
  staging: vchi: Get rid of vchi_bulk_queue_receive()
  staging: vchi: Get rid of vchi_bulk_queue_transmit()
  staging: vchi: Move vchi_queue_kernel_message() into vchiq
  staging: vchiq: Get rid of vchi
  staging: vchiq: Move conditional barrier definition into vchiq_core.h
  staging: vchiq: Use vchiq.h as the main header file for services
  staging: vchiq: Move defines into core header
  staging: vchiq: Move vchiq.h into include directory

Phil Elwell (1):
  staging: vchiq_arm: Add a matching unregister call

 drivers/staging/vc04_services/Makefile        |   4 +-
 .../vc04_services/bcm2835-audio/Makefile      |   2 +-
 .../bcm2835-audio/bcm2835-vchiq.c             | 100 ++-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   4 +-
 .../bcm2835-audio/vc_vchi_audioserv_defs.h    |   5 +-
 .../bcm2835-camera/bcm2835-camera.c           |  66 +-
 .../linux/raspberrypi/vchiq.h}                |  67 +-
 .../vc04_services/interface/{vchi => }/TODO   |   0
 .../vc04_services/interface/vchi/vchi.h       | 159 -----
 .../vc04_services/interface/vchi/vchi_cfg.h   | 238 -------
 .../interface/vchi/vchi_common.h              | 138 ----
 .../vc04_services/interface/vchiq_arm/vchiq.h |  21 -
 .../interface/vchiq_arm/vchiq_2835_arm.c      |   1 +
 .../interface/vchiq_arm/vchiq_arm.c           |  88 ++-
 .../interface/vchiq_arm/vchiq_core.c          |  97 ++-
 .../interface/vchiq_arm/vchiq_core.h          |  46 +-
 .../interface/vchiq_arm/vchiq_ioctl.h         |   2 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 617 ------------------
 .../interface/vchiq_arm/vchiq_util.c          |  85 ---
 .../interface/vchiq_arm/vchiq_util.h          |  50 --
 .../staging/vc04_services/vchiq-mmal/Makefile |   1 +
 .../vc04_services/vchiq-mmal/mmal-common.h    |   5 +
 .../vc04_services/vchiq-mmal/mmal-msg.h       |   2 +-
 .../vchiq-mmal/mmal-parameters.h              |  32 +-
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 228 ++++---
 .../vc04_services/vchiq-mmal/mmal-vchiq.h     |   5 +-
 26 files changed, 458 insertions(+), 1605 deletions(-)
 rename drivers/staging/vc04_services/{interface/vchiq_arm/vchiq_if.h => include/linux/raspberrypi/vchiq.h} (56%)
 rename drivers/staging/vc04_services/interface/{vchi => }/TODO (100%)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_common.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
