Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CCB1E4096
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DBC888788;
	Wed, 27 May 2020 11:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSm6teVtOp76; Wed, 27 May 2020 11:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD7FE88767;
	Wed, 27 May 2020 11:54:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E07A71BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD28786D17
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j_3NpD9gkVyF for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B029786D16
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:14 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 10013AC5B;
 Wed, 27 May 2020 11:54:15 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [RFC 00/50] staging: vchiq: Getting rid of the vchi/vchiq split
Date: Wed, 27 May 2020 13:53:05 +0200
Message-Id: <20200527115400.31391-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
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
 linux-kernel@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 gregkh@linuxfoundation.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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

Overall the series falls short of removing 1500 lines of code, which is
pretty neat on itself.

So far it has been tested trough bcm2835-camera, audio and vchiq-test. I
can't do much about vc-sm-cma for now, but the changes are done in a way
that shouldn't affect its behaviour.

Note that the series builds up on RPi/Laurent's camera support series[1]
and can't yet be merged. We'd have to coordinate here. We could either
wait for the vc_sm_cma rework (if it's not going to take months and
months to finish), or factor out all the vc-sm-cma stuff, merge that into
the downstream kernel and take the rest of the series on top of
Laurent's mmal-vchiq changes.

Regards,
Nicolas

[1] https://lwn.net/ml/linux-media/20200504092611.9798-1-laurent.pinchart@ideasonboard.com/

---

Nicolas Saenz Julienne (50):
  staging: vchi: Get rid of vchi_service_destroy()
  staging: vchi: Get rid of vchi_queue_user_message()
  staging: vchiq: Move copy callback handling into vchiq
  staging: vchi: Merge vchi_msg_queue() into vchi_queue_kernel_message()
  staging: vchi: Get rid of vchi_service_set_option()
  staging: vchi: Get rid of vchiq_status_to_vchi()
  staging: vchi: Get rid of not implemented function declarations
  staging: vchi: Get rid of C++ guards
  staging: vchiq: move vchiq_release_message() into vchiq
  staging: vchiq: Get rid of VCHIQ_SERVICE_OPENEND callback reason
  staging: vchi: Get rid of all useless callback reasons
  staging: vchi: Get rid of vchi_msg_peek()
  staging: vchi: Get rid of struct vchi_instance_handle
  staging: vchi: Unify struct shim_service and struct
    vchi_service_handle
  staging: vc04_services: bcm2835-audio: Use vchi_msg_hold()
  staging: vchi: Get rid of vchi_msg_dequeue()
  staging: vchi_common: Get rid of all unused definitions
  staging: vc04_services: vc-sm-cma: Get rid of the multiple connections
    option
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

 drivers/staging/vc04_services/Makefile        |   4 +-
 .../vc04_services/bcm2835-audio/Makefile      |   2 +-
 .../bcm2835-audio/bcm2835-vchiq.c             | 100 ++-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   4 +-
 .../bcm2835-audio/vc_vchi_audioserv_defs.h    |   5 +-
 .../linux/raspberrypi/vchiq.h}                |  71 +-
 .../vc04_services/interface/{vchi => }/TODO   |   0
 .../vc04_services/interface/vchi/vchi.h       | 240 ------
 .../vc04_services/interface/vchi/vchi_cfg.h   | 238 ------
 .../interface/vchi/vchi_common.h              | 138 ----
 .../vc04_services/interface/vchiq_arm/vchiq.h |  21 -
 .../interface/vchiq_arm/vchiq_2835_arm.c      |   1 +
 .../interface/vchiq_arm/vchiq_arm.c           |  86 +-
 .../interface/vchiq_arm/vchiq_core.c          | 110 ++-
 .../interface/vchiq_arm/vchiq_core.h          |  53 +-
 .../interface/vchiq_arm/vchiq_ioctl.h         |   2 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 751 ------------------
 .../interface/vchiq_arm/vchiq_util.c          |  85 --
 .../interface/vchiq_arm/vchiq_util.h          |  50 --
 .../staging/vc04_services/vc-sm-cma/Makefile  |   1 -
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |  10 +-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  | 108 ++-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.h  |   5 +-
 .../vc04_services/vc-sm-cma/vc_sm_defs.h      |   3 -
 .../staging/vc04_services/vchiq-mmal/Makefile |   1 +
 .../vc04_services/vchiq-mmal/mmal-msg.h       |   1 -
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 177 ++---
 27 files changed, 419 insertions(+), 1848 deletions(-)
 rename drivers/staging/vc04_services/{interface/vchiq_arm/vchiq_if.h => include/linux/raspberrypi/vchiq.h} (55%)
 rename drivers/staging/vc04_services/interface/{vchi => }/TODO (100%)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_common.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
