Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A9258C7C
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 23:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6013220353;
	Thu, 27 Jun 2019 21:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0PUpaY9vppI; Thu, 27 Jun 2019 21:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DDD0E22610;
	Thu, 27 Jun 2019 21:10:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA86F1BF399
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 21:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D229D85C62
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 21:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxR-RHc3crWI for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 21:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 68DFA85945
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 21:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561669791;
 bh=xdTAATWF8qX6yvXCOv29YdhPGUUPpJi7l7udO3XOz3o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eh0rZ0J45FuY/n5E4be49hyEsA37PoCc2+4E/PHiBSK7lCRrDptyda4gD0kWyuAvz
 PrOHIo7Hqi//pKQ18kN0WOjudFUFGK2gr0+EQdgTr9RdRg9IBnNUqKLJruf7eSrrWB
 I8JCo/Mn3sr1PHZeRf5bp+yiLM4y7lZscxCeIglc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M2f9h-1hhztI1mox-0049H6; Thu, 27 Jun 2019 23:09:51 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 30/31] staging: bcm2835-camera: Set the field value within ach
 buffer
Date: Thu, 27 Jun 2019 23:09:28 +0200
Message-Id: <1561669769-2498-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4p9yOIhIrBTeY/wdnhkFhlYsxDf8BdSb0lYlxYcw2+9Vz6In7NX
 4cP0I6lDzSRKKuBytlRDRK0xrHTB7ACIcOl9DieNvK1jFc+ufRd0rReoLe2iX3gpZ8PhbQz
 IASrz/oLgKDRk4lCN59DFHobxwqGHwe80LwpVTgDO/JZOVGiyzW3H2P2mGHxIHpihVV0PfL
 /na5UGu+9jWfsJLE27D8A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:rQHcc4g8hC8=:AAy4aEqkn1m0W9xIIDySBU
 oh3Evqj4xbse6o61KfZlJjpfmCbdXi/IUkoHmfQ1Rv8a/xeGWBjXW6PDb4kZZ30UFuz4alRXU
 FNmdbIQI0ZdCzNliyM8ykBo++fxfFjRkJMrWF1uNh2/E+bQwwKzoZY2funCkntAx/WE8noVED
 datZfkE6SmuBDtf3j8iiZzDjBYasIqjrobqeOLe96mno6Jf7dcU4bmzHYp7IQPN0j7nLHL7i9
 41+BrxhqK6GfVHP28S+vMw5JCRN2xc3rOQzrYZlLs+AfLDYqqCTTtoKSlHbtn+xHhZJbznu0M
 JGT9Xe/eUDYaqW3ETycs9m2VcIXIrdIyOXdS19CUYcAPDsyNhYqlHM5055tXb6A3pRaHcRHWW
 zS9ceVypNhvPaBJs+Hotc9FM0JSapYnSl1rHpbZIBzrracNUmEtsqzOqXZxDz7Xf+rpgarLS7
 dX09UdQLL96dM9zj2dl6LPwXe00WWcYMVvxS3lEHQD63rh3CaW537dGxE1En1waseKp4okXz/
 Ula4r5ISnjzlsB2t97+XGdbHq1nK2KcTFR+XNM+AycurOsQptl/mqJOw2Fd7TzwqH5pGLqDKV
 PlCSzaEEYI8Rirz+EZSDxD3rJyLZkNALUYKePiVdVF1ZHvky9PLL362CMBo72RpDJ5Fr81pQG
 3aPbhV3LNsh2Crmh6VArK7iLVyNWhB3zum62eNr4+4OC5cpy/tmtkxcPnzPhpuuPsaX8PnmqR
 /eMlUO6NhvH7sSM3xlxCKLAuiiC/qBT1gP7QETXvzkr/p3+RDic3bbyM4yBZpMCCNLLRonuSh
 f6DXaF6xwXZwFa1HeFg6hwzOmXpMKemml7vWehVlv/P9LZFlbq4O9ABQLEcoVjGymzS8EdL3Q
 lwLjn2yRHeIiiYfuWfPiQc8FW1pR6Y01yivUlm+0tRpFhxF8Eemm/WjlHFUcjisspAvdrDHBD
 klSGgb6XbBibS9FotkMUpBB0QyuwJ4gCdjlS6bPlqQjWQp4aODB6qa8Q+g+OGJ5Mo1REeu7rq
 qugNDIHRdNRtdtfE8uGDvNBJzZVOfrmhHbF19JOnUZ21BxpXBY9iRx1yeBeiVJA1Hmb4Wrizw
 79+xRaH+Zb0x5c=
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

Fixes a v4l2-compliance failure
v4l2-test-buffers.cpp(415): g_field() == V4L2_FIELD_ANY

The driver only ever produces progresive frames, so field should
always be set to V4L2_FIELD_NONE.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 705644c..78d5bca 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -420,6 +420,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	}
 	dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;
 	buf->vb.sequence = dev->capture.sequence++;
+	buf->vb.field = V4L2_FIELD_NONE;

 	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
 	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
