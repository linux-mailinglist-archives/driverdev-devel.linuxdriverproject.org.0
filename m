Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78938634CC
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 13:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB24185D3D;
	Tue,  9 Jul 2019 11:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OrBv260QnVT; Tue,  9 Jul 2019 11:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A53AE85BEC;
	Tue,  9 Jul 2019 11:16:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A5211BF584
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 11:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4730686776
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 11:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mEkDN-Jpn+U for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 11:16:48 +0000 (UTC)
X-Greylist: delayed 00:06:58 by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77F60816FA
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 11:16:48 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id s49so17420753edb.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 04:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gehOANnmao3oV9pvw/seZIFQrg9raLUC+jG0ZPx31LY=;
 b=if2Hz2BqVzUt4QQgiVKhPFAHrTuSwx++ynxvI9kucQ/hCQ4NKAdcr3h0NAqK0eo5un
 G/Zuzdg1MF00I42wSwHPQzZyeIZTe6WwKyWUwAWshEQpNeKym5rVtg8DtE+Tjxjrnvt4
 0vF1LQDXFN4uzZ0zRtlCqwXhHErUGFemvAS+gIQf00lfJ6Dxs2Q+fJ8X7gL2lFurldC/
 Aqmx1/AhtP2Mrps0BxvJrKCkO6EaEkXTNnTdMn3JC+Gm9fhnAdtOFMS1s9RS9nl43mPH
 PGHNFdBqklG3CP02tCEGBpnXCPX7Y8SeBIIdgCiUG8TvG/UdKjyQpi/eTgzgwZdxhgd9
 sT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gehOANnmao3oV9pvw/seZIFQrg9raLUC+jG0ZPx31LY=;
 b=ZB6Un3SFiGEv1S7NFEmxIELUEc4wA042wTUqNQ7EzG3dH1/vT2OxSkbK6xPeHPhvh8
 RyrO332Z734ukzT2A4IduxZZAwJ1nwrlIlW+y6kBgUyYpJtV9cJ6sfXNAvfgqD7PzKXn
 h2jCmObZTfTZzPY0OYgotjEwjYPl8yXhwweFy9LyB42klOQNPhXp3NzbsCTlLQrfzGta
 U96ItCi3N02lVnKkXHuvu/pTusIUwonXAMfkVCWCGvfojTlE5liZ+L8bmTVJeOqR//h/
 gQmwi1xSDOlzk6TLGwICK8XbNMExf2MdZev+jOaSOqVRbMO7nOBnMX8QYVMd5jqmxlM3
 AfYA==
X-Gm-Message-State: APjAAAUvI4u/9K9r/kbMPLfJI2OaDJiEKeaDzI6KmkGDrZmagPyV2L5v
 tgC4xRtppsYXKrgVjRP9IMlOqA==
X-Google-Smtp-Source: APXvYqwXkn8xyad1jqyqlkrPyOu0b8MAuKCEqbDbhML8lngOBJTEn5Yb2Bt3BRofTOjHR1UNC8MRJQ==
X-Received: by 2002:a17:906:f91:: with SMTP id
 q17mr21051364ejj.297.1562670589083; 
 Tue, 09 Jul 2019 04:09:49 -0700 (PDT)
Received: from maco2.ams.corp.google.com (a83-162-234-235.adsl.xs4all.nl.
 [83.162.234.235])
 by smtp.gmail.com with ESMTPSA id o21sm4494788edt.26.2019.07.09.04.09.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 04:09:48 -0700 (PDT)
From: Martijn Coenen <maco@android.com>
To: gregkh@linuxfoundation.org, john.stultz@linaro.org, tkjos@google.com,
 arve@android.com, amit.pundir@linaro.org
Subject: [PATCH] binder: Set end of SG buffer area properly.
Date: Tue,  9 Jul 2019 13:09:23 +0200
Message-Id: <20190709110923.220736-1-maco@android.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
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
Cc: devel@driverdev.osuosl.org, maco@google.com,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In case the target node requests a security context, the
extra_buffers_size is increased with the size of the security context.
But, that size is not available for use by regular scatter-gather
buffers; make sure the ending of that buffer is marked correctly.

Acked-by: Todd Kjos <tkjos@google.com>
Fixes: ec74136ded79 ("binder: create node flag to request sender's
security context")
Signed-off-by: Martijn Coenen <maco@android.com>
Cc: stable@vger.kernel.org # 5.1+
---
 drivers/android/binder.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 38a59a630cd4c..5bde08603fbc2 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3239,7 +3239,8 @@ static void binder_transaction(struct binder_proc *proc,
 	buffer_offset = off_start_offset;
 	off_end_offset = off_start_offset + tr->offsets_size;
 	sg_buf_offset = ALIGN(off_end_offset, sizeof(void *));
-	sg_buf_end_offset = sg_buf_offset + extra_buffers_size;
+	sg_buf_end_offset = sg_buf_offset + extra_buffers_size -
+		ALIGN(secctx_sz, sizeof(u64));
 	off_min = 0;
 	for (buffer_offset = off_start_offset; buffer_offset < off_end_offset;
 	     buffer_offset += sizeof(binder_size_t)) {
-- 
2.22.0.410.gd8fdbe21b5-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
