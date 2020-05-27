Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310681E40A3
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 13:54:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAF018879C;
	Wed, 27 May 2020 11:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5HImnxTI436d; Wed, 27 May 2020 11:54:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4865F8876A;
	Wed, 27 May 2020 11:54:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 674711BF5A2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 641F3875E0
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 11:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQbPimr+ogZM for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 11:54:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B74B787D77
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 11:54:27 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id ABBA3AC91;
 Wed, 27 May 2020 11:54:28 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 15/50] staging: vc04_services: bcm2835-audio: Use vchi_msg_hold()
Date: Wed, 27 May 2020 13:53:20 +0200
Message-Id: <20200527115400.31391-16-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
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
 laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vchi_msg_dequeue() provides the same functionality as vchi_msg_hold()
except it copies the message data as opposed to the later which provides
the data in place.

The copying is done on a local variable, so there is no need to keep the
message out the function's bounds, so use vchi_msg_hold() instead.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             | 25 +++++++++++--------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 62eef233275f..5018b5baa009 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -94,31 +94,34 @@ static void audio_vchi_callback(void *param,
 				void *msg_handle)
 {
 	struct bcm2835_audio_instance *instance = param;
-	struct vc_audio_msg m;
-	int msg_len;
+	struct vchi_held_msg handle;
+	struct vc_audio_msg *m;
+	unsigned size;
 	int status;
 
 	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
 		return;
 
-	status = vchi_msg_dequeue(instance->service,
-				  &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
+	status = vchi_msg_hold(instance->service, (void **)&m, &size,
+			       VCHI_FLAGS_NONE, &handle);
 	if (status)
 		return;
 
-	if (m.type == VC_AUDIO_MSG_TYPE_RESULT) {
-		instance->result = m.result.success;
+	if (m->type == VC_AUDIO_MSG_TYPE_RESULT) {
+		instance->result = m->result.success;
 		complete(&instance->msg_avail_comp);
-	} else if (m.type == VC_AUDIO_MSG_TYPE_COMPLETE) {
-		if (m.complete.cookie1 != VC_AUDIO_WRITE_COOKIE1 ||
-		    m.complete.cookie2 != VC_AUDIO_WRITE_COOKIE2)
+	} else if (m->type == VC_AUDIO_MSG_TYPE_COMPLETE) {
+		if (m->complete.cookie1 != VC_AUDIO_WRITE_COOKIE1 ||
+		    m->complete.cookie2 != VC_AUDIO_WRITE_COOKIE2)
 			dev_err(instance->dev, "invalid cookie\n");
 		else
 			bcm2835_playback_fifo(instance->alsa_stream,
-					      m.complete.count);
+					      m->complete.count);
 	} else {
-		dev_err(instance->dev, "unexpected callback type=%d\n", m.type);
+		dev_err(instance->dev, "unexpected callback type=%d\n", m->type);
 	}
+
+	vchi_held_msg_release(&handle);
 }
 
 static int
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
