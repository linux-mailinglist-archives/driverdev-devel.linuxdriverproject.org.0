Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFC95AAB8
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87B65882AD;
	Sat, 29 Jun 2019 12:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyIGIS+PyZb2; Sat, 29 Jun 2019 12:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D27A881AB;
	Sat, 29 Jun 2019 12:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC0081BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D935086E77
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVDit3+dOqjV for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65CE086DCE
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810445;
 bh=fL2+AI98j8bIYBwN2CiIF9PN7Bc2vnixmlYqMuIDlao=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=A4ErE7VB5/vRVwUyDfddYINa+liW3u5mZfMjL+JzWNgBQuSW+yj9ScgmDz6LVOADS
 UKT+Fonv/CR3DINhObNHhqA5MUTU/F0FeIF5EaEnvYf1LqyjEAdLufzdjE+zLa2wda
 QMhGVTCG5B09TEVN68rAA+MbfiegnDklXW2Ysb5g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Mb8HX-1i06pq1FwB-00KiTJ; Sat, 29 Jun 2019 14:14:05 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 02/29] staging: bcm2835-camera: Replace spinlock protecting
 context_map with mutex
Date: Sat, 29 Jun 2019 14:13:17 +0200
Message-Id: <1561810410-8829-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:BqPhO65rcNnqQtgYuhpJKHix52bqJyO4dyUafgpRYICvlwQuxw5
 oKUAAST17Z2Xq28lb8OIDSpRKKloIbfqiNcGkN7v5wGB6Ztb7kyzBoUy/PK9gTbfCEOYYhE
 xj6mzji8vPjxJJP11KspOlmTI22GjctRUcjmW2209H9h05c7n2dDlhVY+ldisMTZLtnQMRO
 g75rZ4Yf0bD4rX0QQtq2A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:P9Ad1yr2X78=:ZdQxY67sLVi9AnBy6PbcGQ
 6nsc9UydiYzpzYIgGi6HO+euckaAGS+/1mIrYUNhRial7uPZTXfliUT94FC60aImsV1WMc8lh
 jstzRlm2XSRafrMRsVCgQh2QWgar2VwoKjnjyuXGiZ8mur1emnl4rs4tDbxg3GQwTJI6eLkiW
 px3TmJynMH6h4Y7E/Qz3W1gNWdQG8qs3/h7VBuT6+vWqjJfgeuh10lJZ/v7Bn0fTQ2gYZu2Jr
 FYdD+JbV/jwRX/EdySNJg7pTWrBjU0GTXw5STz/9iQlLfFnKuYl49ilvknSGGDZpoSA/jVtld
 rCH5oXUGBZTc1dl1HzUvWqFvRDTGIOEJSZBcpxjitTnfXW1QKOx6kFXRqX3BMm/8WPoZZCdcl
 bfU5F+MdckGHNLq6+HQ9/sqq7//uhS4yUXYLzofiK8eArrsxpaWsk43Wbh2PrUDQhSpQFb/AH
 sUAqiD+OuH2KLVW4VYAtSXIDxQQm/jm4f0iMS6V5t/iX4eisMVcxpmbPl4FznqMDFjvAwmFsf
 VVO1OL2ZOXftATO4N0nXW4IRPLNBqBCHJDsKajf5xe3P97ERR4FD2y6+CQCMSSsURtYgIW/HM
 zSbGUT+bp4i3vmwRfvkfGPlBb7dAtQY3FKcY8Q4p+fsVQHjYg94PMPdakGLRAz3x0MFcYkW/9
 MaX6YGJqnzuD+9L6odUBoPqegqvNHAclkz5aEbF3gkKBJbxvhSlZre4EoWLqV8t0ldeWidg2t
 srT38TflRmIt0fUPSBmZ094byrImCl6J3qU9aWfNVP2jKOxvrGhdE4rZwsWQa8tERiRbSspdJ
 fbauY0eEySUh+ka+T/4hy7SwutgI+AInZ78pJjdahK+UAxnq5PyaJypRUKoceElInhvqfWCKr
 8ll1U7H1dU/un1aNK/K3ON2ExrStBldRRXFPm8Ry6rWk4Qid7psyyPa79lB2nUaHtfhk/WN/R
 s1xxsdJAJ9ZmRl+M1tap17JM+96gdVjm7VdXINPoQptnNRTu8UfYDMK3duJ0I12XoTbfKANrN
 RhaTRAMHtiVlo4ZJ0afCPoi1SD0zpaTEGm74KfKnvGZBu4f4ZJIxJl6MVSy3r8mjqtjFnaHBV
 o7/J2iHCDPisIo=
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

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

The commit "staging: bcm2835-camera: Replace open-coded idr with a struct idr."
replaced an internal implementation of an idr with the standard functions
and a spinlock. idr_alloc(GFP_KERNEL) can sleep whilst calling kmem_cache_alloc
to allocate the new node, but this is not valid whilst in an atomic context
due to the spinlock.

There is no need for this to be a spinlock as a standard mutex is
sufficient.

Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 16af735..f1bb900 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -161,7 +161,8 @@ struct vchiq_mmal_instance {
 	void *bulk_scratch;

 	struct idr context_map;
-	spinlock_t context_map_lock;
+	/* protect accesses to context_map */
+	struct mutex context_map_lock;

 	/* component to use next */
 	int component_idx;
@@ -184,10 +185,10 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	 * that when we service the VCHI reply, we can look up what
 	 * message is being replied to.
 	 */
-	spin_lock(&instance->context_map_lock);
+	mutex_lock(&instance->context_map_lock);
 	handle = idr_alloc(&instance->context_map, msg_context,
 			   0, 0, GFP_KERNEL);
-	spin_unlock(&instance->context_map_lock);
+	mutex_unlock(&instance->context_map_lock);

 	if (handle < 0) {
 		kfree(msg_context);
@@ -211,9 +212,9 @@ release_msg_context(struct mmal_msg_context *msg_context)
 {
 	struct vchiq_mmal_instance *instance = msg_context->instance;

-	spin_lock(&instance->context_map_lock);
+	mutex_lock(&instance->context_map_lock);
 	idr_remove(&instance->context_map, msg_context->handle);
-	spin_unlock(&instance->context_map_lock);
+	mutex_unlock(&instance->context_map_lock);
 	kfree(msg_context);
 }

@@ -1849,7 +1850,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)

 	instance->bulk_scratch = vmalloc(PAGE_SIZE);

-	spin_lock_init(&instance->context_map_lock);
+	mutex_init(&instance->context_map_lock);
 	idr_init_base(&instance->context_map, 1);

 	params.callback_param = instance;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
