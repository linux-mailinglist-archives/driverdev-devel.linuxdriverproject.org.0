Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CEE205785
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 18:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8643488F6F;
	Tue, 23 Jun 2020 16:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PcWEqex6QZIT; Tue, 23 Jun 2020 16:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EA5988D6D;
	Tue, 23 Jun 2020 16:45:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00AF41BF568
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F1D51876D2
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 16:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8hSMFUwzMup for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 16:45:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 58C30876D7
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 16:45:12 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 88BC7B066;
 Tue, 23 Jun 2020 16:45:10 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/50] staging: mmal-vchiq: Fix client_component for 64 bit
 kernel
Date: Tue, 23 Jun 2020 18:41:53 +0200
Message-Id: <20200623164235.29566-8-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623164235.29566-1-nsaenzjulienne@suse.de>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 kernel-list@raspberrypi.com, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

The MMAL client_component field is used with the event
mechanism to allow the client to identify the component for
which the event is generated.
The field is only 32bits in size, therefore we can't use a
pointer to the component in a 64 bit kernel.

Component handles are already held in an array per VCHI
instance, so use the array index as the client_component handle
to avoid having to create a new IDR for this purpose.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c | 8 +++++++-
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h | 1 +
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 48feeef60091..c598a10452be 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -943,7 +943,7 @@ static int create_component(struct vchiq_mmal_instance *instance,
 
 	/* build component create message */
 	m.h.type = MMAL_MSG_TYPE_COMPONENT_CREATE;
-	m.u.component_create.client_component = (u32)(unsigned long)component;
+	m.u.component_create.client_component = component->client_component;
 	strncpy(m.u.component_create.name, name,
 		sizeof(m.u.component_create.name));
 
@@ -1662,6 +1662,12 @@ int vchiq_mmal_component_init(struct vchiq_mmal_instance *instance,
 		goto unlock;
 	}
 
+	/* We need a handle to reference back to our component structure.
+	 * Use the array index in instance->component rather than rolling
+	 * another IDR.
+	 */
+	component->client_component = idx;
+
 	ret = create_component(instance, component, name);
 	if (ret < 0) {
 		pr_err("%s: failed to create component %d (Not enough GPU mem?)\n",
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
index df608585063b..1dc81ecf9268 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.h
@@ -92,6 +92,7 @@ struct vchiq_mmal_component {
 	struct vchiq_mmal_port input[MAX_PORT_COUNT]; /* input ports */
 	struct vchiq_mmal_port output[MAX_PORT_COUNT]; /* output ports */
 	struct vchiq_mmal_port clock[MAX_PORT_COUNT]; /* clock ports */
+	u32 client_component;	/* Used to ref back to client struct */
 };
 
 int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
