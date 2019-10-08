Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D503ECF9DE
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:34:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9291D8769F;
	Tue,  8 Oct 2019 12:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lgs0XXFvAZY3; Tue,  8 Oct 2019 12:34:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99FD68764B;
	Tue,  8 Oct 2019 12:34:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B99851BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2E6C86C5C
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MIpoCfmqZxaq for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:33:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6293F86B50
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570538036;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=vxNxzGS1YL2pIRA3iElWkbMg1T80wDQcjG/i1PxznHk=;
 b=JCYHzXstchS2RvyMJGzaoaBGCDcO78PBMka7HfmlMbQvdLRXoTOMrTJk6FWjHPr8eCDyvQ
 /geJPujJy6WHqDxGJpZuABiffOaLuMRrh+AtsFgdtIvN9cov7NKEonqdQXM7YoE6vNdC6d
 zq3IBv1D6TU0MT4CJrMIOSvpswtwqyg=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-fmRy4v_vPfO0mUJ1PnMzBQ-1; Tue, 08 Oct 2019 08:33:52 -0400
Received: by mail-wr1-f69.google.com with SMTP id w10so9082365wrl.5
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 05:33:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J4guI5W+JBy2/Wk9QmpICIZphEUf2I9ZwikXlS8M7Tk=;
 b=P4rdB6x3RWLbCFfWkYGaKzImoCUFAPnBU5xTkTCCt+O+BH1HNqN67lYCXpLSDGux7V
 zTlgnlXrTwizRkegzzTG8QFe+MZgSdOzlqmYIG/xHDdBfonSNrF8y8lIRXpskt4dHygl
 O1e0509Bz9+pw11k3gwAZga2KH3NsvmvgkA7zjp6NTpVZi1LrZv/V5vGZwa+pxG8Fd/P
 M5nc+iKLOXBrkgPRPN+SRu+NUmuPUHtHFSktINuUej84o3pfVhBIjRPjfFku0mRV5SOb
 6jum9GdujnjI9kDrmERl42GUsRefS98929dxI6cCr8f/Vqt4SRPWV/v2J9pbbo+ngCQc
 FKVQ==
X-Gm-Message-State: APjAAAX7my5rkWUsfmoKOqA22CvwMhKFzuMF07OWUDc/XeBuw5r7aln7
 4p985r/VPmPUNZvuLpzNGAC8o/JIgvbsvnmLZtn7GjGvDay20qvLag50Tfmsgd3xwnNqrmYi0Fw
 aSLyHTvlESJxpvSptxAZAWQ==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr3714160wml.149.1570538031448; 
 Tue, 08 Oct 2019 05:33:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyAKI2iZTVbZl4t588qZfShH353mJjPntH73s4tdZMg33tqt9c0kisZMYYS3sNnU0yf2q5GQA==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr3714148wml.149.1570538031223; 
 Tue, 08 Oct 2019 05:33:51 -0700 (PDT)
Received: from mcroce-redhat.mxp.redhat.com (nat-pool-mxp-t.redhat.com.
 [149.6.153.186])
 by smtp.gmail.com with ESMTPSA id u68sm4361842wmu.12.2019.10.08.05.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 05:33:50 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: vchiq: don't leak kernel address
Date: Tue,  8 Oct 2019 14:33:46 +0200
Message-Id: <20191008123346.3931-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-MC-Unique: fmRy4v_vPfO0mUJ1PnMzBQ-1
X-Mimecast-Spam-Score: 0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
an obfuscated kernel pointer is printed at boot:

    vchiq: vchiq_init_state: slot_zero = (____ptrval____)

Remove the the print completely, as it's useless without the address.

Signed-off-by: Matteo Croce <mcroce@redhat.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 56a23a297fa4..084cd4b0f07c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2132,9 +2132,6 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	char threadname[16];
 	int i;
 
-	vchiq_log_warning(vchiq_core_log_level,
-		"%s: slot_zero = %pK", __func__, slot_zero);
-
 	if (vchiq_states[0]) {
 		pr_err("%s: VCHIQ state already initialized\n", __func__);
 		return VCHIQ_ERROR;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
