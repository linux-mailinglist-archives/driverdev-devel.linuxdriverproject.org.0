Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA570FD1C4
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 01:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDEEC87EE2;
	Fri, 15 Nov 2019 00:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PLi0Ik7i7gNF; Fri, 15 Nov 2019 00:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 961B987795;
	Fri, 15 Nov 2019 00:00:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 559541BF3FF
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 00:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D12E898E8
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 00:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F+gT6VspiNGh for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 00:00:42 +0000 (UTC)
X-Greylist: delayed 00:24:26 by SQLgrey-1.7.6
Received: from mail-qv1-f74.google.com (mail-qv1-f74.google.com
 [209.85.219.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94EC0898E7
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 00:00:42 +0000 (UTC)
Received: by mail-qv1-f74.google.com with SMTP id g30so5344912qvb.11
 for <devel@driverdev.osuosl.org>; Thu, 14 Nov 2019 16:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=m3sUjMo5TITsLhBkb0IY/Rd+cWpNa+tQjru4b9meZGI=;
 b=JPaM1lPYUKaG4m8vo62ydMIXhjAg9ji69IDmqOGAayfXXA/4vtJ+Hjh02y1+6OwHDU
 /ODBvI0MrYz8J6DPy+cgdzUJUwq7xouxVAYnQkjdSnj5tUladQD0ZzaKk8RwBD2oeLo9
 AXqaUH0NTndulQKTwygB9M6yo48MNt0RQWyuiXy9KAJnTOjrtliOhSB/ZBPbSwG2j+sh
 bNCzukoun+BvF0pTpDevxezdo40bav9y3BLKCpyxKkV0ybhDACQ1vbWp178dDOjQOVHd
 q2+3ZUwfjCXt6Ghx6xSqtuyjGc4jJa7n/YYXoBQ+9tAFtpylbvoEezWVvgdJ1L4qrb2s
 vWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=m3sUjMo5TITsLhBkb0IY/Rd+cWpNa+tQjru4b9meZGI=;
 b=LexVK0Rad+0F0iFejNioJD0cHcOLAjDMCItw/o9c1vQEwM5xnlTV0g02xWYt/kyb8d
 IF3eN3Z8Dbkq0u3BbZ7LfpVqn0TrByfqCD596NReTLAXdSVQfMtrQrBdIpK1aaQ3pGph
 mRC73+VuQimGyAOzxNXMVJidUcJPrw2pNS8Qlvxy21rTiUQKj+zib+mS1aDIb5DETNdf
 Fp5oaEFrPbztbFSmnS8vEemqrryL5VSIn8mkpJ3JDg8UE+t7lNYRcbgJzAlOQkWCJqwy
 7wNyvxixWGuM55g1k2CTnrSD4dpJBbfG+2wcNuItVUoNeja9mZb5MRj4T24Lo+HnhQHY
 bdfg==
X-Gm-Message-State: APjAAAWGLkMYDYMivS6TnrOfUt90elq3qpF6IuhQNJh8khMDl0dcd8wv
 cj6Ol4IqtHxglz0JhiZ4TLOb8ew8gGwHDOXI4NA=
X-Google-Smtp-Source: APXvYqz94VHme2VfNtjjyGFXcoEXHxiKkfxxWX3ZYEDIThQrfHSoS2lI5on1Fsgp+E737EFTVG6Jag2E1aDJiAnkWiM=
X-Received: by 2002:a37:424e:: with SMTP id p75mr6406627qka.239.1573774082562; 
 Thu, 14 Nov 2019 15:28:02 -0800 (PST)
Date: Thu, 14 Nov 2019 18:28:01 -0500
Message-Id: <20191114232801.71458-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] staging: vchiq: Refactor indentation in
 vchiq_platform_conn_state_changed()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reducing the indentation level helps a bit with
the readability of this function. There's also a checkpatch
fix here, moving the first argument to kthread_create() onto
the same line, as well as a relocation of the statement
"char threadname[16];" to the top of the function to avoid
a declaration in the middle of code.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 41 ++++++++++---------
 1 file changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b13dea8..e09cc42fe984 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3132,31 +3132,32 @@ void vchiq_platform_conn_state_changed(struct vchiq_state *state,
 				       VCHIQ_CONNSTATE_T newstate)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
+	char threadname[16];
 
 	vchiq_log_info(vchiq_susp_log_level, "%d: %s->%s", state->id,
 		get_conn_state_name(oldstate), get_conn_state_name(newstate));
-	if (state->conn_state == VCHIQ_CONNSTATE_CONNECTED) {
-		write_lock_bh(&arm_state->susp_res_lock);
-		if (!arm_state->first_connect) {
-			char threadname[16];
+	if (state->conn_state != VCHIQ_CONNSTATE_CONNECTED)
+		return;
 
-			arm_state->first_connect = 1;
-			write_unlock_bh(&arm_state->susp_res_lock);
-			snprintf(threadname, sizeof(threadname), "vchiq-keep/%d",
-				state->id);
-			arm_state->ka_thread = kthread_create(
-				&vchiq_keepalive_thread_func,
-				(void *)state,
+	write_lock_bh(&arm_state->susp_res_lock);
+	if (arm_state->first_connect) {
+		write_unlock_bh(&arm_state->susp_res_lock);
+		return;
+	}
+
+	arm_state->first_connect = 1;
+	write_unlock_bh(&arm_state->susp_res_lock);
+	snprintf(threadname, sizeof(threadname), "vchiq-keep/%d",
+		 state->id);
+	arm_state->ka_thread = kthread_create(&vchiq_keepalive_thread_func,
+					      (void *)state,
+					      threadname);
+	if (IS_ERR(arm_state->ka_thread)) {
+		vchiq_log_error(vchiq_susp_log_level,
+				"vchiq: FATAL: couldn't create thread %s",
 				threadname);
-			if (IS_ERR(arm_state->ka_thread)) {
-				vchiq_log_error(vchiq_susp_log_level,
-					"vchiq: FATAL: couldn't create thread %s",
-					threadname);
-			} else {
-				wake_up_process(arm_state->ka_thread);
-			}
-		} else
-			write_unlock_bh(&arm_state->susp_res_lock);
+	} else {
+		wake_up_process(arm_state->ka_thread);
 	}
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
