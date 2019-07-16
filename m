Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBA46ACDA
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 18:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CE1087E6D;
	Tue, 16 Jul 2019 16:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cG9M1Klphofj; Tue, 16 Jul 2019 16:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C618B87C11;
	Tue, 16 Jul 2019 16:35:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D6661BF853
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 16:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 580432154F
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 16:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bub4tYjMaN2T for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 16:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id BA3522011B
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 16:35:48 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id 201so15074272qkm.9
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nh9TRJL/K8T4zPdIntfX6BH8MCZBmQixSPnd0YhJt1g=;
 b=en1RnZXj8YDhDGqW04SYySgMEhAR441ByIwhjWRBVk58SRk4l2PeCyo8KuxCAv3/3m
 49eLLvNfdWSK44qeEvtXOKEdI6m4DOGN4tYBTEjxvWMoBbHH6Bp/7GSIC59k0sIHFDR+
 bpESgX5UsOHObZyE4PZScnNVapdZsXynMgKrLxuS8/YzcxHdEaOl0Vxi8u2shP8/m+Gm
 XYtn58uma7w29iEbOCd3NRtKfzY4SZvCbY72qMhQ0nixNY5kkh3WXtN9mRQvL7A0ctYh
 wYCrLm+/cIJ9UBbj6CzFuwu3N+fPSZzk9XQ6uvYpCYDmlS33CdF+ZJ1us1DzpizXyW3w
 epVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nh9TRJL/K8T4zPdIntfX6BH8MCZBmQixSPnd0YhJt1g=;
 b=AWdf4yUpD4lca8gMyx1pYsegGnC51dOXk7aqGMTzWVENSQXNHyhEEpEUV6MC69/dnZ
 IM4TP7T2ObYhZwt/grw0Kh1Ktyuxr9f88FVwVZoRPkoOjrzx6ePk3tlVlphH8c3AR6Jr
 109Zy5s63B+eUAFgFSeEeDyhuLWnn3VypHVmwSCJcpEeKQdB9GEgLHwnktxQ4uRsr3DM
 YdmzSBHPAMnroONLV93kDOX20i6f6xLERrGeKS+nEdABVr+zRa5m52YEn/H/liN+KCUe
 6vG7YTplEK04j0aT7mEr+Tyux7Z39fCisXr9hvd0EDNZp4XluJTQ5yayZAWIMsynzABS
 yoaQ==
X-Gm-Message-State: APjAAAWrYvtaHPGSZJxAHBAvqAMvl9nvrTMdQmyHlCe0faSrMqYx7i5x
 SY2U40UqCJVH6DMMN+r9z04=
X-Google-Smtp-Source: APXvYqz9d2L3jP1bkM+IMvY9gjJWbxYcsrj9l/fTSt6M0ABvgfEbbTTlUp29IzLGu0TSMW+DvPG92g==
X-Received: by 2002:ae9:e845:: with SMTP id a66mr21943097qkg.451.1563294947824; 
 Tue, 16 Jul 2019 09:35:47 -0700 (PDT)
Received: from maquinola.fibertel.com.ar ([181.31.154.224])
 by smtp.gmail.com with ESMTPSA id m12sm8869708qkk.123.2019.07.16.09.35.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 09:35:47 -0700 (PDT)
