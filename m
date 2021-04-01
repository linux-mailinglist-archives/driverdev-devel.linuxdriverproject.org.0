Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0221C35117D
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 11:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A14DD40547;
	Thu,  1 Apr 2021 09:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIfOk4nJXeKR; Thu,  1 Apr 2021 09:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCFD34029B;
	Thu,  1 Apr 2021 09:10:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 72A4A1BF38E
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E80584A10
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tb4EzFKofh3e for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 09:09:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B96CB848EC
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 09:09:49 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id h3so941138pfr.12
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 02:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TcFW2882TDAB0Szg+grt3QNSfA4PwJpJAwOH20WQc3U=;
 b=fqr736cKPoNsBHMb7WyFTgrU6fRrMvpOOsOByzUKP4cZh5dOqtzEVp+rAvVVFi90cK
 hR/OTVJbXJMRiZJjYfIEPtHdj8DHn+v5moAuKMuYj1nwRUBfXBsHIjGNitslymjxfWa+
 QEpPpnaBpZnj5M71DlPERV2FggpXB6HvhTlwrhQV2PsVXFp5X+bxsPwn5tRLDFSELFTA
 BfO1LaoEDdB95RXDFWQnDiRIqHNHUZPwPVznCpB0BQKQEIJNhVVm95gyKftGfOhGlWdl
 WZ4HsLfCtjlvHWUOnvzTq616lvhjUWNy9Jt6UDQJDaQFGy17UgxmGBtafhTWSFXyUhs+
 J0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TcFW2882TDAB0Szg+grt3QNSfA4PwJpJAwOH20WQc3U=;
 b=PKJXJ0bqbhI/dwxMDmGkf5tABSujTj0q7oe2OK0QyTzeI8qa+2uRR63H6WlqVCn0ZW
 CZOQqFGc39dKCB6p9yNOwhS9f6s6juPA2xQeWx8SAZjBb91/+sjig0qcUK/zRD2kX+h0
 8u5B3pZyniPoO37LMXQB9E1UIlWBu8pjsljLf9r6uaOsb4sVojoeyDdMu2bb2orwXK1W
 MUZsU5/jCJRw25BQ/lJLqZFtQt0D1ttKNk+pvyJ5a90qCUy+0VHy0NkS+gAYYCk7E/5O
 Oqiyw/2UvRVRtc3Bm9sZkQVBH4CH8PAt9KToVp988oNKpkFkslSTLMm52qorh6qU4FqY
 4mwA==
X-Gm-Message-State: AOAM530spO3Uc2ui2N9EIRLvsjj81oGHnlt2EEkzkRa49wZXFULrMZR2
 /xvr9FfS5Ik/VNx/d/KAtYfe
X-Google-Smtp-Source: ABdhPJye1+QSmRDrJtotpPX35xPqPCPC9yfHjqxgCyLsQO2U3Q/jaWMwQ0mXFN6YqGYZgUHLaGEIYQ==
X-Received: by 2002:a65:6414:: with SMTP id a20mr6613866pgv.424.1617268188789; 
 Thu, 01 Apr 2021 02:09:48 -0700 (PDT)
Received: from localhost ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id i10sm13946337pjm.1.2021.04.01.02.09.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 02:09:48 -0700 (PDT)
From: Xie Yongji <xieyongji@bytedance.com>
To: christian.brauner@ubuntu.com, hch@infradead.org,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, hridya@google.com,
 surenb@google.com, viro@zeniv.linux.org.uk, sargun@sargun.me,
 keescook@chromium.org, jasowang@redhat.com
Subject: [PATCH 1/2] file: Export receive_fd() to modules
Date: Thu,  1 Apr 2021 17:09:31 +0800
Message-Id: <20210401090932.121-2-xieyongji@bytedance.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401090932.121-1-xieyongji@bytedance.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
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
Cc: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Export receive_fd() so that some modules can use
it to pass file descriptor across processes without
missing any security stuffs.

Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
---
 fs/file.c            | 6 ++++++
 include/linux/file.h | 7 +++----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/file.c b/fs/file.c
index 56986e55befa..2a80c6c3e147 100644
--- a/fs/file.c
+++ b/fs/file.c
@@ -1107,6 +1107,12 @@ int receive_fd_replace(int new_fd, struct file *file, unsigned int o_flags)
 	return new_fd;
 }
 
+int receive_fd(struct file *file, unsigned int o_flags)
+{
+	return __receive_fd(file, NULL, o_flags);
+}
+EXPORT_SYMBOL(receive_fd);
+
 static int ksys_dup3(unsigned int oldfd, unsigned int newfd, int flags)
 {
 	int err = -EBADF;
diff --git a/include/linux/file.h b/include/linux/file.h
index 2de2e4613d7b..51e830b4fe3a 100644
--- a/include/linux/file.h
+++ b/include/linux/file.h
@@ -94,6 +94,9 @@ extern void fd_install(unsigned int fd, struct file *file);
 
 extern int __receive_fd(struct file *file, int __user *ufd,
 			unsigned int o_flags);
+
+extern int receive_fd(struct file *file, unsigned int o_flags);
+
 static inline int receive_fd_user(struct file *file, int __user *ufd,
 				  unsigned int o_flags)
 {
@@ -101,10 +104,6 @@ static inline int receive_fd_user(struct file *file, int __user *ufd,
 		return -EFAULT;
 	return __receive_fd(file, ufd, o_flags);
 }
-static inline int receive_fd(struct file *file, unsigned int o_flags)
-{
-	return __receive_fd(file, NULL, o_flags);
-}
 int receive_fd_replace(int new_fd, struct file *file, unsigned int o_flags);
 
 extern void flush_delayed_fput(void);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
