Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA5058C83
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 23:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24B8C85B94;
	Thu, 27 Jun 2019 21:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrJ0F8-5gIw9; Thu, 27 Jun 2019 21:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60D0885DD1;
	Thu, 27 Jun 2019 21:10:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE3F1BF399
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 21:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 792AF86141
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 21:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfQfLXBCaNqq for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 21:10:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D50484317
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 21:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561669790;
 bh=tOe/BsiIMjwoLabnnwXX3NINpGucWPxxyc0RQkE0ApQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ZfuFen8jwyk5KZzFDSdqGs0mV0OXyCl5zF9UeMFE6n8PjlLTXKRoCc3zRmS3Y98bB
 LNDUSI2UN7IZfVaFZjWf9mV74phFaTV0VlQWW9c7a9tg9TUBewO4OeN3gZNKWOZB0W
 JPlzTjuKEwkDiv1F2ZNCwWvwhruRojlL6rp1Pegk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MtwUw-1iYinq1UxI-00uK9j; Thu, 27 Jun 2019 23:09:50 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 27/31] staging: mmal-vchiq: Avoid use of bool in structures
Date: Thu, 27 Jun 2019 23:09:25 +0200
Message-Id: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:XFFVS6J7p8vwVQmBIJXFTLISbJpbws3cNDTTFZWohJQfzLD8CR+
 LfEiQslGADaYvMz37HwEnPWgyRdNlWQigKnbCS3N36L9xUpeCKuHOCyFU0+t/pj9vfQXhCo
 5e5AUFIrBAekKkXkZYhxO/YmiaoC9L/ingm3SE/WtTjIlyC2j7SkJcLZOixGZ65LmyjceUz
 TTTpDoBDesal8UgeKo3Eg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:A4GjgavEWCA=:G+PJsUBAxgqqAbv4Nraj1q
 PYLJPYz3TysHJgMWZmVmKeh+3b14DmjiEzDO8sxGYJ7sLLSqUXw+qnZ6NpD5X72DNfzzcjPkV
 bvD0y9WBIOhoep32BWJbI3FEX94bf8ikr3UjTvoNLUq4krDPnBrOFWwRnpXAjEmfBueuPQGeT
 P/fdkhThRioEwuPg5tXVFSJ5FJRVExnkbCAhJlTAmBY2IZoj0tvw2w3XuiiJeG7oC7D7lCDDl
 TR+RA5o3IKXthpAIucDGcQQsn03+iPBQkg1S2palOka8O9Adzjw1fdf6wJCsnAdAKNk/YoCRD
 EKIHFkFIABHRIWLft838yyWsHaTsTXIYpbg2sMOeQCHoY81yteDAbOlez0UeWdIUs0+Mr420o
 Rq517SIrnYa3jqZ4TdKJ40Xa7RPbytvlq4ck+ghoYbdIErrmpHAN9zzIW0xGUGoMj+BJhPmFi
 LX6n8RQ3Tjb50Nu7yZhSbj1KmWjIxUZCOWF4JZ7g5LwZTZPiM2dqaPT/gZt2PuqpDVsMZaXPx
 33NngNTTXc057/eC5RVyOH88YhXXrKZ7ULiW7T5fS6wPnObuaDz4J4Mm/4gYdlgCi/vF/vKU+
 RA3K4asFj7riqIu14qm7Mv42aaoS2C789hoqqx5SUKLhZbqUa/0Pj9hU1EJAucdaWo/xYABJD
 RND+x11wQ4MjPNnfb56Yn10zC8MgHmeO/cSUuF9an07ZZCD36X0wtmWCFeXixa9z1KmAih665
 9+e+x6l/8kva2NRrKKFO3yAymBdFV63wHEgA4ZVkU3wBUJWXRLEo7R7gxfUeYIvOeQDedXcDE
 a6y7Eli97WG0UBywU77gFR1sSikFGDcANunHaeWzNQLTOKazzXInPokMUU1S29jjVCuHodIDk
 m+ByAifN2474HIPJm1zXcYbmk9T7yePRdKJlV3qX4Xc9LbinJd1bHZ7WsjzYtGq17yfOc8hvS
 5yKjWToUtlNCMI/mRbtdCbwhagipauNhonICu0f2d3qXfjBKTTo3xRebFBND4j13qesfFQ5Ow
 NN4mgeOqAUJ4GoS56zetU8qPVPNwE5EVRzR5spCH/Sa8CoLQv9kbn1ZV4+XOEDV9aS0GUcEGb
 qcyKv4OPbgiDUc=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Fixes up a checkpatch error "Avoid using bool structure members
because of possible alignment issues".

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 12 ++++++------
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index d0f7b67..1c180ea 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -853,9 +853,9 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
 		goto release_msg;

 	if (rmsg->u.port_info_get_reply.port.is_enabled == 0)
-		port->enabled = false;
+		port->enabled = 0;
 	else
-		port->enabled = true;
+		port->enabled = 1;

 	/* copy the values out of the message */
 	port->handle = rmsg->u.port_info_get_reply.port_handle;
@@ -1292,7 +1292,7 @@ static int port_disable(struct vchiq_mmal_instance *instance,
 	if (!port->enabled)
 		return 0;

-	port->enabled = false;
+	port->enabled = 0;

 	ret = port_action_port(instance, port,
 			       MMAL_MSG_PORT_ACTION_TYPE_DISABLE);
@@ -1344,7 +1344,7 @@ static int port_enable(struct vchiq_mmal_instance *instance,
 	if (ret)
 		goto done;

-	port->enabled = true;
+	port->enabled = 1;

 	if (port->buffer_cb) {
 		/* send buffer headers to videocore */
@@ -1511,7 +1511,7 @@ int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
 			pr_err("failed disconnecting src port\n");
 			goto release_unlock;
 		}
-		src->connected->enabled = false;
+		src->connected->enabled = 0;
 		src->connected = NULL;
 	}

@@ -1758,7 +1758,7 @@ int vchiq_mmal_component_disable(struct vchiq_mmal_instance *instance,

 	ret = disable_component(instance, component);
 	if (ret == 0)
-		component->enabled = false;
+		component->enabled = 0;

 	mutex_unlock(&instance->vchiq_mutex);

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 1750ff0..f738e7f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -48,7 +48,7 @@ typedef void (*vchiq_mmal_buffer_cb)(
 		unsigned long length, u32 mmal_flags, s64 dts, s64 pts);

 struct vchiq_mmal_port {
-	bool enabled;
+	u32 enabled:1;
 	u32 handle;
 	u32 type; /* port type, cached to use on port info set */
 	u32 index; /* port index, cached to use on port info set */
@@ -82,7 +82,7 @@ struct vchiq_mmal_port {
 };

 struct vchiq_mmal_component {
-	bool enabled;
+	u32 enabled:1;
 	u32 handle;  /* VideoCore handle for component */
 	u32 inputs;  /* Number of input ports */
 	u32 outputs; /* Number of output ports */
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
