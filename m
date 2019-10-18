Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DF5DD188
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 00:04:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 007E281ED9;
	Fri, 18 Oct 2019 22:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o+tAayGL2yLk; Fri, 18 Oct 2019 22:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E94087E2F;
	Fri, 18 Oct 2019 22:03:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93E5D1BF5F5
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 22:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 911A886CF8
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 22:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kR1pV_Nktaez for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 22:03:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 61B3986C9E
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 22:03:56 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57B6322459;
 Fri, 18 Oct 2019 22:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571436236;
 bh=Gi+8uHxb/nH/ASrO4/N8M/j/xYpLyDr7wlMxycKl+WI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i7AuZM5g3O44Dee9QsFtBqZCW4l9v7y0Uvqjqy/pNhZ8cMTJTNbPEyXV9u0OeZa+e
 SBbRRrLBVedE3yCHAr0JD7QAsJeslSFoD9SYrIsjUCdtYAVtVGe3DGYbVb1akE8Gdh
 1UVZJ2k/+BuLT3YUFY6aTh/mmlqyR5DTNdoHuKts=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 21/89] HID: hyperv: Use in-place iterator API in
 the channel callback
Date: Fri, 18 Oct 2019 18:02:16 -0400
Message-Id: <20191018220324.8165-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018220324.8165-1-sashal@kernel.org>
References: <20191018220324.8165-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, Jiri Kosina <jkosina@suse.cz>,
 linux-input@vger.kernel.org, devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dexuan Cui <decui@microsoft.com>

[ Upstream commit 6a297c90efa68b2864483193b8bfb0d19478600c ]

Simplify the ring buffer handling with the in-place API.

Also avoid the dynamic allocation and the memory leak in the channel
callback function.

Signed-off-by: Dexuan Cui <decui@microsoft.com>
Acked-by: Jiri Kosina <jkosina@suse.cz>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/hid/hid-hyperv.c | 56 +++++++---------------------------------
 1 file changed, 10 insertions(+), 46 deletions(-)

diff --git a/drivers/hid/hid-hyperv.c b/drivers/hid/hid-hyperv.c
index 7795831d37c21..f363163200759 100644
--- a/drivers/hid/hid-hyperv.c
+++ b/drivers/hid/hid-hyperv.c
@@ -314,60 +314,24 @@ static void mousevsc_on_receive(struct hv_device *device,
 
 static void mousevsc_on_channel_callback(void *context)
 {
-	const int packet_size = 0x100;
-	int ret;
 	struct hv_device *device = context;
-	u32 bytes_recvd;
-	u64 req_id;
 	struct vmpacket_descriptor *desc;
-	unsigned char	*buffer;
-	int	bufferlen = packet_size;
-
-	buffer = kmalloc(bufferlen, GFP_ATOMIC);
-	if (!buffer)
-		return;
-
-	do {
-		ret = vmbus_recvpacket_raw(device->channel, buffer,
-					bufferlen, &bytes_recvd, &req_id);
-
-		switch (ret) {
-		case 0:
-			if (bytes_recvd <= 0) {
-				kfree(buffer);
-				return;
-			}
-			desc = (struct vmpacket_descriptor *)buffer;
-
-			switch (desc->type) {
-			case VM_PKT_COMP:
-				break;
-
-			case VM_PKT_DATA_INBAND:
-				mousevsc_on_receive(device, desc);
-				break;
-
-			default:
-				pr_err("unhandled packet type %d, tid %llx len %d\n",
-					desc->type, req_id, bytes_recvd);
-				break;
-			}
 
+	foreach_vmbus_pkt(desc, device->channel) {
+		switch (desc->type) {
+		case VM_PKT_COMP:
 			break;
 
-		case -ENOBUFS:
-			kfree(buffer);
-			/* Handle large packet */
-			bufferlen = bytes_recvd;
-			buffer = kmalloc(bytes_recvd, GFP_ATOMIC);
-
-			if (!buffer)
-				return;
+		case VM_PKT_DATA_INBAND:
+			mousevsc_on_receive(device, desc);
+			break;
 
+		default:
+			pr_err("Unhandled packet type %d, tid %llx len %d\n",
+			       desc->type, desc->trans_id, desc->len8 * 8);
 			break;
 		}
-	} while (1);
-
+	}
 }
 
 static int mousevsc_connect_to_vsp(struct hv_device *device)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