From: Karen Palacio <karen.palacio.1994@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yucha0@huawei.com
Subject: [PATCH] staging: erofs: a few minor style fixes found using checkpatch
Date: Tue, 16 Jul 2019 13:35:42 -0300
Message-Id: <1563294942-31395-1-git-send-email-karen.palacio.1994@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Karen Palacio <karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix camel case use in variable names,
Fix multiple assignments done in a single line,
Fix end of line containing '('.

Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>
---
 drivers/staging/erofs/super.c | 55 ++++++++++++++++++++++---------------------
 1 file changed, 28 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 5449441..e281125 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -228,21 +228,21 @@ static void default_options(struct erofs_sb_info *sbi)
 }
 
 enum {
-	Opt_user_xattr,
-	Opt_nouser_xattr,
-	Opt_acl,
-	Opt_noacl,
-	Opt_fault_injection,
-	Opt_err
+	opt_user_xattr,
+	opt_nouser_xattr,
+	opt_acl,
+	opt_noacl,
+	opt_fault_injection,
+	opt_err
 };
 
 static match_table_t erofs_tokens = {
-	{Opt_user_xattr, "user_xattr"},
-	{Opt_nouser_xattr, "nouser_xattr"},
-	{Opt_acl, "acl"},
-	{Opt_noacl, "noacl"},
-	{Opt_fault_injection, "fault_injection=%u"},
-	{Opt_err, NULL}
+	{opt_user_xattr, "user_xattr"},
+	{opt_nouser_xattr, "nouser_xattr"},
+	{opt_acl, "acl"},
+	{opt_noacl, "noacl"},
+	{opt_fault_injection, "fault_injection=%u"},
+	{opt_err, NULL}
 };
 
 static int parse_options(struct super_block *sb, char *options)
@@ -260,41 +260,42 @@ static int parse_options(struct super_block *sb, char *options)
 		if (!*p)
 			continue;
 
-		args[0].to = args[0].from = NULL;
+		args[0].to = NULL;
+		args[0].from = NULL;
 		token = match_token(p, erofs_tokens, args);
 
 		switch (token) {
 #ifdef CONFIG_EROFS_FS_XATTR
-		case Opt_user_xattr:
+		case opt_user_xattr:
 			set_opt(EROFS_SB(sb), XATTR_USER);
 			break;
-		case Opt_nouser_xattr:
+		case opt_nouser_xattr:
 			clear_opt(EROFS_SB(sb), XATTR_USER);
 			break;
 #else
-		case Opt_user_xattr:
+		case opt_user_xattr:
 			infoln("user_xattr options not supported");
 			break;
-		case Opt_nouser_xattr:
+		case opt_nouser_xattr:
 			infoln("nouser_xattr options not supported");
 			break;
 #endif
 #ifdef CONFIG_EROFS_FS_POSIX_ACL
-		case Opt_acl:
+		case opt_acl:
 			set_opt(EROFS_SB(sb), POSIX_ACL);
 			break;
-		case Opt_noacl:
+		case opt_noacl:
 			clear_opt(EROFS_SB(sb), POSIX_ACL);
 			break;
 #else
-		case Opt_acl:
+		case opt_acl:
 			infoln("acl options not supported");
 			break;
-		case Opt_noacl:
+		case opt_noacl:
 			infoln("noacl options not supported");
 			break;
 #endif
-		case Opt_fault_injection:
+		case opt_fault_injection:
 			err = erofs_build_fault_attr(EROFS_SB(sb), args);
 			if (err)
 				return err;
@@ -525,7 +526,6 @@ static void erofs_put_super(struct super_block *sb)
 	sb->s_fs_info = NULL;
 }
 
-
 struct erofs_mount_private {
 	const char *dev_name;
 	char *options;
@@ -541,9 +541,9 @@ static int erofs_fill_super(struct super_block *sb,
 		priv->options, silent);
 }
 
-static struct dentry *erofs_mount(
-	struct file_system_type *fs_type, int flags,
-	const char *dev_name, void *data)
+static struct dentry *erofs_mount(struct file_system_type *fs_type,
+				  int flags,
+				  const char *dev_name, void *data)
 {
 	struct erofs_mount_private priv = {
 		.dev_name = dev_name,
@@ -623,7 +623,8 @@ static int erofs_statfs(struct dentry *dentry, struct kstatfs *buf)
 	buf->f_type = sb->s_magic;
 	buf->f_bsize = EROFS_BLKSIZ;
 	buf->f_blocks = sbi->blocks;
-	buf->f_bfree = buf->f_bavail = 0;
+	buf->f_bfree = 0;
+	buf->f_bavail = 0;
 
 	buf->f_files = ULLONG_MAX;
 	buf->f_ffree = ULLONG_MAX - sbi->inos;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
